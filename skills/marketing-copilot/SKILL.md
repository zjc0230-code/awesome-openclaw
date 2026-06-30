## 核心能力

- **多平台文案生成**：微信朋友圈、小红书、TikTok、Instagram、电商平台等
- **风格迁移**：不同语气风格（亲切活泼、专业严肃、软广硬广）
- **内容优化**：提升点击率、转化率、互动率
- **结构化字段注入**：自动添加标题、标签、Hashtag、封面建议等

## 使用场景

- 社交媒体内容创作（朋友圈、小红书、抖音、TikTok、Instagram）
- 产品推广文案生成与优化
- 广告投放 A/B 测试
- 风格化内容转换（亲切活泼 ↔ 专业严肃）
- 跨平台内容适配与发布

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
  "tone": "亲切活泼"
}
```

## 命令行使用

```bash
# 生成文案
python3 generate.py generate --platform xiaohongshu --topic 无线耳机 --tone 亲切活泼

# 优化文案
python3 generate.py optimize --platform wechat --content "我的耳机很好听" --goal 提升点击率

# 风格迁移
python3 generate.py style-transfer --source "限时特价" --target-style 软广
```

## 依赖

- Python 3.6+
- `argparse-commands>=0.2.0`：命令行参数解析
- `rich>=13.0.0`：终端美化输出
- `python-dotenv>=1.0.0`：环境变量管理

## 完整使用示例

### 示例 1：小红书种草文案生成
```bash
python3 generate.py generate \
  --platform xiaohongshu \
  --topic 无线降噪耳机 \
  --tone 亲切活泼 \
  --max_length 500
```
输出示例：
```
✨ 无线降噪耳机，沉浸式音质体验！🎧

最近挖到一款宝藏耳机，降噪效果超赞，地铁上再也不怕吵了～
音质清晰，低音饱满，听歌、追剧都超带感！
推荐给追求品质生活的姐妹们！✨

#耳机推荐 #好物分享 #降噪耳机 #无线耳机
```

### 示例 2：朋友圈软广文案优化
```bash
python3 generate.py optimize \
  --platform wechat \
  --content "我的耳机很好听" \
  --goal 提升点击率
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
- 不同平台规则需自定义适配
- 生成内容仅供参考，需人工审核
