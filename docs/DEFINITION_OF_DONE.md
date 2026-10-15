# Definition of Done

A Story may move to **Done** in Jira only when ALL of these are true:

- [ ] Acceptance criteria are met
- [ ] A pull request referencing the Story key (e.g. `HT-4`) is linked in the Jira Development panel
- [ ] **The linked pull request is MERGED** (not just open or approved)
- [ ] At least one reviewer approved the PR
- [ ] QA has verified the change (functional check, plus regression for shared code)
- [ ] No open blocker bugs are linked to the Story

Why: a Story dragged to Done with an open PR inflates the Sprint burndown and velocity.
