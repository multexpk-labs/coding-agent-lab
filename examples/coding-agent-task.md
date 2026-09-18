# Example Coding-Agent Task

## Objective

Add a small health endpoint to an existing web application.

## Constraints

- follow existing project conventions
- do not change unrelated files
- do not add credentials
- preserve existing API behavior

## Suggested Agent Sequence

1. Inspect repository instructions and routing structure.
2. Identify the smallest set of files involved.
3. Explain the planned change.
4. Implement the endpoint.
5. Add or update a focused test.
6. Run the focused test.
7. Show the Git diff.
8. Wait for human review before deployment.

## Acceptance

- endpoint returns the documented response
- existing tests remain green
- no unrelated files changed
- no secrets introduced