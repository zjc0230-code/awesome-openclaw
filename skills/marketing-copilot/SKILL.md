---
name: marketing-copilot
description: 营销文案助手 - 多平台文案生成、优化、风格迁移
version: 1.1.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Marketing, Copywriting, Social Media, Content Generation]
    related_skills: [creative, social-media]
---

# Marketing Copilot

**营销文案智能助手** - 支持多平台文案生成、优化、风格迁移，提升内容转化率。

## 核心能力

- **多平台文案生成**：微信朋友圈、小红书、TikTok、Instagram、电商平台等
- **风格迁移**：不同语气风格（亲切活泼、专业严肃、软广硬广）
- **内容优化**：提升点击率、转化率、互动率
- **结构化字段注入**：自动添加标题、标签、Hashtag、封面建议等
- **A/B 测试支持**：生成多个版本供对比测试

## 使用场景

- 社交媒体内容创作（朋友圈、小红书、抖音、TikTok、Instagram）
- 产品推广文案生成与优化
- 广告投放 A/B 测试
- 风格化内容转换（亲切活泼 ↔ 专业严肃）
- 跨平台内容适配与发布
- 营销活动文案批量生成

## 安装

```bash
cd marketing-copilot
pip install -r requirements.txt
```

## 配置

创建 `config.json`（最小配置示例）：

```json
{
  "platform": "wechat",
  "tone": "亲切活泼",
  "max_length": 500,
  "include_hashtags": true,
  "include_call_to_action": true
}
```

配置说明：

- `platform`: 目标平台（wechat, xiaohongshu, tiktok, instagram, taobao）
- `tone`: 语气风格（亲切活泼、专业严肃、软广、硬广）
- `max_length`: 最大字符数
- `include_hashtags`: 是否添加 Hashtag
- `include_call_to_action`: 是否添加行动号召

## 命令行使用

### 生成文案

```bash
# 小红书种草文案
python3 generate.py generate --platform xiaohongshu --topic 无线降噪耳机 --tone 亲切活泼

# 朋友圈软广文案
python3 generate.py generate --platform wechat --topic 无线降噪耳机 --tone 软广

# TikTok 营销文案
python3 generate.py generate --platform tiktok --topic 无线降噪耳机 --tone 硬广
```

### 优化文案

```bash
# 提升点击率
python3 generate.py optimize --platform wechat --content "我的耳机很好听" --goal 提升点击率

# 提升转化率
python3 generate.py optimize --platform taobao --content "耳机音质不错" --goal 提升转化率
```

### 风格迁移

```bash
# 亲切活泼 → 专业严肃
python3 generate.py style-transfer --source "这款耳机音质超棒，推荐给大家" --target-style 专业严肃

# 软广 → 硬广
python3 generate.py style-transfer --source "限量发售，手慢无" --target-style 硬广
```

### A/B 测试

```bash
# 生成 3 个版本
python3 generate.py ab-test --platform wechat --topic 无线降噪耳机 --count 3

# 输出示例：
# [1] 戴上它，沉浸式音质体验！🎧
# [2] 🔥无线降噪耳机，音质炸裂！
# [3] ✨宝藏耳机推荐，降噪效果超赞！
```

## 依赖

- Python 3.6+
- `argparse-commands>=0.2.0`：命令行参数解析
- `rich>=13.0.0`：终端美化输出
- `python-dotenv>=1.0.0`：环境变量管理
- 大模型 API（Claude/GPT-4）：文案生成核心

## 完整使用示例

### 示例 1：小红书种草文案生成

```bash
python3 generate.py generate \
  --platform xiaohongshu \
  --topic 无线降噪耳机 \
  --tone 亲切活泼 \
  --max_length 500 \
  --include_hashtags true
```

输出示例：

```
✨ 无线降噪耳机，沉浸式音质体验！🎧

最近挖到一款宝藏耳机，降噪效果超赞，地铁上再也不怕吵了～
音质清晰，低音饱满，听歌、追剧都超带感！
推荐给追求品质生活的姐妹们！✨

#耳机推荐 #好物分享 #降噪耳机 #无线耳机 #音质神器
```

### 示例 2：朋友圈软广文案优化

```bash
python3 generate.py optimize \
  --platform wechat \
  --content "我的耳机很好听" \
  --goal 提升点击率 \
  --include_call_to_action true
```

输出示例：

```
🎧【沉浸式音质】无线降噪耳机，戴上即入戏！

通勤路上再也不怕噪音打扰，降噪效果惊艳！
音质纯净，低音饱满，听歌、追剧都超带感。
限时特惠，手慢无！👇

[查看详情] [购买链接]
```

### 示例 3：TikTok 营销文案风格迁移

```bash
python3 generate.py style-transfer \
  --source "这款耳机音质超棒，推荐给大家" \
  --target-style 硬广 \
  --platform tiktok
```

输出示例：

```
🔥【爆品推荐】无线降噪耳机，音质炸裂！

戴上它，世界瞬间安静！降噪黑科技，地铁、办公室随便用。
低音强劲，高音清晰，听歌像在现场！
现在下单立减 50 元，库存告急，速抢！
```

## 注意事项

- 需集成大模型 API（如 Claude、GPT-4）生成文案
- 不同平台规则需自定义适配（Hashtag、表情符号、平台规范）
- 生成内容仅供参考，需人工审核
- 建议结合实际数据持续优化模板和参数

## 工作流程

1. **分析需求**：明确目标平台、目标受众、核心卖点
2. **选择模板**：根据平台和语气选择合适模板
3. **生成内容**：调用大模型 API 生成文案
4. **人工审核**：检查准确性、合规性、吸引力
5. **A/B 测试**：生成多个版本进行对比测试
6. **数据反馈**：根据点击率、转化率等数据优化

## 快速开始

```bash
# 1. 安装依赖
pip install -r requirements.txt

# 2. 配置大模型 API
export OPENAI_API_KEY=your_api_key
# 或使用 Claude
export ANTHROPIC_API_KEY=your_api_key

# 3. 生成第一个文案
python3 generate.py generate --platform wechat --topic 无线降噪耳机 --tone 亲切活泼
```

## API 集成

可在 Hermes 中直接调用：

```python
from marketing_copilot import generate_copy, optimize_copy, style_transfer

# 生成文案
copy = generate_copy(
    platform="wechat",
    topic="无线降噪耳机",
    tone="亲切活泼"
)

# 优化文案
optimized = optimize_copy(
    content="我的耳机很好听",
    goal="提升点击率"
)

# 风格迁移
new_style = style_transfer(
    source="这款耳机音质超棒",
    target_style="硬广"
)
```
