# Coding Agent Lab

Practical research and engineering for AI-assisted software development.

## Scope

This repository studies coding agents as engineering systems rather than chat interfaces. Topics include:

- OpenCode and Claude Code workflows
- VS Code and browser-based development environments
- local and remote LLM backends
- tool calling and repository-aware agents
- code search, editing, testing, and review loops
- agent permissions and sandbox boundaries
- context management and prompt design
- reproducible development environments
- observability, failure handling, and cost control

## Reference Architecture

```text
Developer
   │
   ▼
Coding Agent
   │
   ├── Model / LLM API
   ├── Repository Context
   ├── Terminal / Shell
   ├── File Tools
   ├── Git
   └── Tests / Linters
            │
            ▼
       Application Code
```

## Engineering Principles

1. Define the task before giving the agent tools.
2. Give the minimum permissions required.
3. Keep secrets outside prompts, source files, and logs.
4. Prefer small, verifiable changes over broad autonomous edits.
5. Run tests, linters, or targeted checks after changes.
6. Keep Git history understandable and reversible.
7. Separate read-only investigation from write-capable actions.
8. Require human approval for destructive or externally visible operations.
9. Record model, tool, repository, and environment assumptions when benchmarking.

## Typical Workflow

```text
Understand → Inspect → Plan → Edit → Test → Review → Commit → Document
```

## Example Commands

Check the local environment:

```bash
bash bash/coding-env-check.sh
```

Inspect Git and runtime information:

```bash
python3 python/repo_context.py .
```

Check whether common developer services are reachable:

```bash
bash bash/agent-endpoints-check.sh
```

## Repository Layout

- `docs/` — architecture, workflows, security, and evaluation notes
- `bash/` — small environment and endpoint diagnostics
- `python/` — repository/context inspection utilities
- `examples/` — reproducible workflow examples and configuration patterns

## OpenCode / Claude Code / VS Code

This lab documents integration patterns and operational concepts. Tool names, commands, model support, and provider features can change between releases, so examples should be validated against the installed version before production use.

## Research Method

```text
Find → Clone → Inspect → Understand → Document → Reimplement → Test → Improve → Publish
```

When studying an existing public project, preserve its license and attribution requirements. Reimplement ideas independently where appropriate; do not copy proprietary code or project branding without permission.

## Security

Never commit API keys, SSH private keys, OAuth tokens, `.env` files containing secrets, customer data, production credentials, or unrestricted agent configurations.

Treat shell access and write-capable coding agents as privileged automation. Use dedicated workspaces, least-privilege credentials, network restrictions, and human approval for high-impact actions.

## Related MULTEXPK LABS Work

- `linux-vps-engine` — Linux and VPS fundamentals
- `vps-automation` — repeatable infrastructure automation
- `server-troubleshooting` — evidence-first diagnostics
- `llm-infrastructure` — model-serving infrastructure
- `ollama-lab` — Ollama experiments
- `ai-agents-automation` — general agent architecture and workflow automation

## Education & Research

Built as part of MULTEXPK LABS for practical engineering education, AI/LLM research, reproducible experiments, and technical community knowledge sharing.

---

**MULTEXPK LTD ®™**

Secure Cloud • VPS • Hosting • Automation

VPS, cloud, GPU and infrastructure services: https://webvpsserver.com

WhatsApp: +92 312 6565434

© MULTEXPK LTD. Educational and research material is published for legitimate engineering use.