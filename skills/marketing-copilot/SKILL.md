---
name: marketing-copilot
description: "AI营销文案生成与优化助手 - 支持多平台文案（公众号、小红书、短视频脚本、朋友圈），提供标题、正文、标签、语气风格建议，适配品牌调性与受众画像。"
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Marketing, Copywriting, Social Media, Content, Chinese]
    related_skills: [creative, social-media, summarize]
---

# 营销文案助手

## 功能说明

本 Skill 用于快速生成、优化、适配多平台的营销文案，适用于公众号、小红书、短视频脚本、朋友圈、电商详情页等场景。

### 核心能力

- **多平台适配**：支持公众号、小红书、短视频、朋友圈、电商等场景
- **风格定制**：可指定语气（专业/亲切/活泼/硬广/软广）、长度、情感倾向
- **结构化生成**：标题 + 正文 + 标签 + 语气风格 + 适用场景
- **文案优化**：润色、扩写、精简、改写，适配不同平台调性

### 使用场景

- 运营活动文案（促销、新品、节日）
- 社交媒体内容（朋友圈、小红书、短视频脚本）
- 品牌故事与软文撰写
- 电商商品描述与卖点提炼
- 文案 A/B 测试素材准备

## 快速开始

### 1. 基础文案生成

```bash
# 生成一篇小红书种草文案
hermes run marketing-copilot generate \
  --platform xiaohongshu \
  --topic "无线降噪耳机" \
  --tone "亲切活泼" \
  --length "中等"
```

### 2. 文案优化

```bash
# 优化一篇公众号文章标题
hermes run marketing-copilot optimize \
  --platform wechat \
  --content "我的耳机很好听，大家快去买" \
  --goal "提升点击率"
```

### 3. 风格迁移

```bash
# 将硬广风格改为软广风格
hermes run marketing-copilot style-transfer \
  --source "限时特价，买一送一！" \
  --target-style "软广" \
  --platform "小红书"
```

## 参数说明

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `--platform` | string | 是 | 平台：wechat/xiaohongshu/tiktok/instagram/friendcircle/ecommerce |
| `--topic` | string | 否 | 产品/话题，用于生成时提供背景 |
| `--tone` | string | 否 | 语气：专业/亲切/活泼/硬广/软广 |
| `--length` | string | 否 | 长度：短/中/长 |
| `--goal` | string | 否 | 优化目标：提升点击率/增强信任感/降低门槛 |
| `--source` | string | 否 | 原文案（用于优化/改写） |

## 输出示例

### 小红书种草文案

```
标题：🎧 戴上它，世界都安静了！降噪耳机实测

正文：
最近入手了这款无线降噪耳机，真的太香了！
通勤路上再也不怕噪音，地铁、飞机都能秒变私人空间。

✨ 体验亮点：
- 降噪效果：环境音几乎消失，沉浸感拉满
- 续航：单次充电用一天没问题
- 佩戴：轻到几乎感觉不到，戴久了也不累

💰 性价比：
同价位里降噪和音质都挺能打的，学生党/上班族闭眼入！

#降噪耳机 #数码好物 #通勤必备 #学生党好物
```

### 公众号标题优化

```
原标题：我的耳机很好听，大家快去买

优化后：
🎧 戴上它，通勤秒变私人空间！降噪耳机实测
```

## 限制与注意事项

- 生成的文案仅供参考，需结合实际产品信息与品牌调性进行二次调整
- 禁止用于虚假宣传或夸大其词的文案
- 敏感信息（价格、活动规则）请人工核实
- 长度限制以各平台规则为准

## 技术实现

本 Skill 通过以下方式实现：
- 使用大模型生成文案
- 根据平台规则注入结构化字段（标题、正文、标签等）
- 支持风格迁移与多轮优化
