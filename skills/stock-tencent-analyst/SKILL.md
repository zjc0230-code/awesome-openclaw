---
name: stock-tencent-analyst
description: "腾讯控股股票综合分析智能体 - 多维度专业投研团队，包括基本面、技术面、宏观面、行业面、舆情面分析师，提供完整知识库和实时数据支持"
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Tencent, Stock Analysis, Finance, Investment, Research]
    keywords: [腾讯, 股票, 投研, 估值, 技术分析, 宏观分析, 行业分析, 舆情分析]
    examples:
      - "stock-tencent-analyst analyze --symbol 0700.HK"
      - "stock-tencent-analyst report --period weekly"
      - "stock-tencent-analyst predict --horizon next-day"
    usage: "hermes skills install stock-tencent-analyst"
    difficulty: medium
    related_skills: [stock-market-analysis, summarize]
---

# Tencent Stock Analyst

腾讯控股股票综合分析智能体，提供多维度专业投研支持。

## 核心能力

- **基本面分析**：财报解读、估值模型、财务指标跟踪
- **技术面分析**：K线形态、技术指标、支撑阻力位
- **宏观面分析**：政策影响、经济周期、市场环境
- **行业面分析**：互联网行业、游戏、社交、云业务
- **舆情面分析**：新闻监控、投资者情绪、市场传闻

## 使用场景

- 腾讯股票投资决策支持
- 定期投研报告生成
- 股价走势预测与验证
- 投资组合调整建议

## 安装

```bash
hermes skills install stock-tencent-analyst
```

## 配置

无需额外配置，直接调用即可。

## 示例

```bash
# 分析腾讯当前股价
stock-tencent-analyst analyze --symbol 0700.HK

# 生成周度分析报告
stock-tencent-analyst report --period weekly

# 预测次日涨跌
stock-tencent-analyst predict --horizon next-day
```

## 数据来源

- 财务数据：腾讯财报、公开披露
- 技术数据：股票行情数据
- 舆情数据：新闻资讯、社交媒体

## 注意事项

- 投资有风险，本工具仅供参考
- 不构成投资建议，请独立判断
- 实时数据可能有延迟
