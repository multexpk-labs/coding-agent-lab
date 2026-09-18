# Coding Agent Workflow

## Goal

Use an agent to accelerate software work while keeping the developer responsible for scope, correctness, and release decisions.

## Workflow

```text
Task → Context → Plan → Small Edit → Test → Review → Commit
```

### 1. Task

State the desired outcome, constraints, affected files, and acceptance checks.

### 2. Context

Provide only the repository and documentation context needed for the task. Prefer repository-local instructions over assumptions.

### 3. Plan

Ask the agent to identify files, dependencies, risks, and a verification plan before broad edits.

### 4. Small Edit

Change one logical unit at a time. Avoid mixing refactors with unrelated feature work.

### 5. Test

Run the narrowest useful test first, then the broader suite when practical.

### 6. Review

Inspect the diff manually. Check behavior, security boundaries, migrations, error handling, and unintended file changes.

### 7. Commit

Create focused commits with messages that describe the actual change.

## Failure Loop

```text
Failure → Capture Evidence → Diagnose → Minimal Fix → Retest
```

Do not repeatedly ask an agent to retry without collecting the error and narrowing the problem.