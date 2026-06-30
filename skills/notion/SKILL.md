---
name: notion
description: "Notion API + ntn CLI: pages, databases, markdown, Workers."
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [Notion, Productivity, API, ntn]
    related_skills: [airtable, google-workspace]
---

# Notion Skill

Manage Notion via CLI using the Notion API and `ntn` CLI.

## Installation

```bash
# Install ntn CLI
npm install -g @notionhq/ntn

# Configure API key (stored in ~/.notionrc or ntn config)
ntn config set apiKey YOUR_NOTION_API_KEY
```

## Usage

### List Pages

```bash
ntn pages list
```

### Create Page

```bash
ntn pages create --title "My Page" --parent-page-id "YOUR_PARENT_ID"
```

### Update Page

```bash
ntn pages update --page-id "YOUR_PAGE_ID" --title "Updated Title"
```

### Query Database

```bash
ntn databases query --database-id "YOUR_DATABASE_ID"
```

### Export as Markdown

```bash
ntn pages export --page-id "YOUR_PAGE_ID" --format md
```

## Examples

### Create a new task in a Notion database

```bash
ntn databases query --database-id "YOUR_TASKS_DB_ID" --filter 'status = "To Do"'
```

### Sync a Notion page to a markdown file

```bash
ntn pages export --page-id "YOUR_PAGE_ID" --format md --output "./notes.md"
```

## API Key Security

- Never commit `~/.notionrc` or `.env` containing API keys
- Use environment variables or `ntn config` for token storage
- Rotate API keys regularly

## Troubleshooting

| Problem | Solution |
|---------|----------|
| `ntn: command not found` | Install ntn via npm: `npm install -g @notionhq/ntn` |
| Authentication failed | Verify API key in `ntn config list` and check key permissions |
| Rate limit errors | Notion API rate limit: 3 requests/second, 100 requests/minute |
| Invalid database ID | Check database URL structure: `https://www.notion.so/workspace/DatabaseName?id=YOUR_DB_ID` |

## Resources

- [Notion API Docs](https://developers.notion.com/)
- [ntn CLI GitHub](https://github.com/notionhq/ntn)
- [Notion API Reference](https://developers.notion.com/reference)
