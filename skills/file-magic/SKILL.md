---
name: file-magic
description: "Detect file types and content signatures using libmagic."
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [File, Detection, Inspection, Utility]
    related_skills: []
---

# File Magic

Detect file types and content signatures using `libmagic`.

## Installation

```bash
# Ubuntu/Debian
sudo apt-get install file

# macOS
brew install file

# Windows
# Use WSL or download prebuilt binaries
```

## Quick Start

```bash
# Detect file type
file filename

# Detect without extension
file --mime-type filename

# List signatures from /usr/share/file/magic
file --list-magic
```

## Use Cases

- Security scanning (malware signatures)
- Automated processing pipelines (route files to correct handlers)
- Debugging unknown file extensions
- Archive verification

## Token cost: ~0.5K tokens (README log)
