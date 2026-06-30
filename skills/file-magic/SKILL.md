---
name: file-magic
description: "Detect file types and content signatures using libmagic."
version: 1.1.0
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

## Hermes Integration Examples

```bash
# 1. 通用文件类型识别（日志分析）
file application.log
# Output: application.log: ASCII text, with very long lines

# 2. 二进制文件快速判断（文件分发）
file distributed_file.bin
# Output: distributed_file.bin: PE32+ executable (console) x86-64, for MS Windows

# 3. MIME 类型提取（API 响应体）
file --mime-type response.json | cut -d: -f2 | tr -d ' '
# Output: application/json

# 4. 批量处理（日志归档）
find ./logs -type f -exec file {} \; | grep -v "ASCII text" | awk '{print $1}' | xargs rm
# 删除非文本日志文件

# 5. 脚本化检查（CI/CD 流程）
#!/bin/bash
for file in dist/*.bin; do
  if ! file "$file" | grep -q "PE32+ executable"; then
    echo "Error: $file is not a valid binary"
    exit 1
  fi
done
```

## Troubleshooting

| Problem | Solution |
|---------|----------|
| `file: command not found` | Install libmagic (`sudo apt-get install file`) |
| Permission denied on system files | Run with `sudo` or check file permissions |
| MIME type not detected correctly | Ensure `/usr/share/file/magic` is installed and up-to-date |

**Token cost**: ~0.5K tokens (README log)

**Last updated**: 2026-06-30 09:20 (cron run)
