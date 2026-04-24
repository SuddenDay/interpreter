#!/usr/bin/env bash
set -euo pipefail

export PATH="/tmp/cmake-3.28.1-linux-x86_64/bin:$PATH"

echo "开始构建项目..."

rm -rf build
mkdir build
cd build
cmake .. && make -j4
cd ..

echo "构建完成！"

res_dir="res"
rm -rf "$res_dir"
mkdir -p "$res_dir"

expected_dir="test/expected"

passed=0
failed=0

shopt -s nullglob
test_files=(test/*.lox)

if [ ${#test_files[@]} -eq 0 ]; then
    echo "没有找到任何测试文件！"
    exit 1
fi

for test_file in "${test_files[@]}"; do
    base_name=$(basename "$test_file" .lox)
    result_file="${res_dir}/${base_name}.res"
    expected_file="${expected_dir}/${base_name}.lox.expected"

    echo -n "Test $base_name ... "

    if ! build/lox "$test_file" > "$result_file" 2>&1; then
        echo "FAILED (runtime error)"
        failed=$((failed + 1))
        continue
    fi

    if [ -f "$expected_file" ]; then
        if diff -q "$result_file" "$expected_file" > /dev/null 2>&1; then
            echo "PASSED"
            passed=$((passed + 1))
        else
            echo "FAILED (output mismatch)"
            echo "--- diff ---"
            diff "$result_file" "$expected_file" || true
            echo "------------"
            failed=$((failed + 1))
        fi
    else
        echo "PASSED (no expected output)"
        passed=$((passed + 1))
    fi
done

echo "================================="
echo "Results: $passed passed, $failed failed, $((passed + failed)) total"
if [ $failed -gt 0 ]; then
    exit 1
fi
