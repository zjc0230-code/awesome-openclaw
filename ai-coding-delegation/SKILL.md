---
name: ai-coding-delegation
version: 1.0.0
author: Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [AI Coding, Delegation, Multi-Agent, Code Review, Workflow]
    related_skills: [autonomous-ai-agents, github-code-review, systematic-debugging]
---

# AI Coding Delegation

Comprehensive AI coding delegation workflow using Claude Code, OpenAI Codex, or other LLM-based coding agents. Supports two-stage review: subagent execution + human review, with automatic fallback and parallel task execution.

## Overview

This skill provides a structured framework for delegating coding tasks to AI agents with:
- **Two-stage review**: Subagent writes code → human reviews and approves
- **Parallel execution**: Multiple independent tasks run simultaneously
- **Fallback handling**: Automatic retry with different agents on failure
- **Context management**: Session continuity and tool usage tracking

## Installation

Native to Hermes (no installation needed).

## Usage

### Basic Delegation Pattern

```python
from hermes_tools import delegate_task

result = delegate_task({
    "goal": "Refactor the authentication module to use JWT tokens",
    "context": "Current auth uses sessions; need to migrate to JWT for API clients",
    "toolsets": ["terminal", "file"]
})
```

### Parallel Task Execution

```python
# Run multiple independent tasks concurrently
tasks = [
    {
        "goal": "Add unit tests for user service",
        "context": "Existing tests missing coverage for edge cases",
        "toolsets": ["terminal", "file"]
    },
    {
        "goal": "Update API documentation for new endpoints",
        "context": "New endpoints added in v2.0 but docs are outdated",
        "toolsets": ["terminal", "file"]
    }
]

results = delegate_task({"tasks": tasks, "mode": "parallel"})
```

### With Coding Agent

```python
# Use Claude Code or OpenAI Codex as the agent
result = delegate_task({
    "goal": "Implement Redis caching layer",
    "context": "Database queries are slow; need caching layer",
    "agent_id": "claude-code",
    "instructions": "Use vLLM for inference; implement connection pooling"
})
```

## Configuration

### Agent Selection

- **`claude-code`**: Claude Code agent via Anthropic API
- **`codex`**: OpenAI Codex agent via OpenAI API
- **`global_agent`**: Global agent mode (default)

### Execution Modes

- **`scoped`**: Isolated execution (default)
- **`global`**: Global session context

### Toolsets

Available toolsets:
- `terminal`: Shell commands
- `file`: File operations (read, write, patch)
- `web`: Network access
- `browser`: Web interaction
- `python`: Python execution
- `vision`: Image analysis
- `database`: Database operations

## Best Practices

1. **Clear goals**: Be specific about what needs to be done
2. **Context matters**: Include relevant files, requirements, and constraints
3. **Tool selection**: Use appropriate toolsets for the task
4. **Review before merging**: Always review subagent output before committing
5. **Error handling**: Check subagent logs and handle failures gracefully

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Subagent fails to start | Check agent_id is valid; verify API keys are configured |
| Timeout occurs | Increase `timeout_ms` parameter or reduce task complexity |
| Missing context | Provide more detailed context including file paths and requirements |
| Tool not available | Add required toolset to `toolsets` parameter |

## Related Skills

- `autonomous-ai-agents`: Spawn and orchestrate autonomous AI coding agents
- `github-code-review`: Pre-commit code review with security scanning
- `systematic-debugging`: 4-phase root cause debugging workflow
- `writing-plans`: Write implementation plans with bite-sized tasks

## Token Cost Estimate

- **Per delegation call**: ~3-5K tokens (context + response)
- **Per parallel task**: +2-3K tokens per task
- **Per review**: ~1-2K tokens (human review only)
- **Typical workflow**: 5-10K tokens per coding task

## Limitations

- Subagents cannot use `clarify` tool (no interactive questions)
- Nested delegation is disabled (max_spawn_depth=1)
- Long-running tasks should use `cronjob` instead of `delegate_task`
- Subagents have no memory of prior conversations in the same session

## License

MIT
