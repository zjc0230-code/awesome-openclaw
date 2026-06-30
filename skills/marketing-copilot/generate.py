#!/usr/bin/env python3
"""
Marketing Copilot - 多平台营销文案生成与优化工具

支持多平台文案生成、优化、风格迁移。
"""

import argparse
import json
from typing import Dict, List


def generate_copy(platform: str, topic: str, tone: str, max_length: int = 500) -> str:
    """
    生成营销文案
    
    Args:
        platform: 平台名称 (wechat, xiaohongshu, tiktok, instagram, etc.)
        topic: 文案主题
        tone: 语气风格 (亲切活泼, 专业严肃, 软广, 硬广)
        max_length: 最大长度
        
    Returns:
        生成的文案
    """
    # 平台特定的开场白
    openers = {
        "wechat": "✨",
        "xiaohongshu": "✨",
        "tiktok": "🔥",
        "instagram": "✨"
    }
    
    # 语气风格模板
    templates = {
        "亲切活泼": [
            f"最近挖到一款{topic}，超赞！
音质清晰，听歌、追剧都超带感！",
            f"挖到宝藏了！{topic}，戴上即入戏！
通勤路上再也不怕吵了～"
        ],
        "专业严肃": [
            f"【专业评测】{topic}，沉浸式体验",
            f"深度解析：{topic}的性能与表现"
        ],
        "软广": [
            f"🎧【{topic}】戴上即入戏！
音质纯净，低音饱满，听歌、追剧都超带感。",
            f"✨{topic}，推荐给追求品质生活的你！"
        ],
        "硬广": [
            f"🔥【{topic}】音质炸裂！
戴上它，世界瞬间安静！
现在下单立减 50 元，库存告急，速抢！"
        ]
    }
    
    # 获取模板
    template_list = templates.get(tone, templates["亲切活泼"])
    template = random.choice(template_list)
    
    # 构建完整文案
    opener = openers.get(platform, "✨")
    content = f"{opener}{template}

#推荐 #好物分享 #{topic.replace(' ', '')}"
    
    # 截断到指定长度
    if len(content) > max_length:
        content = content[:max_length] + "..."
    
    return content


def optimize_copy(platform: str, content: str, goal: str) -> str:
    """
    优化营销文案
    
    Args:
        platform: 平台名称
        content: 原始文案
        goal: 优化目标 (提升点击率, 提升转化率, 提升互动率)
        
    Returns:
        优化后的文案
    """
    # 简单的优化逻辑
    improvements = {
        "提升点击率": [
            "添加标题和吸引人的开头",
            "使用emoji和符号增强视觉吸引力",
            "添加行动召唤 (CTA)"
        ],
        "提升转化率": [
            "添加限时优惠信息",
            "增强紧迫感",
            "添加购买链接"
        ],
        "提升互动率": [
            "添加互动引导",
            "使用提问式结尾",
            "添加相关话题标签"
        ]
    }
    
    # 添加标题
    title = f"🎧【沉浸式体验】{content[:30]}..."
    
    # 添加CTA
    cta = "

[查看详情] [购买链接]"
    
    return title + "
" + content + cta


def style_transfer(source: str, target_style: str, platform: str) -> str:
    """
    风格迁移
    
    Args:
        source: 原始文案
        target_style: 目标风格
        platform: 平台名称
        
    Returns:
        转换后的文案
    """
    templates = {
        "软广": "✨挖到宝藏了！",
        "硬广": "🔥爆品推荐！",
        "专业严肃": "【专业评测】",
        "亲切活泼": "✨最近挖到一款"
    }
    
    opener = templates.get(target_style, templates["亲切活泼"])
    return opener + source


def main():
    parser = argparse.ArgumentParser(description="营销文案生成与优化工具")
    subparsers = parser.add_subparsers(dest="command", help="命令")
    
    # generate 命令
    gen_parser = subparsers.add_parser("generate", help="生成文案")
    gen_parser.add_argument("--platform", required=True, choices=["wechat", "xiaohongshu", "tiktok", "instagram", "taobao"])
    gen_parser.add_argument("--topic", required=True)
    gen_parser.add_argument("--tone", default="亲切活泼", choices=["亲切活泼", "专业严肃", "软广", "硬广"])
    gen_parser.add_argument("--max_length", type=int, default=500)
    
    # optimize 命令
    opt_parser = subparsers.add_parser("optimize", help="优化文案")
    opt_parser.add_argument("--platform", required=True)
    opt_parser.add_argument("--content", required=True)
    opt_parser.add_argument("--goal", required=True, choices=["提升点击率", "提升转化率", "提升互动率"])
    
    # style-transfer 命令
    style_parser = subparsers.add_parser("style-transfer", help="风格迁移")
    style_parser.add_argument("--source", required=True)
    style_parser.add_argument("--target-style", required=True, choices=["软广", "硬广", "专业严肃", "亲切活泼"])
    style_parser.add_argument("--platform", default="wechat")
    
    args = parser.parse_args()
    
    if args.command == "generate":
        result = generate_copy(args.platform, args.topic, args.tone, args.max_length)
        print(result)
    elif args.command == "optimize":
        result = optimize_copy(args.platform, args.content, args.goal)
        print(result)
    elif args.command == "style-transfer":
        result = style_transfer(args.source, args.target_style, args.platform)
        print(result)
    else:
        parser.print_help()


if __name__ == "__main__":
    import random
    main()
