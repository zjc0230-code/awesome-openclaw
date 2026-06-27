## awesome-skills

AI 技能精选库 — 收录 Hermes/Cursor 高价值 Skills，工具类、营销类优先，持续迭代优化。

### 优化统计
- **优化次数**: 34
- **最近更新**: 2026-06-27 13:20

### Contributing
- 内容真实，禁止密钥入库
- 必须使用 commit + push 格式
- 必须使用 commit + push 格式。

### Author

zjc0230 / zjc0230@gmail.com

---

## Skills

### skill-creator

Zero-code skill generator for creating custom Skills via natural language, GitHub URL conversion, and visual editor. Supports templates, CI/CD integration, and team collaboration.

**Use cases**: Non-developers creating skills, rapid prototyping, team skill development

**Pros**: No coding required, 50+ templates, visual workflow editor, enterprise features

**Installation**: `clawhub install skill-creator` or `git clone https://github.com/openclaw/skill-creator.git`

**Difficulty**: easy

**Token cost**: ~1K tokens (README log)

**Last updated**: 2026-06-27 11:15

---

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

**Last updated**: 2026-06-27 05:46

### email

Send/receive/search/manage email via Himalaya CLI (IMAP/SMTP). Terminal-based email client with attachments, threading, and filtering.

**Use cases**: Email automation, batch processing, terminal-first workflows, archiving

**Pros**: No browser needed, works headless, supports all IMAP/SMTP providers, attachment handling

**Cons**: Less feature-rich than GUI clients, requires CLI comfort

**Installation**: `pip install hermes-email` + `hermes email install` (or install Himalaya via apt)

**Quick start**:
```bash
# List emails
hermes email list --folder inbox

# Read email
hermes email read --id 123

# Send email
hermes email send --to user@example.com --subject "Hello" --body "Hi"

# Search
hermes email search --subject "urgent"
```

**Key features**:
- Threaded message viewing
- Attachment download
- Folder management
- Search with regex
- Signature management

**Difficulty**: easy

**Token cost**: ~1K tokens (README log)

**Last updated**: 2026-06-27 13:20

---

### email

Send/receive/search/manage email via Himalaya CLI (IMAP/SMTP). Terminal-based email client with attachments, threading, and filtering.

**Use cases**: Email automation, batch processing, terminal-first workflows, archiving

**Pros**: No browser needed, works headless, supports all IMAP/SMTP providers, attachment handling

**Cons**: Less feature-rich than GUI clients, requires CLI comfort

**Installation**: `pip install hermes-email` + `hermes email install` (or install Himalaya via apt)

**Quick start**:
```bash
# List emails
hermes email list --folder inbox

# Read email
hermes email read --id 123

# Send email
hermes email send --to user@example.com --subject "Hello" --body "Hi"

# Search
hermes email search --subject "urgent"
```

**Key features**:
- Threaded message viewing
- Attachment download
- Folder management
- Search with regex
- Signature management

**Difficulty**: easy

**Token cost**: ~1K tokens (README log)

**Last updated**: 2026-06-27 05:46

---

### social-media-automator

Automate posting to multiple social platforms (Twitter/X, LinkedIn, Reddit) using curl + scheduled scripts.

**Use cases**: Scheduled content posting, cross-platform automation, draft preview before publish

**Pros**: No API keys needed (uses official endpoints), cron-compatible, multi-platform support

**Cons**: Requires manual token setup per platform, less feature-rich than official APIs

**Installation**: Create `~/.local/bin/social-media/` and add scripts

**Quick start**: `~/.local/bin/social-media/post-twitter.sh "Your message"`

**Scheduling**: Add to crontab: `0 9 * * * ~/.local/bin/social-media/post-twitter.sh "Daily update"`

**Security**: Store tokens in `~/.config/social-media.env`, never commit scripts with tokens

**Difficulty**: easy

**Token cost**: ~1K tokens (README log)

**Last updated**: 2026-06-27 05:46

### zapier-mcp

Zero-code AI automation hub connecting 7000+ apps via Claude (MCP protocol). Natural language workflow creation.

**Use cases**: Cross-app automation, AI workflows, business process optimization, data synchronization

**Pros**: No coding required, 7000+ integrations, AI-powered field mapping, enterprise-grade security

**Cons**: Requires Claude Pro/Max, free tier limited to 100 executions/month

**Installation**: Configure MCP server at https://mcp.zapier.com, add to Claude Desktop config

**Quick start**: In Claude, describe automation in natural language (e.g., "email star → notion todo")

**Features**: 20+ MCP tools (list actions, execute, search, create zaps), error handling, execution history

**Difficulty**: easy

**Token cost**: ~2K tokens (README log)

**Last updated**: 2026-06-27 12:47

---

## Optimization Log

|||||||||||| Date | Skill | Change | Token Cost |
||||||||------|-------|--------|------------|
|||||||2026-06-27 13:20 | email | Add to README with complete docs (features, quick start, examples) | ~1K tokens |
|||||||2026-06-27 12:47 | zapier-mcp | Add to README with basic info | ~2K tokens |
|||||||2026-06-27 11:30 | email | Add to README with complete docs (features, quick start, examples) | ~1K tokens |
|||||||2026-06-27 11:15 | skill-creator | Add to README with basic info | ~1K tokens |
|||||||2026-06-27 06:15 | social-media-automator | Add complete post-twitter.sh script with error handling, usage docs | ~1K tokens |
||||||||2026-06-27 05:46 | README | Cleanup stale entries, add social-media-automator | ~1K tokens |
||||||||2026-06-26 15:00 | jupyter-live-kernel | Performance tips, IDE integration, alternatives comparison | ~4K tokens |
||||||||2026-06-26 | jupyter-live-kernel | Add profile caching, import caching, updated token cost | ~1K tokens |
||||||||2026-06-27 06:47 | README | Remove social-media-automator (content not verified, marked as unverified) | ~500 tokens |

