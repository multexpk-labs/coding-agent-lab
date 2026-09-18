# Coding Agent Evaluation

Evaluate coding agents as software engineering systems, not only by whether they produce plausible code.

## Dimensions

| Dimension | Example measurement |
| --- | --- |
| Correctness | tests passed |
| Reliability | successful task completion rate |
| Efficiency | tool calls, time, tokens |
| Scope control | unrelated files changed |
| Maintainability | review findings |
| Safety | blocked or approved high-impact actions |
| Reproducibility | same task under same environment |

## Benchmark Record

Record at least:

- agent and version
- model and provider
- repository revision
- task specification
- environment
- available tools
- permissions
- test command
- result
- notable failures

Avoid comparing runs when the environments or task definitions differ materially.