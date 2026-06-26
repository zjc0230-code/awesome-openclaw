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

**IDE Integration**:
- VS Code: Use Jupyter extension for kernel selection
- Vim/Neovim: `vim-jupyter` plugin for inline plotting

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
- Terminal headers: `figlet -f banner -c "PROJECT" | boxes -d bubble`
- Status badges: `echo "✓ Done" | boxes -d dog -a c`
- ASCII logos: `figlet -f slant -c "MAZAI-1" | boxes -d shadow`

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

---

## Optimization Log

||| Date | Skill | Change | Token Cost |
|------|-------|--------|------------|
| 2026-06-26 | jupyter-live-kernel | Added Performance Tips, IDE integration, alternatives comparison | ~4K tokens |
| 2026-06-26 | zapier-mcp | Added common patterns (data sync, notification, routing, approval) | ~3K tokens |