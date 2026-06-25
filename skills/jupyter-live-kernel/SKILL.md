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

## Usage Examples

### 1. Interactive Data Exploration

```python
import pandas as pd
import numpy as np

# Load data
df = pd.DataFrame({
    'x': np.random.randn(100),
    'y': np.random.randn(100)
})

# Interactive plotting
df.plot.scatter(x='x', y='y')
```

### 2. Debugging with Rich Output

```python
import numpy as np

# Test array operations
arr = np.random.rand(10, 10)
print(f"Shape: {arr.shape}")
print(f"Mean: {arr.mean():.4f}")
print(f"Std: {arr.std():.4f}")

# Inline visualization
arr.T.plot()
```

### 3. Learning New Libraries

```python
import matplotlib.pyplot as plt

# Quick prototype
x = np.linspace(0, 10, 100)
for func in [np.sin, np.cos, np.tan]:
    plt.plot(x, func(x), label=func.__name__)

plt.legend()
plt.show()
```

## Common Issues

### Kernel not found
```bash
# Create kernel first
jupyter-kernel --kernel-name myenv --python python3
```

### Rich output not showing
```python
# Ensure matplotlib backend is set
import matplotlib
matplotlib.use('inline')  # Required for inline plots
```

### IPython kernel not available
```bash
# Install IPython if missing
pip install ipython
```

## Best Practices

- Use for interactive development and testing
- Keep sessions focused on specific tasks
- Save important results to files for reproducibility
- Use `%%timeit` magic for performance testing
