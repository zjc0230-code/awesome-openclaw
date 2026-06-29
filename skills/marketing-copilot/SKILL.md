## 技术实现

本 Skill 通过以下方式实现：
- 使用大模型生成文案
- 根据平台规则注入结构化字段（标题、正文、标签等）
- 支持风格迁移与多轮优化
- 命令行参数解析：argparse + argparse-commands
- 多平台配置：JSON 配置文件（wechat/xiaohongshu/tiktok/instagram/friendcircle/ecommerce）
- 输出格式化：Rich 终端美化输出

## 实现脚本

本 Skill 包含一个 Python 实现脚本 `generate.py`，提供命令行接口：

```bash
# 生成文案
python3 generate.py generate --platform xiaohongshu --topic 无线耳机 --tone 亲切活泼

# 优化文案
python3 generate.py optimize --platform wechat --content "我的耳机很好听" --goal 提升点击率

# 风格迁移
python3 generate.py style-transfer --source "限时特价" --target-style 软广
```

**依赖**：Python 3.6+，无额外依赖（实际使用时需集成大模型 API）
