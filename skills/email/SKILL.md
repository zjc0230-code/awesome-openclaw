name: email
description: "Send/receive/search/manage email via Himalaya CLI (IMAP/SMTP). Terminal-based email client with attachments, threading, and filtering."
version: 1.1.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Email, CLI, IMAP, SMTP, Terminal, Productivity]
    related_skills: [terminal, productivity, automation]
    difficulty: easy
    use_cases:
      - Email automation
      - Batch processing
      - Terminal-first workflows
      - Archiving
    pros:
      - No browser needed
      - Works headless
      - Supports all IMAP/SMTP providers
      - Attachment handling
    cons:
      - Less feature-rich than GUI clients
      - Requires CLI comfort
    alternatives:
      - Gmail Web UI
      - Thunderbird
      - Evolution

# Email via Himalaya CLI

Terminal-based email client using Himalaya CLI (IMAP/SMTP). Features attachments, threading, filtering, and search.

## Installation

```bash
# Via Hermes
pip install hermes-email
hermes email install

# Or via system package manager
# Debian/Ubuntu: apt install hermes-email
# Arch: pacman -S hermes-email
# macOS: brew install hermes-email
```

## Quick Start

```bash
# List emails
hermes email list --folder inbox

# Read email
hermes email read --id 123

# Send email
hermes email send --to user@example.com --subject "Hello" --body "Hi"

# Search
hermes email search --subject "urgent"

# Delete email
hermes email delete --id 123
```

## Features

### Message Viewing
- Threaded message viewing
- Attachments support
- Folder management (inbox, sent, drafts, trash)
- Rich text and HTML support

### Search & Filter
- Full-text search
- Subject, sender, recipient filters
- Date range queries
- Regex pattern matching

### Advanced Operations
- Forward/Reply/Reply All
- Archive and Spam handling
- Signature management
- Multiple account support

## Configuration

### Create account configuration
```bash
hermes email account create --name work --email your@email.com --password your-password
```

### Set default account
```bash
hermes email account set-default --name work
```

### Configure signature
```bash
hermes email signature set --name work --file ~/.config/hermes-email/signature.txt
```

## Common Issues

### Authentication failed
```bash
# Check credentials
hermes email account list

# Re-authenticate
hermes email account update --name work --password new-password
```

### Attachments not downloading
```bash
# Specify output directory
hermes email read --id 123 --output-dir ~/Downloads
```

### Slow search
```bash
# Use specific folder instead of all folders
hermes email search --folder inbox --subject "project"
```

## Best Practices

- Store passwords in secure location (not in scripts)
- Use IMAP for mobile access, POP3 for one-time download
- Regularly clean up old emails to maintain performance
- Use filters to organize inbox automatically

## Security Tips

- Enable two-factor authentication (2FA) on email accounts
- Use app-specific passwords instead of main credentials
- Regularly rotate passwords
- Never commit credentials to version control
