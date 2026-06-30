## 核心能力

- **多平台文案生成**：微信朋友圈、小红书、TikTok、Instagram、电商平台等
- **风格迁移**：不同语气风格（亲切活泼、专业严肃、软广硬广）
- **内容优化**：提升点击率、转化率、互动率
- **结构化字段注入**：自动添加标题、标签、Hashtag、封面建议等

## 使用场景

- 社交媒体内容创作
- 产品推广文案生成
- 广告投放优化
- 风格化内容转换
- 跨平台内容适配

## 安装

```bash
cd marketing-copilot
pip install -r requirements.txt
```

## 配置

创建 `config.json`（参考示例）：

```json
{
  "wechat": {
    "platform": "wechat",
    "max_length": 200,
    "tone": "亲切活泼"
  },
  "xiaohongshu": {
    "platform": "xiaohongshu",
    "max_length": 500,
    "tags": ["推荐", "好物"]
  }
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

## 注意事项

- 需集成大模型 API（如 Claude、GPT-4）生成文案
- 不同平台规则需自定义适配
- 生成内容仅供参考，需人工审核
