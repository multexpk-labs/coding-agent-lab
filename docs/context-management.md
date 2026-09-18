# Context Management

Coding agents perform better when context is relevant, bounded, and current.

## Useful Context

- repository instructions
- relevant source files
- failing test output
- API contracts
- database schemas or migrations
- recent Git diff
- deployment constraints
- exact acceptance criteria

## Avoid

- unrelated large files
- secrets and credentials
- stale generated output
- entire repositories when only a small area matters
- ambiguous requests such as 'fix everything'

## Context Layers

1. **Task context** — what must change.
2. **Repository context** — conventions and architecture.
3. **Implementation context** — files and symbols being modified.
4. **Verification context** — tests, logs, and expected behavior.

## Practical Rule

Start narrow. Expand context only when evidence shows that the current context is insufficient.