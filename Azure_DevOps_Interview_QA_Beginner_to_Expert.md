# Azure DevOps Interview Questions & Answers --- Beginner to Expert

> Focus: Azure Repos, Pipelines, Boards, YAML pipelines, agents,
> variables, artifacts, environments, approvals, security,
> troubleshooting, and real-world CI/CD scenarios.

## Question Index

### Azure Repos

1.  [What is Azure Repos?](#1-what-is-azure-repos)
2.  [What version-control systems does Azure Repos
    support?](#2-what-version-control-systems-does-azure-repos-support)
3.  [What is the difference between Git and TFVC in Azure
    DevOps?](#3-what-is-the-difference-between-git-and-tfvc-in-azure-devops)
4.  [What is a branch in Azure
    Repos?](#4-what-is-a-branch-in-azure-repos)
5.  [What branching strategies are commonly
    used?](#5-what-branching-strategies-are-commonly-used)
6.  [What is a Pull Request?](#6-what-is-a-pull-request)
7.  [What are branch policies?](#7-what-are-branch-policies)
8.  [How do you protect the main
    branch?](#8-how-do-you-protect-the-main-branch)
9.  [What is build validation in a branch
    policy?](#9-what-is-build-validation-in-a-branch-policy)
10. [What are required reviewers?](#10-what-are-required-reviewers)
11. [What is the difference between merge, squash merge and
    rebase?](#11-what-is-the-difference-between-merge-squash-merge-and-rebase)
12. [How do you resolve a Git merge
    conflict?](#12-how-do-you-resolve-a-git-merge-conflict)
13. [How do you link commits and PRs to Azure Boards work
    items?](#13-how-do-you-link-commits-and-prs-to-azure-boards-work-items)
14. [How do you secure Azure Repos?](#14-how-do-you-secure-azure-repos)
15. [Monorepo vs multi-repo: when would you use
    each?](#15-monorepo-vs-multi-repo-when-would-you-use-each)

### Azure Boards

16. [What is Azure Boards?](#16-what-is-azure-boards)
17. [What are work items?](#17-what-are-work-items)
18. [Explain Epic, Feature, User Story/PBI, Task and
    Bug.](#18-explain-epic-feature-user-storypbi-task-and-bug)
19. [What is a backlog?](#19-what-is-a-backlog)
20. [What is a sprint?](#20-what-is-a-sprint)
21. [What are Area Paths and Iteration
    Paths?](#21-what-are-area-paths-and-iteration-paths)
22. [How do Azure Boards integrate with Repos and
    Pipelines?](#22-how-do-azure-boards-integrate-with-repos-and-pipelines)
23. [What are Azure Boards queries?](#23-what-are-azure-boards-queries)
24. [What are Delivery Plans?](#24-what-are-delivery-plans)
25. [How would you use Azure Boards in a real
    project?](#25-how-would-you-use-azure-boards-in-a-real-project)

### Azure Pipelines Fundamentals

26. [What is Azure Pipelines?](#26-what-is-azure-pipelines)
27. [What is CI and CD?](#27-what-is-ci-and-cd)
28. [Classic pipeline vs YAML
    pipeline?](#28-classic-pipeline-vs-yaml-pipeline)
29. [What are stages, jobs, steps and
    tasks?](#29-what-are-stages-jobs-steps-and-tasks)
30. [What is a multi-stage
    pipeline?](#30-what-is-a-multi-stage-pipeline)
31. [What is a pipeline trigger?](#31-what-is-a-pipeline-trigger)
32. [What is a PR trigger?](#32-what-is-a-pr-trigger)
33. [How do scheduled pipelines
    work?](#33-how-do-scheduled-pipelines-work)
34. [What is dependsOn?](#34-what-is-dependson)
35. [What are pipeline conditions?](#35-what-are-pipeline-conditions)
36. [What is a service connection?](#36-what-is-a-service-connection)
37. [How do you secure service
    connections?](#37-how-do-you-secure-service-connections)
38. [How do you troubleshoot a failed
    pipeline?](#38-how-do-you-troubleshoot-a-failed-pipeline)

### YAML Pipelines

39. [What is an Azure DevOps YAML
    pipeline?](#39-what-is-an-azure-devops-yaml-pipeline)
40. [Explain the basic YAML pipeline
    structure.](#40-explain-the-basic-yaml-pipeline-structure)
41. [What does pool mean in YAML?](#41-what-does-pool-mean-in-yaml)
42. [What is the difference between job and deployment
    job?](#42-what-is-the-difference-between-job-and-deployment-job)
43. [What are YAML templates?](#43-what-are-yaml-templates)
44. [Why use pipeline templates?](#44-why-use-pipeline-templates)
45. [What is the difference between parameters and
    variables?](#45-what-is-the-difference-between-parameters-and-variables)
46. [Explain macro, template and runtime expression
    syntax.](#46-explain-macro-template-and-runtime-expression-syntax)
47. [How do you conditionally execute a
    stage?](#47-how-do-you-conditionally-execute-a-stage)
48. [How do you pass output variables between jobs or
    stages?](#48-how-do-you-pass-output-variables-between-jobs-or-stages)
49. [How do you reuse YAML across multiple
    repositories?](#49-how-do-you-reuse-yaml-across-multiple-repositories)
50. [Give an example of a production-ready multi-stage YAML
    pipeline.](#50-give-an-example-of-a-production-ready-multi-stage-yaml-pipeline)

### Agents

51. [What is an Azure DevOps agent?](#51-what-is-an-azure-devops-agent)
52. [Microsoft-hosted vs self-hosted
    agents?](#52-microsoft-hosted-vs-self-hosted-agents)
53. [What is an agent pool?](#53-what-is-an-agent-pool)
54. [What are agent capabilities and
    demands?](#54-what-are-agent-capabilities-and-demands)
55. [When would you use a self-hosted
    agent?](#55-when-would-you-use-a-self-hosted-agent)
56. [How do you secure a self-hosted
    agent?](#56-how-do-you-secure-a-self-hosted-agent)
57. [What is an ephemeral agent?](#57-what-is-an-ephemeral-agent)
58. [How do you troubleshoot an offline
    agent?](#58-how-do-you-troubleshoot-an-offline-agent)
59. [How do you scale self-hosted
    agents?](#59-how-do-you-scale-self-hosted-agents)
60. [What are parallel jobs?](#60-what-are-parallel-jobs)

### Variables, Parameters and Secrets

61. [What are pipeline variables?](#61-what-are-pipeline-variables)
62. [What are predefined/system
    variables?](#62-what-are-predefinedsystem-variables)
63. [What is a variable group?](#63-what-is-a-variable-group)
64. [What is a secret variable?](#64-what-is-a-secret-variable)
65. [How do you integrate Azure Key Vault with Azure
    Pipelines?](#65-how-do-you-integrate-azure-key-vault-with-azure-pipelines)
66. [Can variables be changed during pipeline
    execution?](#66-can-variables-be-changed-during-pipeline-execution)
67. [What are output variables?](#67-what-are-output-variables)
68. [How do you set a variable from a
    script?](#68-how-do-you-set-a-variable-from-a-script)
69. [What is variable precedence?](#69-what-is-variable-precedence)
70. [How do you prevent secrets from appearing in
    logs?](#70-how-do-you-prevent-secrets-from-appearing-in-logs)

### Artifacts

71. [What is an artifact in Azure
    DevOps?](#71-what-is-an-artifact-in-azure-devops)
72. [Pipeline Artifacts vs Build
    Artifacts?](#72-pipeline-artifacts-vs-build-artifacts)
73. [What is Azure Artifacts?](#73-what-is-azure-artifacts)
74. [What is an Azure Artifacts
    feed?](#74-what-is-an-azure-artifacts-feed)
75. [How do you publish and download a pipeline
    artifact?](#75-how-do-you-publish-and-download-a-pipeline-artifact)
76. [Why should the same artifact be promoted across
    environments?](#76-why-should-the-same-artifact-be-promoted-across-environments)
77. [How do you version artifacts?](#77-how-do-you-version-artifacts)
78. [How do you secure artifacts and
    feeds?](#78-how-do-you-secure-artifacts-and-feeds)

### Environments, Approvals and Checks

79. [What is an Azure DevOps
    Environment?](#79-what-is-an-azure-devops-environment)
80. [Why use environments?](#80-why-use-environments)
81. [What is an approval?](#81-what-is-an-approval)
82. [What are approvals and checks?](#82-what-are-approvals-and-checks)
83. [Environment approval vs ManualValidation
    task?](#83-environment-approval-vs-manualvalidation-task)
84. [What is branch control?](#84-what-is-branch-control)
85. [What is an exclusive lock
    check?](#85-what-is-an-exclusive-lock-check)
86. [How do you restrict production
    deployments?](#86-how-do-you-restrict-production-deployments)
87. [How do you implement production approval in
    YAML?](#87-how-do-you-implement-production-approval-in-yaml)
88. [How do you track deployment
    history?](#88-how-do-you-track-deployment-history)

### Real-Time / Senior-Level Scenarios

89. [Explain an Azure DevOps pipeline you implemented
    end-to-end.](#89-explain-an-azure-devops-pipeline-you-implemented-end-to-end)
90. [A production deployment failed. How do you troubleshoot
    it?](#90-a-production-deployment-failed-how-do-you-troubleshoot-it)
91. [Deployment succeeded but the application is not working. What do
    you
    check?](#91-deployment-succeeded-but-the-application-is-not-working-what-do-you-check)
92. [How do you implement rollback?](#92-how-do-you-implement-rollback)
93. [How do you implement Blue-Green
    deployment?](#93-how-do-you-implement-blue-green-deployment)
94. [How do you implement Canary
    deployment?](#94-how-do-you-implement-canary-deployment)
95. [How do you deploy to AKS from Azure
    DevOps?](#95-how-do-you-deploy-to-aks-from-azure-devops)
96. [How do you integrate Terraform with Azure
    DevOps?](#96-how-do-you-integrate-terraform-with-azure-devops)
97. [How do you integrate Ansible with Azure
    DevOps?](#97-how-do-you-integrate-ansible-with-azure-devops)
98. [How do you integrate security scanning into the
    pipeline?](#98-how-do-you-integrate-security-scanning-into-the-pipeline)
99. [How do you design Azure DevOps for dev, QA, staging and
    production?](#99-how-do-you-design-azure-devops-for-dev-qa-staging-and-production)
100. [How do you make an Azure DevOps pipeline
     enterprise-ready?](#100-how-do-you-make-an-azure-devops-pipeline-enterprise-ready)

------------------------------------------------------------------------

# Answers

## Azure Repos

### 1. What is Azure Repos?

Azure Repos provides private Git repositories and TFVC repositories for
source-code version control inside Azure DevOps.

### 2. What version-control systems does Azure Repos support?

Azure Repos supports Git and Team Foundation Version Control (TFVC).

### 3. What is the difference between Git and TFVC in Azure DevOps?

Git is distributed: every developer has a local repository/history and
works through branches and commits. TFVC is centralized and primarily
maintains version history on the server. Git is the common choice for
modern development.

### 4. What is a branch in Azure Repos?

A branch is an independent line of development. Teams use branches to
isolate feature, bug-fix, release or experimental work before merging it
into another branch.

### 5. What branching strategies are commonly used?

Common strategies are GitFlow, GitHub/feature-branch flow and
trunk-based development. For fast CI/CD, short-lived feature branches
plus protected `main` is commonly preferred.

### 6. What is a Pull Request?

A Pull Request proposes merging changes from one branch into another and
provides a controlled place for code review, comments, policies,
automated validation and approval.

### 7. What are branch policies?

Branch policies enforce rules before a PR can merge, such as minimum
reviewers, build validation, work-item linking, comment resolution and
restrictions on merge types.

### 8. How do you protect the main branch?

Prevent direct pushes, require PRs, minimum reviewers, build/test
validation, security checks, comment resolution and appropriate branch
permissions.

### 9. What is build validation in a branch policy?

It automatically runs a selected pipeline when a PR changes. The PR can
be blocked from merging if the validation build fails.

### 10. What are required reviewers?

Specific users or groups whose approval is mandatory for a PR, often
based on ownership of sensitive code or directories.

### 11. What is the difference between merge, squash merge and rebase?

Merge preserves branch history and normally creates a merge commit.
Squash combines the source branch changes into one commit. Rebase
reapplies commits onto a new base to create linear history.

### 12. How do you resolve a Git merge conflict?

Fetch/pull the latest target branch, merge or rebase it into the working
branch, manually resolve conflicting files, test the result, stage the
resolved files, commit/continue the rebase and push.

### 13. How do you link commits and PRs to Azure Boards work items?

Reference the work-item ID when creating commits/PRs or use the Azure
DevOps work-item linking UI. This provides traceability from requirement
→ code → build → deployment.

### 14. How do you secure Azure Repos?

Use least-privilege RBAC, protected branches, PR policies, required
reviews, secure authentication, secret scanning, audit logs and
restricted service identities.

I secure Azure Repos using a defense-in-depth approach. First, I implement least-privilege access using Azure DevOps groups and repository or branch-level permissions. I protect critical branches such as main using branch policies, requiring pull requests, at least two reviewers, build validation, status checks and comment resolution. I restrict bypass and force-push permissions to a very small administrative group.

For source-code security, I enable secret scanning and push protection, along with dependency and code scanning where available. I never store credentials in the repository; secrets are kept in Azure Key Vault or appropriate secure pipeline mechanisms.

For CI/CD, I use dedicated service identities with only the Azure RBAC permissions required by the pipeline rather than personal accounts or subscription-level Owner permissions. Finally, I enable Azure DevOps auditing and monitor permission changes, branch-policy changes and other security-sensitive activities. This gives us least privilege, code-review controls, secret protection, secure deployments and traceability.”

### 15. Monorepo vs multi-repo: when would you use each?

A monorepo simplifies atomic changes and shared tooling across tightly
related components. Multi-repo gives stronger ownership, independent
lifecycle and access boundaries. Choose based on coupling, team
ownership and release model.

## Azure Boards

### 16. What is Azure Boards?

Azure Boards is Azure DevOps' work-management service for planning and
tracking requirements, bugs, tasks, backlogs, sprints and team delivery.

### 17. What are work items?

Work items are records used to track work, such as Epics, Features, User
Stories/PBIs, Tasks and Bugs.

### 18. Explain Epic, Feature, User Story/PBI, Task and Bug.

Epic = large business initiative. Feature = significant capability under
an Epic. User Story/PBI = user/business requirement. Task =
implementation work. Bug = defect requiring correction.

### 19. What is a backlog?

A backlog is a prioritized list of work items representing work the team
plans to deliver.

### 20. What is a sprint?

A sprint is a time-boxed iteration in which a team commits to and
completes selected backlog work.

### 21. What are Area Paths and Iteration Paths?

Area Paths organize work by product/team/component. Iteration Paths
organize work by time periods such as releases and sprints.

### 22. How do Azure Boards integrate with Repos and Pipelines?

Work items can be linked to commits, branches, PRs, builds and
deployments, giving end-to-end traceability from requirement to
production.

### 23. What are Azure Boards queries?

Queries filter and retrieve work items based on fields such as state,
assignee, type, iteration or tags. They can also support dashboards and
reporting.

### 24. What are Delivery Plans?

Delivery Plans provide a timeline view of work across multiple
teams/backlogs to visualize schedules, dependencies and delivery
progress.

### 25. How would you use Azure Boards in a real project?

Create Epics/Features, break them into stories and tasks, prioritize the
backlog, assign sprint work, link development through commits/PRs, track
bugs and use dashboards/queries for delivery visibility.

## Azure Pipelines Fundamentals

### 26. What is Azure Pipelines?

Azure Pipelines is Azure DevOps' CI/CD service for automatically
building, testing, packaging and deploying applications.

### 27. What is CI and CD?

CI automatically integrates code changes and validates them through
build/tests. CD automatically prepares and/or deploys validated
artifacts through environments such as dev, QA and production.

### 28. Classic pipeline vs YAML pipeline?

Classic pipelines are primarily configured through the UI. YAML
pipelines define pipeline-as-code in version control, enabling review,
reuse and version history. YAML is generally preferred for modern
implementations.

### 29. What are stages, jobs, steps and tasks?

Stage = major pipeline phase. Job = group of steps executed on an agent
or deployment target. Step = individual operation in a job. Task =
reusable packaged step such as `DotNetCoreCLI`, `Docker` or artifact
publishing.

### 30. What is a multi-stage pipeline?

A YAML pipeline containing multiple stages such as Build, Test, Dev, QA
and Production with dependencies, conditions and deployment controls.

### 31. What is a pipeline trigger?

A trigger defines when a pipeline starts automatically, commonly after
changes to selected branches or paths.

### 32. What is a PR trigger?

A PR trigger runs pipeline validation for pull-request changes. Behavior
depends on repository type; Azure Repos Git commonly uses branch
build-validation policies for PR validation.

### 33. How do scheduled pipelines work?

Use YAML `schedules` with cron expressions, branch filters and optional
`always` behavior to execute pipelines at defined times.

### 34. What is dependsOn?

`dependsOn` explicitly defines dependencies between stages or jobs and
controls execution order.

### 35. What are pipeline conditions?

Conditions decide whether a stage/job/step runs based on status,
variables or expressions, e.g. `condition: succeeded()`.

### 36. What is a service connection?

A service connection stores/configures the identity and connection
information Azure Pipelines uses to access external services such as
Azure, Kubernetes, Docker registries or other endpoints.

### 37. How do you secure service connections?

Use workload identity federation where supported, least privilege,
restrict pipeline permissions, avoid granting access to all pipelines,
separate dev/prod identities and audit usage.

### 38. How do you troubleshoot a failed pipeline?

Identify the failed stage/job/task, inspect logs, verify
variables/secrets, agent availability/capabilities, service connections,
permissions, artifact inputs and target connectivity. Reproduce the
failing command where appropriate and rerun only after fixing the root
cause.

## YAML Pipelines

### 39. What is an Azure DevOps YAML pipeline?

A pipeline defined as YAML code, normally stored in Git, describing
triggers, variables, stages, jobs, steps and deployment logic.

### 40. Explain the basic YAML pipeline structure.

Typical hierarchy:

``` yaml
trigger:
- main

variables:
  configuration: Release

stages:
- stage: Build
  jobs:
  - job: BuildJob
    pool:
      vmImage: ubuntu-latest
    steps:
    - script: echo "Build"
```

### 41. What does pool mean in YAML?

`pool` specifies the agent pool or Microsoft-hosted VM image on which a
job executes.

### 42. What is the difference between job and deployment job?

A regular job is used to execute a collection of tasks on an agent, typically for build, test, or other automation activities. 
A deployment job is specifically designed for deploying applications to an Azure DevOps Environment and provides deployment-specific capabilities such as approvals, checks, deployment history, and strategies like runOnce, rolling, and canary.

### 43. What are YAML templates?

Templates are reusable YAML files containing stages, jobs, steps or
variables that can be included in pipelines.

### 44. Why use pipeline templates?

They remove duplication, standardize CI/CD, centralize
security/governance controls and make pipeline maintenance easier.

### 45. What is the difference between parameters and variables?

### Difference between Parameters and Variables in Azure DevOps

Parameters and variables are both used to store values in Azure DevOps YAML pipelines, but they differ mainly in when they are evaluated and how they are used.

1. Parameters

Parameters are compile-time values. They are evaluated before the pipeline starts running.

Example:

parameters:
- name: environment
  type: string
  default: dev
  values:
  - dev
  - test
  - prod

steps:
- script: echo "Deploying to ${{ parameters.environment }}"

Parameters are commonly used for:
- User inputs when manually running a pipeline
- Controlling pipeline structure
- Template customization
- Selecting environments or deployment options

Parameters are immutable during pipeline execution.

2. Variables

Variables are mainly runtime values. They can be used and, in many cases, changed while the pipeline is running.

Example:

variables:
  environment: dev
  imageTag: v1.0

steps:
- script: echo "Environment: $(environment)"
- script: echo "Image: $(imageTag)"

Variables are commonly used for:
- Configuration values
- Environment-specific values
- Build numbers
- Image tags
- URLs
- Secrets

A variable can also be created or updated during a pipeline:

- bash: |
    echo "##vso[task.setvariable variable=imageTag]v2.0"

Key Differences:

| Feature | Parameters | Variables |
|---------|------------|-----------|
| Evaluation | Compile time | Runtime |
| Syntax | ${{ parameters.name }} | $(name) |
| Can change during execution | No | Yes |
| User input | Yes | Possible |
| Control pipeline structure | Yes | Generally no |
| Template customization | Yes | Limited |
| Store secrets | No | Yes |
| Typical use | Environment selection, pipeline behavior | Configuration, image tags, URLs |

Example:

parameters:
- name: deployToProd
  type: boolean
  default: false

variables:
  imageTag: v10

Parameters can control whether a stage/job is included:

${{ if eq(parameters.deployToProd, true) }}:
- stage: DeployProd
  jobs:
  - deployment: Deploy
    ...

Variables can store values that are used during execution:

- bash: |
    echo "##vso[task.setvariable variable=imageTag]v11"

Interview Answer:

"Parameters are compile-time inputs used mainly to control pipeline structure, template behavior, and user selections. Variables are runtime values used for configuration and data during pipeline execution. Parameters use the ${{ }} syntax and are immutable during a run, whereas variables typically use the $( ) syntax and can be updated during execution."

Easy way to remember:

Parameter = Decide before the pipeline runs.
Variable = Value used or changed while the pipeline runs.


### 46. Explain macro, template and runtime expression syntax.

`$(var)` = macro syntax, expanded before a task executes.
`${{ variables.var }}` = compile/template-time expression.
`$[variables.var]` = runtime expression used when runtime evaluation is
required.

### 47. How do you conditionally execute a stage?

Example:

``` yaml
condition: and(succeeded(), eq(variables['Build.SourceBranch'], 'refs/heads/main'))
```
### How do you conditionally execute a stage in Azure DevOps?

In Azure DevOps YAML pipelines, we use the `condition:` property to control whether a stage should execute.

By default, a stage runs only when its dependencies complete successfully.

1. Run a stage only when the previous stage succeeds:

stages:
- stage: Build
  jobs:
  - job: BuildApp
    steps:
    - script: echo "Building application"

- stage: Deploy
  dependsOn: Build
  condition: succeeded()
  jobs:
  - deployment: DeployApp
    environment: dev
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying application"

2. Run a stage only for the main branch:

stages:
- stage: DeployProd
  condition: and(
    succeeded(),
    eq(variables['Build.SourceBranch'], 'refs/heads/main')
  )
  jobs:
  - deployment: Deploy
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying to production"

3. Run a stage based on a variable:

variables:
  deployToProd: true

stages:
- stage: DeployProd
  condition: and(
    succeeded(),
    eq(variables['deployToProd'], 'true')
  )
  jobs:
  - deployment: Deploy
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying to production"

Common condition functions:

succeeded()       → Previous dependencies succeeded
failed()          → Previous dependencies failed
always()          → Run regardless of previous result
succeededOrFailed() → Run if previous stages succeeded or failed
canceled()        → Pipeline was canceled
eq()              → Compare two values
and()             → All conditions must be true
or()              → At least one condition must be true
not()             → Negate a condition

Example:

condition: and(
  succeeded(),
  eq(variables['Build.SourceBranch'], 'refs/heads/main')
)

This means:

"Run this stage only if the previous stages succeeded AND the current branch is main."

### Interview Answer

"To conditionally execute a stage in Azure DevOps, we use the `condition` property. Conditions can use built-in functions such as `succeeded()`, `failed()`, `always()`, `eq()`, `and()`, and `or()`. For example, we can configure a production deployment stage to run only when the build succeeds and the pipeline is running from the main branch."

Easy way to remember:

`condition:` → Controls WHEN a stage runs.

### 48. How do you pass output variables between jobs or stages?
In Azure DevOps YAML pipelines, we use the `condition:` property to control whether a stage should execute.

By default, a stage runs only when its dependencies complete successfully.

1. Run a stage only when the previous stage succeeds:

stages:
- stage: Build
  jobs:
  - job: BuildApp
    steps:
    - script: echo "Building application"

- stage: Deploy
  dependsOn: Build
  condition: succeeded()
  jobs:
  - deployment: DeployApp
    environment: dev
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying application"

2. Run a stage only for the main branch:

stages:
- stage: DeployProd
  condition: and(
    succeeded(),
    eq(variables['Build.SourceBranch'], 'refs/heads/main')
  )
  jobs:
  - deployment: Deploy
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying to production"

3. Run a stage based on a variable:

variables:
  deployToProd: true

stages:
- stage: DeployProd
  condition: and(
    succeeded(),
    eq(variables['deployToProd'], 'true')
  )
  jobs:
  - deployment: Deploy
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - script: echo "Deploying to production"

Common condition functions:

succeeded()       → Previous dependencies succeeded
failed()          → Previous dependencies failed
always()          → Run regardless of previous result
succeededOrFailed() → Run if previous stages succeeded or failed
canceled()        → Pipeline was canceled
eq()              → Compare two values
and()             → All conditions must be true
or()              → At least one condition must be true
not()             → Negate a condition

Example:

condition: and(
  succeeded(),
  eq(variables['Build.SourceBranch'], 'refs/heads/main')
)

This means:

"Run this stage only if the previous stages succeeded AND the current branch is main."

### Interview Answer

"To conditionally execute a stage in Azure DevOps, we use the `condition` property. Conditions can use built-in functions such as `succeeded()`, `failed()`, `always()`, `eq()`, `and()`, and `or()`. For example, we can configure a production deployment stage to run only when the build succeeds and the pipeline is running from the main branch."

Easy way to remember:

`condition:` → Controls WHEN a stage runs.

### 49. How do you reuse YAML across multiple repositories?

Define the external repository under `resources.repositories`, reference
it with an alias, and load templates using `template: path@alias`. Pin
template versions/tags for controlled releases.

### 50. Give an example of a production-ready multi-stage YAML pipeline.

``` yaml
trigger:
  branches:
    include:
    - main

stages:
- stage: Build
  jobs:
  - job: Build
    pool:
      vmImage: ubuntu-latest
    steps:
    - checkout: self
    - script: ./build.sh
    - script: ./test.sh
    - publish: $(Build.SourcesDirectory)/drop
      artifact: app

- stage: Deploy_Dev
  dependsOn: Build
  jobs:
  - deployment: DeployDev
    environment: dev
    strategy:
      runOnce:
        deploy:
          steps:
          - download: current
            artifact: app
          - script: ./deploy.sh dev

- stage: Deploy_Prod
  dependsOn: Deploy_Dev
  condition: succeeded()
  jobs:
  - deployment: DeployProd
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - download: current
            artifact: app
          - script: ./deploy.sh prod
```

Configure production approvals/checks on the `production` Environment
rather than embedding approver credentials in YAML.

## Agents

### 51. What is an Azure DevOps agent?

An agent is the compute worker that executes pipeline jobs and reports
results back to Azure DevOps.

### 52. Microsoft-hosted vs self-hosted agents?

Microsoft-hosted agents are temporary Microsoft-managed VMs with
preinstalled tooling. Self-hosted agents are infrastructure you manage
and customize, useful for private networks, specialized software or
persistent dependencies.

### 53. What is an agent pool?

An agent pool is a collection of agents from which Azure DevOps selects
an eligible agent to execute a job.

### 54. What are agent capabilities and demands?

Capabilities describe software/properties available on self-hosted
agents. Demands require matching capabilities before a job is assigned.

### 55. When would you use a self-hosted agent?

When deployments require private network access, custom software,
specialized hardware, controlled images, large caches or compliance
requirements not satisfied by hosted agents.

### 56. How do you secure a self-hosted agent?

Use dedicated least-privilege identities, network segmentation,
restricted pool permissions, patched hardened images, protected secrets,
isolated workspaces and preferably ephemeral agents for sensitive
workloads.

### 57. What is an ephemeral agent?

An agent created for a job and destroyed afterward. It reduces state
leakage, configuration drift and cross-job contamination.

### 58. How do you troubleshoot an offline agent?

Check the agent service/process, network/DNS/proxy access to Azure
DevOps, credentials/registration, machine resources and agent diagnostic
logs; restart or reconfigure only after identifying the cause.

### 59. How do you scale self-hosted agents?

Use VM Scale Sets, Managed DevOps Pools or an autoscaling/containerized
agent architecture so capacity increases/decreases according to
workload.

### 60. What are parallel jobs?

Parallel jobs determine how many pipeline jobs can execute concurrently.
Actual concurrency also depends on available eligible agents.

## Variables, Parameters and Secrets

### 61. What are pipeline variables?

Named values used by pipeline stages, jobs and tasks for configuration
such as environment, version or paths.

### 62. What are predefined/system variables?

Variables automatically supplied by Azure Pipelines,
e.g. `Build.BuildId`, `Build.SourceBranch` and `System.TeamProject`.

### 63. What is a variable group?

A reusable collection of variables managed in Azure DevOps Library and
shared across pipelines. Variable groups can also link to Azure Key
Vault.

### 64. What is a secret variable?

A variable marked secret so Azure DevOps masks its value in normal logs
and handles it as sensitive data.

### 65. How do you integrate Azure Key Vault with Azure Pipelines?

Create an appropriately scoped Azure service connection, grant it access
to the required Key Vault secrets, then use a Key Vault-linked variable
group or `AzureKeyVault` task to retrieve secrets at runtime.

### 66. Can variables be changed during pipeline execution?

Yes. A task/script can set variables using Azure Pipelines logging
commands. Output variables can expose selected values to dependent
jobs/stages.

### 67. What are output variables?

Variables generated by one step/job/stage and explicitly exposed for
consumption by later dependent execution units.

### 68. How do you set a variable from a script?

Example:

``` bash
echo "##vso[task.setvariable variable=releaseVersion]1.2.3"
```

### 69. What is variable precedence?

When the same variable is defined at multiple scopes, the more local
applicable scope generally takes precedence. Template/runtime evaluation
timing also matters, so avoid redefining the same name unnecessarily.

### 70. How do you prevent secrets from appearing in logs?

Use secret variables/Key Vault, never echo secrets, avoid command-line
arguments when tools expose them, mask additional sensitive values where
required, restrict debug logging and permissions, and rotate any exposed
credential immediately.

## Artifacts

### 71. What is an artifact in Azure DevOps?

A pipeline artifact is an output produced by a build for later
consumption, such as binaries, packages, manifests or deployment
bundles.

### 72. Pipeline Artifacts vs Build Artifacts?

Pipeline Artifacts are the modern optimized artifact mechanism for Azure
Pipelines. Build Artifacts are the older mechanism and remain useful for
legacy scenarios.

### 73. What is Azure Artifacts?

Azure Artifacts is a package-management service for hosting and sharing
packages such as NuGet, npm, Maven, Python and Universal Packages
through feeds.

### 74. What is an Azure Artifacts feed?

A feed is a secured package repository in Azure Artifacts used to
publish, version and consume packages.

### 75. How do you publish and download a pipeline artifact?

Use `publish`/`PublishPipelineArtifact` to publish and
`download`/`DownloadPipelineArtifact` to retrieve it in later jobs or
stages.

### 76. Why should the same artifact be promoted across environments?

It guarantees that the exact binary tested in dev/QA/staging is what
reaches production, reducing environment drift and improving
traceability.

### 77. How do you version artifacts?

Use immutable semantic versions, build numbers, Git tags/commit SHAs or
package versions and retain metadata linking the artifact to the source
commit and pipeline run.

### 78. How do you secure artifacts and feeds?

Use least-privilege feed permissions, scoped identities, protected
service connections/tokens, upstream-source controls and
immutable/versioned packages; avoid embedding credentials in package
configuration.

## Environments, Approvals and Checks

### 79. What is an Azure DevOps Environment?

An Environment represents a logical deployment target such as dev, QA,
staging or production and records deployment history and associated
resources.

### 80. Why use environments?

They provide deployment traceability, environment-level security,
resource targeting and approvals/checks before deployments.

### 81. What is an approval?

An approval is a check requiring authorized users to approve or reject
progression before a stage consuming the protected resource proceeds.

### 82. What are approvals and checks?

Controls configured on protected resources such as Environments, service
connections or other supported resources. They can include approvals,
branch control, business hours, REST/Azure Function checks and exclusive
locks.

### 83. Environment approval vs ManualValidation task?

Environment approval is configured outside YAML on the protected
resource and gates access to it. `ManualValidation` is a pipeline task
that pauses an agentless/server job for manual action. Environment
checks are stronger for resource governance because pipeline authors
cannot simply modify the YAML to remove them.

### 84. What is branch control?

A resource check that restricts deployment to allowed/protected source
branches according to configured rules.

### 85. What is an exclusive lock check?

It prevents multiple pipeline runs from concurrently using a protected
resource in ways that could conflict, allowing controlled sequential
deployment.

### 86. How do you restrict production deployments?

Use a protected production Environment, environment RBAC,
approvals/checks, restricted service connections, branch control,
protected YAML/templates and least-privilege production identities.

### 87. How do you implement production approval in YAML?

Reference a protected production Environment from a deployment job.
Configure the approval/check on that Environment in Azure DevOps; the
YAML only consumes the Environment.

``` yaml
jobs:
- deployment: DeployProduction
  environment: production
  strategy:
    runOnce:
      deploy:
        steps:
        - script: ./deploy-prod.sh
```

### 88. How do you track deployment history?

Deployment jobs targeting Azure DevOps Environments automatically
provide environment deployment history showing pipeline/run and
deployment information.

## Real-Time / Senior-Level Scenarios

### 89. Explain an Azure DevOps pipeline you implemented end-to-end.

Developers work on feature branches and create PRs into protected
`main`. PR policies run build, unit tests and security scans. After
merge, the CI pipeline builds once, creates a versioned immutable
artifact/container image and publishes it. CD promotes the same version
through dev, QA and staging with automated tests. Production uses a
protected Environment with approvals/checks and a least-privilege
service connection. Deployment uses rolling/canary/blue-green strategy,
followed by health checks and monitoring. Failure triggers controlled
rollback to the previous known-good version.

### 90. A production deployment failed. How do you troubleshoot it?

Check the failed stage/job/task and logs first. Validate the exact
artifact/version, variables/secrets, service connection, agent,
permissions, target connectivity and deployment command. Check
target-platform events/logs and health probes. Stop further rollout,
restore the previous known-good version if customer impact exists, then
perform root-cause analysis.

### 91. Deployment succeeded but the application is not working. What do you check?

Confirm the deployed version, process/pod health, application logs,
configuration and secrets, database/dependency connectivity, DNS,
firewall/network policies, load-balancer health probes, certificates,
ports, resource limits and monitoring telemetry. A successful deployment
task only proves that the deployment command completed, not that the
application is healthy.

### 92. How do you implement rollback?

Keep immutable versioned artifacts/images and the previous known-good
version. If post-deployment health checks fail, redeploy or switch
traffic back to that version. Database changes require separately
designed backward-compatible migration/rollback strategy.

### 93. How do you implement Blue-Green deployment?

Maintain Blue and Green environments. Deploy the new version to the
inactive environment, run health/integration tests, switch production
traffic to it, monitor, and retain the old environment temporarily for
rapid rollback.

### 94. How do you implement Canary deployment?

Deploy the new version to a small subset or percentage of traffic,
validate health/error/latency/business metrics, progressively increase
exposure and stop/rollback if thresholds fail.

### 95. How do you deploy to AKS from Azure DevOps?

Build the application, build/tag the container, push it to ACR,
publish/version Kubernetes or Helm manifests, authenticate through a
least-privilege Azure/Kubernetes service connection, deploy to AKS, wait
for rollout and validate health. Production should use protected
Environments and approvals.

### 96. How do you integrate Terraform with Azure DevOps?

Run formatting/validation and security checks, initialize a remote
backend, generate a plan, publish/review the plan, require approval for
production and execute `terraform apply` with a
federated/least-privilege identity. Keep state in a protected remote
backend with locking and access controls.

### 97. How do you integrate Ansible with Azure DevOps?

Run Ansible from a suitable pipeline agent, install pinned Ansible
dependencies, validate/lint playbooks, retrieve secrets securely, select
the correct inventory and run `ansible-playbook`. Use protected
production Environments/approvals and retain execution logs.

### 98. How do you integrate security scanning into the pipeline?

PR/CI can include secret scanning, SAST and SCA; container builds can
include image scanning; infrastructure pipelines can include IaC
scanning; deployed test environments can include DAST/API tests. Define
risk-based quality gates so unacceptable findings fail promotion while
exceptions require documented approval.

### 99. How do you design Azure DevOps for dev, QA, staging and production?

Build once and create an immutable artifact. Use environment-specific
configuration/secrets outside the artifact. Promote the same artifact
sequentially through protected Environments, execute automated tests at
each stage and require stronger approvals/checks and identities as the
pipeline approaches production.

### 100. How do you make an Azure DevOps pipeline enterprise-ready?

Use pipeline-as-code, reusable governed templates, protected
repositories/branches, immutable artifacts, isolated environments,
least-privilege federated service connections, external secret
management, dedicated/ephemeral agents where needed, automated
testing/security gates, approvals/checks, deployment strategies, health
checks, rollback, observability, auditability and end-to-end
work-item/source/artifact/deployment traceability.

------------------------------------------------------------------------

# End-to-End Reference Architecture

``` text
Azure Boards
    |
    | Requirement / Story / Task
    v
Azure Repos
    |
    | Feature Branch
    v
Pull Request
    |
    +--> Required Reviewers
    +--> Branch Policies
    +--> Build Validation
    +--> Unit Tests
    +--> Security Checks
    |
    v
Protected Main Branch
    |
    v
CI Pipeline
    |
    +--> Checkout
    +--> Restore
    +--> Build
    +--> Unit Tests
    +--> SAST / SCA / Secret Scan
    +--> Package / Container Build
    |
    v
Immutable Versioned Artifact
    |
    +----------> DEV
                    |
                    v
               Integration Tests
                    |
                    v
                   QA
                    |
                    v
               Automated Tests
                    |
                    v
                STAGING
                    |
                    v
          Production Environment
                    |
              Approvals / Checks
                    |
                    v
              PRODUCTION
                    |
          Rolling / Canary / Blue-Green
                    |
                    v
               Health Check
                    |
                    v
               Monitoring
                    |
             +------+------+
             |             |
          Success       Failure
                           |
                           v
                        Rollback
```

## Senior Interview Summary

A strong Azure DevOps design should demonstrate:

-   Git-based source control with protected branches and PR validation.
-   Traceability through Azure Boards.
-   YAML pipeline-as-code.
-   Build once and promote the same immutable artifact.
-   Reusable templates instead of duplicated pipelines.
-   Microsoft-hosted or secured self-hosted/ephemeral agents.
-   Variables for configuration and Key Vault/secret variables for
    secrets.
-   Least-privilege service connections, preferably workload identity
    federation.
-   Separate dev, QA, staging and production Environments.
-   Production approvals and resource checks outside editable pipeline
    YAML.
-   Automated testing and security gates.
-   Rolling, Canary or Blue-Green deployment where appropriate.
-   Automated health verification and tested rollback.
-   Central logging, monitoring, auditing and deployment traceability.
