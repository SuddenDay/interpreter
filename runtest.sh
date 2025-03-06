#!/usr/bin/env bash
set -euo pipefail

echo "开始构建项目..."

# 清理并构建项目
rm -rf build
mkdir build
cd build
cmake .. && make -j4
cd ..

echo "构建完成！"

# 创建或清空结果目录
res_dir="res"
rm -rf "$res_dir"
mkdir -p "$res_dir"

# 开启 nullglob，确保没有匹配时不会保留通配符
shopt -s nullglob
test_files=(test/*.lox)

if [ ${#test_files[@]} -eq 0 ]; then
    echo "没有找到任何测试文件！"
else
    for test_file in "${test_files[@]}"
    do
        # 提取测试文件的基本名称（不含路径和扩展名）
        base_name=$(basename "$test_file" .lox)
        result_file="${res_dir}/${base_name}.res"
        
        echo "正在运行测试文件: $test_file"
        # 执行测试并将输出（标准输出和标准错误）重定向到结果文件
        if build/lox "$test_file" > "$result_file"; then
            echo "测试通过: $test_file"
        else
            echo "测试失败: $test_file"
        fi
        echo "测试结果已保存到: $result_file"
        echo "---------------------------------"
    done
fi