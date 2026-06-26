## awesome-skills

AI 技能精选库 — 收录 Hermes/Cursor 高价值 Skills，工具类、营销类优先，持续迭代优化。

### 优化统计
- **优化次数**: 3
- **最近更新**: 2026-06-27 05:46

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

---

## Optimization Log

||||||||| Date | Skill | Change | Token Cost |
|||||------|-------|--------|------------|
|||2026-06-27 06:15 | social-media-automator | Add complete post-twitter.sh script with error handling, usage docs | ~1K tokens |
||||||2026-06-27 05:46 | README | Cleanup stale entries, add social-media-automator | ~1K tokens |
||||||2026-06-26 15:00 | jupyter-live-kernel | Performance tips, IDE integration, alternatives comparison | ~4K tokens |
||||||2026-06-26 | jupyter-live-kernel | Add profile caching, import caching, updated token cost | ~1K tokens |

