---
name: code-review-pre-commit
description: Pre-commit code review: security scan, quality gates, auto-fix
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Code Review, Pre-commit, Security, Quality, CI/CD]
    related_skills: [github-code-review, systematic-debugging, test-driven-development]
---

# Pre-commit Code Review

Automated code review before commits to catch security issues, bugs, and style violations early.

## Prerequisites

- `git` installed
- `gitleaks` (optional, for secrets scanning)
- `eslint` / `prettier` / `black` (optional, for linters)

## Usage

```bash
# Run all pre-commit checks
pre-commit run --all-files

# Run specific check
pre-commit run gitleaks --all-files
```

## Checks Included

- **Security**: `gitleaks` scans for hardcoded secrets
- **Style**: `eslint` / `prettier` / `black` formatting
- **Type**: `mypy` / `pyright` type checking
- **Tests**: `pytest` / `jest` run before commit

## Configuration

Create `.pre-commit-config.yaml`:

```yaml
repos:
  - repo: https://github.com/gitleaks/gitleaks
    rev: v8.18.0
    hooks:
      - id: gitleaks
        args: [--config, .gitleaks.toml]

  - repo: https://github.com/psf/black
    rev: 23.12.1
    hooks:
      - id: black
        language_version: python3.11

  - repo: https://github.com/psf/mypy
    rev: 1.7.1
    hooks:
      - id: mypy
        additional_dependencies: [types-requests]
```

## Installation

```bash
# Install pre-commit
pip install pre-commit

# Install hooks
pre-commit install

# Install all hooks at once
pre-commit install --install-hooks
```

## Troubleshooting

| Issue | Fix |
|-------|-----|
| `pre-commit: command not found` | `pip install pre-commit` |
| Linter fails on existing code | Run `pre-commit run --all-files` to fix |
| Secrets detected (false positive) | Add to `.gitleaks.toml` allowlist |
| Hook not running | Check `.git/hooks/pre-commit` exists |

## Benefits

- Catches bugs before they reach CI/CD
- Enforces code quality standards
- Prevents security vulnerabilities
- Reduces code review time
