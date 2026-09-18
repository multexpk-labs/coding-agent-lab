# Coding Agent Security

Coding agents can combine model reasoning with filesystem, shell, Git, network, and deployment access. Treat that combination as privileged automation.

## Permission Model

Prefer separate capabilities:

- read repository
- edit workspace
- execute tests
- access network
- access deployment systems
- perform destructive operations

Grant only what the current task needs.

## Secret Handling

Never place credentials in prompts or committed files. Prefer environment variables, secret managers, short-lived tokens, and dedicated service accounts.

## Workspace Isolation

Use a dedicated working directory or container when testing unfamiliar agent behavior. Protect host files and unrelated repositories.

## Approval Boundaries

Human approval should be required for actions such as:

- deleting production data
- changing DNS
- rotating critical credentials
- deploying to production
- modifying firewall policy
- sending external communications
- making irreversible infrastructure changes

## Audit

Keep useful records of the task, changed files, commands executed, test results, and final review.