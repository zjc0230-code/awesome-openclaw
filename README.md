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

---

## Optimization Log

||||||| Date | Skill | Change | Token Cost |
|||------|-------|--------|------------|
|2026-06-26 15:00 | jupyter-live-kernel | Performance tips, IDE integration, alternatives comparison | ~4K tokens |
|2026-06-26 | jupyter-live-kernel | Add profile caching, import caching, updated token cost | ~1K tokens |
|2026-06-26 | n8n-integration | Added entry with key features and use cases | ~4K tokens |
|2026-06-26 | README | Optimization log entry for scheduled iteration | ~3K tokens |
| 2026-06-26 20:45 | ascii-art | Added 5 practical patterns (code blocks, git commits, welcome screens, timestamps, alerts) | ~2K tokens |
|2026-06-26 | README | Cleanup: removed references to non-existent skills (email-automation, ascii-art, zapier-mcp, n8n-integration) | ~1K tokens |
| 2026-06-27 | README | Remove remaining non-existent skill references (email-automation, zapier-mcp, social-media-automator) | ~2K tokens |

