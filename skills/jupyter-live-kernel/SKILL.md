---
name: jupyter-live-kernel
description: "Iterative Python via live Jupyter kernel (hamelnb). Interactive REPL with inline plots, rich output."
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Python, Jupyter, REPL, Data Science, Interactive, Development]
    related_skills: [data-science, python, terminal, jupyter-live-kernel]
    difficulty: easy
    use_cases:
      - Interactive data exploration
      - Debugging with rich output
      - Learning new libraries
      - Quick prototyping
    pros:
      - Live feedback without restarting
      - Inline plots and rich output
      - Easy to switch between code and output
      - No notebook file overhead
    cons:
      - Requires Python environment
      - Not shareable as notebook files
    alternatives:
      - Jupyter Notebook
      - IPython REPL
      - VS Code + Jupyter
---

# Jupyter Live Kernel

Interactive Python development via live Jupyter kernel (hamelnb). Provides REPL-like experience with inline plots, rich output, and easy debugging.

## Installation

```bash
pip install hamelnb
```

## Quick Start

```bash
# Start interactive kernel
jupyter-kernel --kernel-name myenv --python python3

# Or use IPython with Jupyter output
ipython --kernel=myenv
```

## Features

- **Live kernel**: No need to restart between edits
- **Inline plots**: Matplotlib plots render directly in REPL
- **Rich output**: HTML, Markdown, LaTeX supported
- **Auto-completion**: Tab completion and introspection
- **History**: Command history with up/down arrows

## Use Cases

1. **Data exploration**: Load data, inspect, visualize interactively
2. **Debugging**: Add print statements, check intermediate values
3. **Learning**: Try new libraries with immediate feedback
4. **Prototyping**: Test ideas without writing full scripts

## Tips

- Use `%matplotlib inline` for plot rendering
- Access kernel via `ipython --kernel=<name>`
- Save sessions to JSON with `jupyter-kernel --save`
- Share code between notebooks and REPL

## Examples

```python
import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv('data.csv')

# Quick visualization
df.plot(kind='bar')
plt.show()

# Interactive analysis
df['column'].describe()
```
