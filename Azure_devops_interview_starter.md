# Azure DevOps / DevOps Interview – Top 10 Scenario-Based Questions & Answers

---

## Q1. Explain an Azure DevOps pipeline you implemented end-to-end.

### Answer:

In my project, we used Azure DevOps for source-code management and CI/CD. The complete flow was:

Developer
   ↓
Feature Branch
   ↓
Azure Repos
   ↓
Pull Request
   ↓
Code Review + Branch Policies
   ↓
Merge to Main
   ↓
CI Pipeline
   ├── Checkout
   ├── Restore Dependencies
   ├── Compile/Build
   ├── Unit Tests
   ├── Code Quality/Security Scan
   └── Publish Artifact
            ↓
       CD Pipeline
            ↓
          DEV
            ↓
           QA
            ↓
          UAT
            ↓
    Approval / Checks
            ↓
       Production
            ↓
 AppDynamics + Splunk

I generally explain the implementation in five parts.

### 1. Source Code Management

We maintained source code in Azure Repos using Git.

Developers worked on feature branches:

feature/*
bugfix/*
hotfix/*

They created Pull Requests to merge changes into the main branch.

We configured branch policies such as:

- Minimum reviewers
- Build validation
- Required PR approval
- Comment resolution
- Restricted direct pushes to main

This ensured that code could not directly enter the production branch without validation.

### 2. Continuous Integration

Once the PR was merged, the CI pipeline was automatically triggered.

The pipeline performed:

1. Checkout source code
2. Restore dependencies
3. Compile/build application
4. Execute unit tests
5. Run code-quality/security checks
6. Package the application
7. Publish the artifact

For example:

Source Code
   ↓
Build
   ↓
Unit Test
   ↓
Security/Quality Checks
   ↓
Package
   ↓
Artifact

The important principle was:

"Build once and promote the same artifact across environments."

We did not rebuild the application separately for DEV, QA, UAT and Production.

### 3. Continuous Deployment

The published artifact was consumed by deployment stages.

Artifact
   ↓
DEV
   ↓
QA
   ↓
UAT
   ↓
Production

Environment-specific configuration was managed separately from application binaries.

Production deployment had approvals/checks so that deployment could not happen without authorization.

### 4. Secrets

Passwords, tokens and credentials were never hardcoded in:

- Git repositories
- YAML files
- scripts

We stored sensitive values using Azure DevOps secret variables/variable groups and, where applicable, Azure Key Vault.

### 5. Monitoring

After production deployment, we monitored the application using AppDynamics and Splunk.

AppDynamics was used primarily for:

- Application response time
- Business transactions
- Error rate
- JVM/runtime metrics
- Backend dependencies

Splunk was used for:

- Application logs
- Exceptions
- HTTP errors
- Database errors
- Troubleshooting

If the deployment introduced a critical issue, we followed the rollback procedure and deployed the last known-good artifact.

### Short Interview Answer

"In my project, developers committed code to feature branches in Azure Repos and raised pull requests. Branch policies enforced reviews and build validation before merging to main.

Once merged, the CI pipeline automatically checked out the code, restored dependencies, built the application, ran unit tests and security/quality checks, and published a versioned artifact.

The CD stages promoted the same artifact through DEV, QA and UAT. Production was protected using approvals and environment checks.

Secrets were maintained outside the YAML using secret variables, variable groups or Azure Key Vault.

After deployment, we validated application health using AppDynamics and Splunk. If there was a critical issue, we could roll back to the previously validated artifact."

---

# Q2. Write/explain a multi-stage Azure DevOps YAML pipeline.

### Answer:

A multi-stage pipeline can contain separate stages for:

Build
Test
Deploy DEV
Deploy QA
Deploy UAT
Deploy PROD

Example:

```yaml
trigger:
  branches:
    include:
      - main

variables:
  buildConfiguration: 'Release'

stages:

# -------------------------
# BUILD
# -------------------------

- stage: Build
  displayName: Build Application

  jobs:
  - job: BuildJob

    pool:
      vmImage: ubuntu-latest

    steps:

    - checkout: self

    - script: |
        echo "Restoring dependencies"
      displayName: Restore Dependencies

    - script: |
        echo "Building application"
      displayName: Build

    - script: |
        echo "Running unit tests"
      displayName: Unit Tests

    - task: PublishPipelineArtifact@1
      inputs:
        targetPath: '$(Build.SourcesDirectory)'
        artifact: 'application'
      displayName: Publish Artifact


# -------------------------
# DEV
# -------------------------

- stage: DeployDEV
  displayName: Deploy DEV

  dependsOn: Build

  jobs:

  - deployment: DeployDEV
    environment: DEV

    strategy:
      runOnce:
        deploy:

          steps:

          - download: current
            artifact: application

          - script: |
              echo "Deploying application to DEV"
            displayName: Deploy DEV


# -------------------------
# QA
# -------------------------

- stage: DeployQA
  displayName: Deploy QA

  dependsOn: DeployDEV

  jobs:

  - deployment: DeployQA
    environment: QA

    strategy:
      runOnce:
        deploy:

          steps:

          - download: current
            artifact: application

          - script: |
              echo "Deploying application to QA"
            displayName: Deploy QA


# -------------------------
# UAT
# -------------------------

- stage: DeployUAT
  displayName: Deploy UAT

  dependsOn: DeployQA

  jobs:

  - deployment: DeployUAT
    environment: UAT

    strategy:
      runOnce:
        deploy:

          steps:

          - download: current
            artifact: application

          - script: |
              echo "Deploying application to UAT"
            displayName: Deploy UAT


# -------------------------
# PRODUCTION
# -------------------------

- stage: DeployPROD
  displayName: Deploy Production

  dependsOn: DeployUAT

  condition: succeeded()

  jobs:

  - deployment: DeployPROD
    environment: PROD

    strategy:
      runOnce:
        deploy:

          steps:

          - download: current
            artifact: application

          - script: |
              echo "Deploying application to Production"
            displayName: Deploy Production
