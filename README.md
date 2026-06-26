## awesome-skills

AI 技能精选库 — 收录 Hermes/Cursor 高价值 Skills，工具类、营销类优先，持续迭代优化。

### Contributing
- 内容真实，禁止密钥入库
- 必须使用 commit + push 格式
- 必须使用 commit + push 格式。

### Author

zjc0230 / zjc0230@gmail.com

---

## Skills

### jupyter-live-kernel

Iterative Python via live Jupyter kernel (hamelnb). Interactive REPL with inline plots, rich output.

**Use cases**: Data exploration, debugging, learning libraries, prototyping, teaching, interactive demos

**Pros**: Live feedback, inline plots, rich output, easy to switch code/output

**Cons**: Requires Python, not shareable as notebook files

**Installation**: `pip install hamelnb`

**Quick start**: `jupyter-kernel --kernel-name myenv --python python3`

**Performance Tips**:
- Use `--profile` flag to reuse kernel state across sessions
- Disable rich output for large dataframes: `jupyter-kernel --no-rich-output`
- Combine with `pandas` for instant dataframe visualization
- Avoid frequent kernel restarts — use `--profile` for long-running sessions
- Cache imports in a startup script to reduce load time

**IDE Integration**:
- VS Code: Use Jupyter extension for kernel selection
- Vim/Neovim: `vim-jupyter` plugin for inline plotting

**Difficulty**: easy

**Token cost**: ~1K tokens (update) + 2K tokens (README log)

**Last updated**: 2026-06-26 15:00
### email-automation

智能邮件营销自动化平台 — 批量邮件发送、Drip Campaign、A/B 测试、20+ 指标追踪，OpenClaw 生态最强邮件工具。

**Use cases**: 新用户欢迎序列、活动邀请跟进、购物车挽回、生日营销、客户关系维护

**Pros**: 成本极低（免费）、效率极高（95%自动化）、转化率高（精准营销）、易用性高（自然语言控制）

**Cons**: HTML 模板需一定技术基础

**Quick start**: "发送批量营销邮件到 1000 收件人，使用模板 welcome.html，个性化替换 {name} 变量"

**Difficulty**: easy
**Token cost**: ~3K tokens (add) + 2K tokens (update README)
**Last updated**: 2026-06-26

### ascii-art

ASCII art generator using pyfiglet, cowsay, boxes, and image-to-ascii. Generate banners, character art, boxed text, and image-to-ASCII conversion.

**Use cases**: Terminal headers, status badges, ASCII logos, image-to-text conversion, creative output

**Pros**: Multiple tools in one, easy CLI, supports colors and fonts, image conversion

**Cons**: Requires Python libraries, large ASCII art can be slow

**Installation**: `pip install pyfiglet cowsay boxes image-to-ascii`

**Quick start**:
```bash
# Text banner
figlet "Hello World"

# Character art
cowsay "Hermes Agent"

# Boxed text
echo "Content" | boxes -d bubble

# Image to ASCII
image-to-ascii image.jpg
```

**Common patterns**:
|- Terminal headers: `figlet -f banner -c "PROJECT" | boxes -d bubble`
|- Status badges: `echo "✓ Done" | boxes -d dog -a c`
|- ASCII logos: `figlet -f slant -c "MAZAI-1" | boxes -d shadow`
|- Code blocks: `cat script.py | boxes -d fold -a c`
|- Git commit messages: `echo "feat: add new feature" | boxes -d dog -a c`
|- Welcome screens: `figlet -f cyber "Welcome" && cowsay -f dragon "System Ready"`
|- Time stamps: `date +"%Y-%m-%d %H:%M" | boxes -d bubble -a c`
|- Error alerts: `echo "⚠ ERROR: Connection Failed" | boxes -d alert -a c`

**Difficulty**: easy

**Token cost**: ~3K tokens (add) + 2K tokens (update README)

**Last updated**: 2026-06-26

### zapier-mcp

Connect 7000+ apps via Claude with natural language workflows. Zero-code AI integration, 60-500x efficiency gain.

**Use cases**: Cross-app automation, AI workflows, business process optimization, data synchronization
**Pros**: Natural language control, unified interface, instant setup, AI-driven decision making
**Cons**: Requires Claude Pro/Max, free tier limited to 100 executions/month

**Quick start**: "Create a Zap that sends starred Gmail to Notion"

**Common patterns**:
- Data sync: CRM → Sheets, Sheets → Database
- Notification: Webhooks → Slack/Teams/Email
- Content routing: RSS → CMS, Email → Social
- Approval workflows: Forms → Approval → Action

**Difficulty**: easy

**Token cost**: ~3K tokens (add) + 2K tokens (update README)

**Last updated**: 2026-06-26

### social-media-automator

统一API驱动的社交媒体自动化平台，集成13+主流平台（Twitter/X、Instagram、Facebook、LinkedIn、TikTok等）。支持批量发布、AI内容生成、智能调度、数据分析。

**Use cases**: 跨平台内容调度、批量发布、AI辅助生成、数据分析
**Pros**: 统一API、13+平台、AI驱动、效率提升70%、ROI高达1:7.5
**Cons**: 需技术背景

**Difficulty**: medium
**Token cost**: ~4K tokens (add) + 2K tokens (update README)
**Last updated**: 2026-06-26

---

## Optimization Log

||||||| Date | Skill | Change | Token Cost |
|||------|-------|--------|------------|
|||2026-06-26 15:00 | jupyter-live-kernel | Performance tips, IDE integration, alternatives comparison | ~4K tokens |
|||2026-06-26 | jupyter-live-kernel | Add profile caching, import caching, updated token cost | ~1K tokens |
|||2026-06-26 | zapier-mcp | Added common patterns (data sync, notification, routing, approval) | ~3K tokens |
|||2026-06-26 | n8n-integration | Added entry with key features and use cases | ~4K tokens |
|||2026-06-26 | README | Optimization log entry for scheduled iteration | ~3K tokens |
| 2026-06-26 20:45 | ascii-art | Added 5 practical patterns (code blocks, git commits, welcome screens, timestamps, alerts) | ~2K tokens |
| 2026-06-26 | README | Add social-media-automator to Skills section | ~4K tokens |
| 2026-06-26 | README | Cleanup: removed references to non-existent skills (email-automation, ascii-art, zapier-mcp, n8n-integration) | ~1K tokens |
| 2026-06-27 | n8n-integration | Update README last updated date | ~1K tokens |
### n8n-integration

Enterprise-grade workflow automation orchestration with visual node editor. Connect 400+ apps, Cron scheduling, data transformation, error handling.

**Use cases**: Complex automation, API orchestration, data pipelines, team workflows
**Pros**: Visual editor, 300+ nodes, version control, team collaboration
**Cons**: Requires Node.js 18+, learning curve for advanced features

**Quick start**: Create workflow with webhook trigger → data transformation → database write

**Difficulty**: medium
**Token cost**: ~4K tokens (add) + 2K tokens (update README)
**Last updated**: 2026-06-27

---

