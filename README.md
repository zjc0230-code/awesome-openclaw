## awesome-skills

AI 技能精选库 — 收录 Hermes/Cursor 高价值 Skills，工具类、营销类优先，持续迭代优化。

### 优化统计
- **优化次数**: 80
- **最近更新**: 2026-06-30 23:00
- **累计 Token**: ~212.0K (80 次优化)


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

### ascii-art
ASCII art generator: pyfiglet, cowsay, boxes, image-to-ascii conversion.

**Use cases**: Terminal headers, status badges, ASCII logos, image-to-text art
**Installation**: `pip install pyfiglet cowsay boxes image-to-ascii`
**Difficulty**: easy
**Token cost**: ~2.5K tokens (README log)
**Last updated**: 2026-06-30 22:15
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
