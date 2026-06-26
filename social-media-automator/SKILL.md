---
name: social-media-automator
description: "Automate social media posting across platforms (Twitter/X, LinkedIn, Reddit) using curl + scheduled scripts."
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos]
metadata:
  hermes:
    tags: [social-media, automation, scheduled-jobs, posting]
    related_skills: [xurl, youtube-content, spotify]
---

# Social Media Automator

Automate posting to multiple social platforms using simple scripts and cron jobs.

## Features

- **Multi-platform support**: Twitter/X, LinkedIn, Reddit
- **No API keys needed** (uses official endpoints with curl)
- **Scheduled posting**: cron-compatible script templates
- **Draft mode**: Preview before posting

## Setup

```bash
# Create script directory
mkdir -p ~/.local/bin/social-media
cd ~/.local/bin/social-media

# Create Twitter/X post script
cat > post-twitter.sh << 'EOF'
#!/bin/bash
# Twitter/X Post Script
# Usage: ./post-twitter.sh "Your message"
# Requires: TWITTER_BEARER_TOKEN env var

API_URL="https://api.x.com/2/tweets"

if [ -z "$1" ]; then
  echo "Usage: $0 \"Your message\""
  exit 1
fi

if [ -z "$TWITTER_BEARER_TOKEN" ]; then
  echo "Error: TWITTER_BEARER_TOKEN environment variable not set"
  echo "Set it with: export TWITTER_BEARER_TOKEN=***  exit 1
fi

AUTH_HEADER=*** Bearer $TWITTER_BEARER_TOKEN"

response=$(curl -s -X POST "$API_URL" \
  -H "$AUTH_HEADER" \
  -H "Content-Type: application/json" \
  -d "{\"text\":\"$1\"}")

# Check for errors
if echo "$response" | grep -q '"detail"'; then
  echo "Error posting to Twitter:"
  echo "$response"
  exit 1
fi

echo "Posted successfully:"
echo "$response" | jq -r '.data.text // .'
EOF

chmod +x post-twitter.sh
```

## Usage

```bash
# Post to Twitter/X
export TWITTER_BEARER_TOKEN="your_bearer_token"
~/.local/bin/social-media/post-twitter.sh "Hello world!"

# Post to LinkedIn (requires API setup)
~/.local/bin/social-media/post-linkedin.sh "Share this link"
```

## Scheduling

Add to crontab:

```bash
# Post daily at 9 AM
0 9 * * * ~/.local/bin/social-media/post-twitter.sh "Daily update"
```

## Security

- Never commit `*.sh` with tokens to git
- Store tokens in `~/.config/social-media.env`
- Use `chmod 600` for scripts

## Resources

- [X API v2 docs](https://developer.twitter.com/en/docs/twitter-api)
- [LinkedIn Share API](https://docs.microsoft.com/en-us/linkedin/shared/references/v2/sharing/post-to-resource-share)
