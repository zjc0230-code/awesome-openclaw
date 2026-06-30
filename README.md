## awesome-skills

AI 技能精选库 — 收录 Hermes/Cursor 高价值 Skills，工具类、营销类优先，持续迭代优化。

### 优化统计
- **优化次数**: 77
- **最近更新**: 2026-06-30 20:55
- **累计 Token**: ~207.3K (77 次优化)


### Contributing
- 内容真实，禁止密钥入库
- 必须使用 commit + push 格式

### Author
zjc0230 / zjc0230@gmail.com

---

## 📦 Skills

### web-search
Web search integration for Hermes agents using built-in search tools and web scraping.

**Use cases**: Research, content verification, data collection, real-time information retrieval
**Installation**: Native to Hermes (no installation needed)
**Difficulty**: easy
**Token cost**: ~0.5K tokens (README log)
**Last updated**: 2026-06-30 10:00

### git-authentication
GitHub authentication setup for Hermes agents using HTTPS tokens or SSH keys. Covers credential helper configuration, personal access token generation, and SSH key setup.

**Use cases**: Repository access, CI/CD authentication, API token management
**Installation**: Native to Hermes (no installation needed)
**Difficulty**: easy
**Token cost**: ~1.0K tokens (README log)
**Last updated**: 2026-06-30 10:30

### marketing-copilot
多平台营销文案生成与优化工具，支持微信、小红书、TikTok、Instagram、电商平台等。

**Use cases**: 社交媒体文案创作、产品推广、广告投放 A/B 测试、风格迁移
**Installation**: Python 3.6+ (argparse-commands, rich, python-dotenv)
**Difficulty**: easy
**Token cost**: ~1.5K tokens (README log)
**Last updated**: 2026-06-30 17:45

**快速开始**:
```bash
cd marketing-copilot
pip install -r requirements.txt
python3 generate.py generate --platform xiaohongshu --topic 无线耳机 --tone 亲切活泼
```



### stock-tencent-analyst
腾讯控股股票综合分析智能体 - 多维度专业投研团队，包括基本面、技术面、宏观面、行业面、舆情面分析师，提供完整知识库和实时数据支持。

**Use cases**: 腾讯股票投资决策、投研报告生成、股价预测
**Installation**: Native to Hermes (no installation needed)
**Difficulty**: medium
**Token cost**: ~1.5K tokens (README log)
**Last updated**: 2026-06-30 15:30

**核心功能**:
- 多平台文案生成（朋友圈、小红书、抖音、TikTok）
- 风格迁移（亲切活泼 ↔ 专业严肃 ↔ 硬广）
- 内容优化（提升点击率、转化率、互动率）
- 结构化字段注入（标题、标签、Hashtag、封面建议）

**Recent improvements**:
- Added 3 complete usage examples (Xiaohongshu, WeChat, TikTok)
- Improved documentation with real-world output examples

### ai-coding-delegation
Comprehensive AI coding delegation workflow using Claude Code, OpenAI Codex, or other LLM-based coding agents. Supports two-stage review: subagent execution + human review, with automatic fallback and parallel task execution.

**Use cases**: Code refactoring, test generation, documentation updates, parallel task execution, agent-based code review
**Installation**: Native to Hermes (no installation needed)
**Difficulty**: medium
**Token cost**: ~3.5K tokens (README log)
**Last updated**: 2026-06-30 18:00

**Quick start**:
```python
from hermes_tools import delegate_task

# Basic delegation
result = delegate_task({
    "goal": "Refactor authentication module",
    "context": "Current auth uses sessions; need JWT migration",
    "toolsets": ["terminal", "file"]
})

# Parallel tasks
tasks = [
    {"goal": "Add unit tests", "context": "Missing coverage", "toolsets": ["terminal", "file"]},
    {"goal": "Update docs", "context": "Outdated endpoints", "toolsets": ["terminal", "file"]}
]
results = delegate_task({"tasks": tasks, "mode": "parallel"})
```

**Core features**:
- Two-stage review: subagent writes code → human reviews
- Parallel execution for independent tasks
- Fallback handling with different agents
- Context management and tool usage tracking

**Recent improvements**:
- Added parallel task execution mode
- Improved error handling and retry logic
- Enhanced documentation with code examples
