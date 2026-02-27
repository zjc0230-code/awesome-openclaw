#!/usr/bin/env python3
"""
Awesome OpenClaw Skills 统计更新脚本
自动统计各分类的 Skills 数量并更新 README
"""

import os
import re
from datetime import datetime
from pathlib import Path

# 项目根目录
ROOT_DIR = Path(__file__).parent.parent.parent
SKILLS_DIR = ROOT_DIR / "skills"
README_FILE = ROOT_DIR / "README.md"

# 分类映射
CATEGORIES = {
    "productivity": "🎯 生产力工具",
    "development": "💻 开发者工具",
    "ai-enhancement": "🧠 AI 增强",
    "information": "🔍 信息检索",
    "business": "💼 商业营销",
    "security": "🔐 安全隐私",
    "creative": "🎨 创意媒体",
    "automation": "🏠 智能自动化",
}


def count_skills():
    """统计每个分类的 Skills 数量"""
    stats = {}
    total = 0
    
    for category_key, category_name in CATEGORIES.items():
        category_dir = SKILLS_DIR / category_key
        if category_dir.exists():
            # 统计 .md 文件数量 (排除 README.md)
            md_files = [
                f for f in category_dir.glob("*.md")
                if f.name.lower() != "readme.md"
            ]
            count = len(md_files)
            stats[category_name] = count
            total += count
        else:
            stats[category_name] = 0
    
    return stats, total


def update_readme_stats(stats, total):
    """更新 README 中的统计信息"""
    if not README_FILE.exists():
        print("❌ README.md 不存在")
        return False
    
    with open(README_FILE, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 更新日期
    today = datetime.now().strftime("%Y-%m-%d")
    
    # 构建统计表格
    table_lines = []
    table_lines.append("| 类别 | Skills 数量 | 更新时间 |")
    table_lines.append("|------|-------------|----------|")
    
    for category_name, count in stats.items():
        if count > 0:
            table_lines.append(f"| {category_name} | {count}+ | {today} |")
        else:
            table_lines.append(f"| {category_name} | 待添加 | {today} |")
    
    table_lines.append(f"| **总计** | **{total}+** | {today} |")
    
    stats_table = "\n".join(table_lines)
    
    # 替换统计表格
    pattern = r'\| 类别 \| Skills 数量 \| 更新时间 \|.*?\| \*\*总计\*\* \| \*\*.*?\*\* \| .*? \|'
    replacement = stats_table
    
    new_content = re.sub(
        pattern, 
        replacement, 
        content, 
        flags=re.DOTALL
    )
    
    # 更新 last updated badge
    new_content = re.sub(
        r'\[!\[Last Updated\]\(https://img\.shields\.io/badge/last%20updated-.*?-blue\.svg\)\]',
        f'[![Last Updated](https://img.shields.io/badge/last%20updated-{today}-blue.svg)]',
        new_content
    )
    
    # 写回文件
    with open(README_FILE, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    return True


def generate_category_readme():
    """为每个分类生成 README.md"""
    for category_key, category_name in CATEGORIES.items():
        category_dir = SKILLS_DIR / category_key
        category_readme = category_dir / "README.md"
        
        if not category_dir.exists():
            continue
        
        # 获取该分类的所有 skills
        skills = [
            f for f in category_dir.glob("*.md")
            if f.name.lower() != "readme.md"
        ]
        
        # 生成 README 内容
        content = f"# {category_name}\n\n"
        content += f"> 共 {len(skills)} 个 Skills\n\n"
        content += "---\n\n"
        content += "## 📚 Skills 列表\n\n"
        
        for skill_file in sorted(skills):
            skill_name = skill_file.stem
            content += f"- [{skill_name}](./{skill_file.name})\n"
        
        content += "\n---\n\n"
        content += "[← 返回主页](../../README.md)\n"
        
        # 写入文件
        with open(category_readme, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print(f"✅ 已更新: {category_readme}")


def main():
    """主函数"""
    print("🚀 开始更新统计信息...\n")
    
    # 1. 统计 Skills 数量
    print("📊 统计 Skills 数量...")
    stats, total = count_skills()
    
    print("\n统计结果:")
    for category, count in stats.items():
        print(f"  {category}: {count}")
    print(f"  总计: {total}\n")
    
    # 2. 更新 README
    print("📝 更新 README.md...")
    if update_readme_stats(stats, total):
        print("✅ README.md 更新成功\n")
    else:
        print("❌ README.md 更新失败\n")
    
    # 3. 生成分类 README
    print("📁 生成分类 README...")
    generate_category_readme()
    
    print("\n🎉 所有任务完成！")


if __name__ == "__main__":
    main()
