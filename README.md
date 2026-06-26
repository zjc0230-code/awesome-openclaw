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

**Alternatives**: JupyterLab, IPython, Polars kernel

**Difficulty**: easy

**Token cost**: ~3K tokens (add) + 1.5K tokens (update README)

**Last updated**: 2026-06-26
**Difficulty**: easy

---

## Optimization Log

|| Date | Skill | Change | Token Cost |
|------|-------|--------|------------|
| 2026-06-26 | jupyter-live-kernel | Added Performance Tips, IDE integration, alternatives comparison | ~4K tokens |
| 2026-06-26 | jupyter-live-kernel | Enhanced with practical tips and integration guides | ~1.5K tokens |