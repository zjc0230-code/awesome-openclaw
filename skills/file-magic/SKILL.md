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

## Error Handling

```bash
# File not found
$ file missing.txt
file: missing.txt: No such file or directory

# Permission denied
$ file /root/.ssh/id_rsa
file: /root/.ssh/id_rsa: Permission denied

# Binary file detection
$ file /bin/ls
/bin/ls: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.32, BuildID[sha1]=...
```

**Common exit codes:**
- `0` — success
- `1` — general error (file not found, permission denied)
- `2` — command-line parsing error

## Advanced Usage

```bash
# Show detailed MIME type
file --mime-type --brief filename

# Show encoding
file --mime-encoding filename

# Batch process directory
find . -type f -exec file {} \;

# Quiet mode (suppress header)
file -q filename

# Parse output programmatically
file --mime-type filename | cut -d: -f2 | tr -d ' '
```

**Token cost**: ~0.5K tokens (README log)

**Last updated**: 2026-06-28 10:30 (cron run)
