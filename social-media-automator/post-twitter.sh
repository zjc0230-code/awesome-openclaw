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
  echo "Set it with: export TWITTER_BEARER_TOKEN=your_token"
  exit 1
fi

AUTH_HEADER="Authorization: Bearer $TWITTER_BEARER_TOKEN"

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
