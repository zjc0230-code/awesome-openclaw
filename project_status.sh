#!/bin/bash
# Awesome OpenClaw 项目状态查看脚本

echo "=========================================="
echo "  Awesome OpenClaw 项目状态"
echo "=========================================="
echo ""

echo "📁 项目路径: /data/workspace/awesome-openclaw"
echo ""

echo "📊 文件统计:"
echo "  - 总文件数: $(find . -type f | wc -l)"
echo "  - Markdown 文件: $(find . -name "*.md" | wc -l)"
echo "  - Python 脚本: $(find . -name "*.py" | wc -l)"
echo ""

echo "📝 内容统计:"
echo "  - 总代码行数: $(find . -name "*.md" -o -name "*.py" -o -name "*.yml" | xargs wc -l 2>/dev/null | tail -1 | awk '{print $1}')"
echo "  - README 行数: $(wc -l README.md 2>/dev/null | awk '{print $1}')"
echo ""

echo "🗂️  分类目录:"
for dir in skills/*/; do
    if [ -d "$dir" ]; then
        count=$(find "$dir" -name "*.md" ! -name "README.md" | wc -l)
        dirname=$(basename "$dir")
        echo "  - $dirname: $count Skills"
    fi
done
echo ""

echo "🔄 Git 状态:"
git status --short
echo ""

echo "📅 最后提交:"
git log -1 --pretty=format:"  提交: %h%n  作者: %an%n  日期: %ad%n  说明: %s" --date=format:"%Y-%m-%d %H:%M"
echo ""
echo ""

echo "=========================================="
echo "  项目已就绪，等待推送到 GitHub! 🚀"
echo "=========================================="
