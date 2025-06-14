Consolidated Azure DevOps and Azure Interview Questions
This document consolidates scenario-based and conceptual interview questions extracted from Azure DevOps (Parts 1–3) and Azure Zero to Hero (Episode 8) video transcripts. It is divided into two sections: Azure DevOps Interview Questions (20 questions) and Azure Interview Questions (9 questions), covering practical Azure DevOps workflows and Azure cloud concepts, respectively. Each question includes its context, key points to address, and a structured answer for clarity and brevity.

Azure DevOps Interview Questions
Part 1: Initial Scenarios
Question 1: How to Push Specific Commits from a Develop Branch to a Release Branch in Azure DevOps?
Context: There are 50 commits in the develop branch, but only 5 specific commits need to be pushed to the release branch for production deployment.
Key Points:

Explain Git cherry-picking concept and its use.
Describe cherry-picking in Azure DevOps UI.
Highlight why a pull request (PR) alone is insufficient.

Answer:

Method:
Navigate to Azure Repos > select repository > Develop branch**.
Identify the 5 commits in the commit history.
For each commit, use Cherry-pick option, targeting the release branch.
Azure DevOps creates a temporary branch and PR for each commit; approve and merge via PR.


Why Not PR?: A PR from develop to release merges all 50 commits, not selective.
Alternative: Cherry-picking ensures only chosen commits are applied, maintaining a clean release branch.
Command: git cherry-pick <commit-id> locally.


Question 2: How to Push Multiple Local Commits as a Single Commit to a Remote Develop Branch?
Context: Developer Ram has 100 local commits and needs to push them as one commit to the remote develop branch to avoid a messy history.
Key Points:

Explain Git squashing purpose. and its purpose.
Describe squashing via Azure PR.
Highlight impact on branch history.

Answer:

Method:
Push the local branch (e.g., user-story-1234) to Azure Repos.
Create a PR from this branch to develop.
During PR completion, select Squash commit to merge 100 commits into a single commit (e.g., “Test commit squash”).
Approve and complete the PR.


Outcome: Develop branch history remains clean with one commit containing all changes.
Alternative: Use git rebase -i HEAD~100 locally to squash commits before pushing.


Question 3: How Can a Developer Handle Uncommitted Changes to Accommodate an Emergency Change Without Losing Work?
Context: Developer Ram has uncommitted changes but needs to clear his working directory for an emergency bug fix without losing work.
Key Points:

Explain Git stash purpose. and its use.
Describe: stashing and retrieving changes locally.
Note: Azure DevOps UI limitation.

Answer:

Method:
Run git status to confirm uncommitted changes.
Use git stash to save changes, clearing the working directory.
Verify with git status that directory is clean.
Complete the emergency change and commit/push.
Restore changes with git stash pop (view stashes via git stash list).
Avoid git stash drop unless intentionally deleting stashes.


Note: Azure DevOps lacks a UI for stashing; use Git commands locally.
Outcome: Stashing preserves uncommitted changes, allowing safe handling of emergency tasks.


Question 4: How Can a Developer Consume Packages from Azure Artifacts Locally for a Project Build?
Context: Developer Ram’s .NET module is in Azure Artifacts; Developer Lakshman needs to consume it locally for his project build.
Key Points:

Explain Azure Artifacts feed access.
Describe Visual Studio configuration.
Highlight alternative methods (e.g., NuGet console).

Answer:

Method:
Verify access to the feed (e.g., “web-app-feed”) in Artifacts.
In Azure DevOps, go to feed > Connect to Feed > Visual Studio.
Copy the feed URL and add it to Visual Studio (Tools > NuGet Package Manager > Package Sources).
In Visual Studio’s NuGet Package Manager, select the feed, search for the package (e.g., “shiva-web-app”), and install it.
Alternatively, use the Package Manager Console with the provided PowerShell command.


Outcome: Lakshman can build his project locally, resolving dependencies from Azure Artifacts.


Question 5: How to Automate the Build and Release Process for a .NET Core Application Deployed to Azure Web App Using Infrastructure as Code (IaC)?
Context: Developer Ram wants to automate the build and release of a .NET Core application to an Azure Web App using IaC (e.g., ARM templates).
Key Points:

Outline CI/CD pipeline using YAML.
Describe build pipeline tasks (e.g., build, analytics).
Explain release pipeline tasks (e.g., IaC deployment).

Answer:

Prerequisites:
Application builds locally (e.g., via MSBuild).
Service connection for Azure access.


Steps:
Create a repository in Azure Repos with source code and IaC (e.g., ARM templates).
Build Pipeline (YAML):
Use DotNetCoreCLI@2 or VSBuild@1 to build.
Run code analytics (e.g., SonarQube) and tests for coverage.
Copy IaC files to staging with CopyFiles@2.
Publish artifacts with PublishBuildArtifacts@1.


Release Pipeline (Classic):
Use AzureResourceManagerTemplateDeployment@3 to deploy the Web App via ARM.
Use AzureWebApp@1 to deploy the application.
Trigger release after successful build.




Outcome: YAML-based CI/CD automates build, IaC provisioning, and deployment to Azure Web App.


Question 6: How to Automate the Build and Release Process for a .NET Core Microservice Application Deployed to Azure Kubernetes Service (AKS) Using Pipeline as Code?
Context: Developer Lakshman wants to automate the build and release of a .NET Core microservice to AKS using YAML pipelines.
Key Points:

Outline prerequisites (e.g., AKS, ACR).
Describe build pipeline tasks (e.g., Docker image).
Explain release pipeline tasks (e.g., AKS deployment).

Answer:

Prerequisites:
AKS cluster and Azure Container Registry (ACR).
Service connections for AKS and ACR.


Steps:
Create a repository in Azure Repos with source code, Dockerfile, and Kubernetes manifests (deployment.yaml, service.yaml).
Build Pipeline (YAML):
Build with DotNetCoreCLI@2.
Run optional analytics/tests.
Build/push Docker image to ACR with Docker@2.
Publish manifests with PublishBuildArtifacts@1.


Deploy Stage (YAML):
Pull image from ACR.
Deploy to AKS with Kubernetes@1, applying manifests.




Outcome: YAML pipeline automates microservice build, containerization, and AKS deployment, creating pods and services.


Part 2: Additional Scenarios
Question 7: How to Ensure Only the Relevant Build Pipeline Triggers for Changes in Specific Project Folders Within a Single Repository?
Context: Repository XYZ has multiple project folders, each with its own build pipeline. Only the pipeline for the changed folder should trigger on commits to the develop branch.
Key Points:

Explain issue of multiple pipeline triggers.
Describe path filtration in Azure DevOps.
Highlight UI and YAML methods.

Answer:

Issue: Commits to develop trigger all pipelines, causing inefficiency.
Solution:
UI Method:
Go to Pipelines > select pipeline > Edit > Triggers > Override YAML CI trigger.
Add path filter (e.g., include: /Shiva-Disco-Web-App/*).
Save to restrict triggers to the folder.


YAML Method:
Edit azure-pipelines.yml:trigger:
  branches:
    include:
    - develop
  paths:
    include:
    - Shiva-Disco-Web-App/*


Commit to repository.




Outcome: Path filtration ensures only relevant pipelines run, optimizing resources.


Question 8: How to Configure Sequential Build Pipelines with Dependencies in Azure DevOps?
Context: Pipeline XYZ should run only after pipeline ABC completes successfully.
Key Points:

Explain build completion triggers.
Describe UI and YAML configuration.
Demonstrate automation.

Answer:

Solution:
UI Method:
Go to Pipelines > XYZ pipeline > Edit > Triggers > Build completion.
Add ABC pipeline (e.g., “shiva-web-app-feed”) as a trigger for the develop branch.
Save.


YAML Method:
Edit XYZ’s azure-pipelines.yml:resources:
  pipelines:
  - pipeline: abc
    source: shiva-web-app-feed
    trigger: true


Commit to repository.




Test: Run ABC; XYZ triggers automatically on success.
Outcome: Build completion triggers automate sequential, dependent pipelines.


Question 9: How to Restrict Developers from Pushing Messy Commit Histories to Remote Branches Like Develop or Release?
Context: Developers create feature branches with many commits (e.g., 100–200). Prevent messy histories in develop/release branches.
Key Points:

Explain messy commit issue.
Describe branch policies for squash merge.
Highlight configuration.

Answer:

Solution:
Go to Repos > Branches > select branch (e.g., develop) > More options > Branch policies.
Enable Limit merge types and select Squash merge only.
Save.


Impact: PRs from feature branches to develop/release allow only squash merge, condensing commits into one.
Optional Policies: Require reviewers or linked work items.
Outcome: Branch policies enforce clean histories via squash merge.


Question 10: How to Define and Reuse Commonly Used Pipeline Variables Across Multiple Pipelines?
Context: Common variables (e.g., environment, resource group) are used across multiple pipelines. Define them once for reuse.
Key Points:

Explain inefficiency of manual variable definition.
Describe variable groups.
Highlight Azure Key Vault integration.

Answer:

Solution:
Go to Pipelines > Library > Variable groups > + Variable group.
Name it (e.g., “CommonVariables”) and add variables (e.g., environment: dev).
Optionally link to Azure Key Vault for secrets (e.g., database passwords).
In each pipeline, go to Edit > Variables > Link variable group > select group.


Usage: Access variables (e.g., $(environment)) in pipelines; use AzureKeyVault@2 for secrets.
Outcome: Variable groups centralize management, reduce duplication, and enhance security.


Question 11: How to Define and Reuse Commonly Used Pipeline Tasks Across Multiple Build or Release Pipelines?
Context: Multiple pipelines share common tasks (e.g., .NET build steps). Define them once for reuse.
Key Points:

Explain benefit of centralized tasks.
Describe task groups.
Note classic pipeline limitation.

Answer:

Solution:
In a pipeline, select tasks (e.g., NuGet restore, build) > right-click > Create task group.
Name it (e.g., “ASP.NET-Build”) and save.
In other pipelines (classic), add the task group via + > search for “ASP.NET-Build”.
Update the task group in Pipelines > Task groups; changes propagate.


Limitation: Task groups are classic-only; use YAML templates for YAML pipelines.
Outcome: Task groups simplify maintenance and ensure consistency in classic pipelines.


Part 3: Advanced Scenarios
Question 12: How to Add Custom Fields or New Work Items in Azure DevOps?
Context: Add a custom field (e.g., “Current Release Date”) to a User Story or create a new work item type beyond default processes.
Key Points:

Explain default process limitation.
Describe inheritance process.
Outline customization steps.

Answer:

Solution:
Go to Organization Settings > Boards > Process.
Select a process (e.g., Agile) > Create inherited process (e.g., “Agile Copy”).
In the new process, edit User Story > Planning > New Field (e.g., “Current Release Date”, type: Date/Time) or create a new work item (e.g., “Release”).
Create a new project using “Agile Copy” to apply changes.


Verification: In the new project, confirm the custom field appears in User Story.
Outcome: Inheritance enables tailored work items for project needs.


Question 13: Why Are Some Work Items (e.g., User Stories) Not Visible on the Boards Tab, and How to Fix It?
Context: Only some User Stories appear on the Kanban board due to different area paths.
Key Points:

Explain area path role.
Describe team configuration for sub-areas.
Highlight visibility impact.

Answer:

Issue: Only work items in the default area path (e.g., “Azure-DevOps-Mela-3”) are visible; sub-areas (e.g., “Production”) are excluded.
Solution:
Go to Project Settings > Boards > Team configuration > Areas.
Enable Include sub-areas for the default area.
Save.


Verification: All User Stories, including sub-areas, appear on the Kanban board.
Outcome: Including sub-areas ensures comprehensive work item visibility.


Question 14: How to Enable Event-Driven Notifications in Azure DevOps and Send Them to Messaging Apps Like Slack?
Context: Send pipeline status updates (e.g., build success) to a Slack channel.
Key Points:

Explain service hooks model.
Describe Slack integration setup.
Outline testing steps.

Answer:

Setup:
Create a Slack workspace and channel (e.g., “azure-devops”).
Create a Slack app at api.slack.com > enable Incoming Webhooks > add webhook for the channel > copy URL.
In Azure DevOps, go to Project Settings > Service hooks > Create subscription > select Slack > Build completed > paste webhook URL > test > save.


Test: Run a pipeline; verify Slack notification (e.g., “Build #20221122.1 succeeded”).
Outcome: Service hooks enable real-time notifications, improving team monitoring.


Question 15: How to Enforce a Policy to Automatically Include a Group as Pull Request Approvers?
Context: Automatically add a group (e.g., “Tester”) as PR approvers for the main branch, requiring multiple approvals.
Key Points:

Explain branch policies for approvals.
Describe group configuration.
Outline testing.

Answer:

Solution:
Go to Repos > Branches > main > More options > Branch policies.
Enable Require minimum reviewers (e.g., 2).
Add the “Tester” group under Automatically include reviewers.
Save.


Test: Create a PR to main; verify the group is added, requiring 2 approvals.
Outcome: Group-based approvals ensure consistent code review.


Question 16: What Is the Difference Between Environments and Deployment Groups in Azure DevOps Pipelines?
Context: Compare environments and deployment groups, including use cases and limitations.
Key Points:

Define deployment groups and environments.
Compare features and pipeline support.
Highlight environment capabilities.

Answer:

Deployment Groups:
Logical set of agent-installed machines (e.g., VMs) for deployment.
Use Case: Deploy to physical environments (e.g., test) in classic pipelines.
Limitation: Classic-only; no additional agent pool needed.


Environments:
Collection of resources (e.g., Kubernetes, VMs) for YAML pipeline deployments.
Features: Deployment history, commit traceability, resource health diagnostics, permissions.
Use Case: Cloud-native deployments in YAML pipelines.
Limitation: Supports only Kubernetes/VMs; YAML-only.


Outcome: Environments suit modern YAML workflows; deployment groups are for classic pipelines.


Question 17: What Are the Different Types of Deployment Strategies in Azure DevOps?
Context: Describe Azure DevOps deployment strategies.
Key Points:

List strategies: Run Once, Rolling, Canary.
Explain use cases.

Answer:

Run Once:
Executes all hooks (pre-deploy, deploy, etc.) once.
Use Case: Simple deployments (e.g., single environment web app).


Rolling:
Replaces old version instances with new ones iteratively.
Use Case: Upgrades without downtime (e.g., v1.0 to v1.1).


Canary:
Deploys to a small server subset first for testing.
Use Case: Risk mitigation (e.g., test on 2/10 servers).




Outcome: Strategies support varying deployment needs, from simple to cautious.


Question 18: What Is the Maximum Size of Commits in Azure Repos, and How to Restrict Push Size?
Context: Determine commit size limits and how to enforce restrictions.
Key Points:

State default limit.
Explain pipeline impact.
Describe restriction configuration.

Answer:

Limit: Azure Repos allows 5 GB per push.
Impact: Large commits slow pipelines due to repository cloning.
Restriction:
Go to Project Settings > Repos > Repositories > select repository > Policies > Maximum file size.
Set limit (e.g., 10 MB) and save.


Outcome: Size restrictions improve pipeline performance.


Question 19: Can a Recently Deleted Project in Azure DevOps Be Recovered, and How?
Context: Recover an accidentally deleted project.
Key Points:

State recovery window and permissions.
Describe restoration steps.
Highlight verification.

Answer:

Feasibility: Recoverable within 28 days by organization owners or Project Collection Administrators.
Steps:
Go to Organization Settings > Projects > View recently deleted projects.
Select project (e.g., “Test”) > Restore.


Verification: Confirm project and artifacts (e.g., pipelines) are restored.
Outcome: Recovery ensures data continuity within 28 days.


Question 20: What Is the Difference Between Azure DevOps Services and Azure DevOps Server?
Context: Clarify the distinction between Services and Server.
Key Points:

Define Services (cloud) and Server (on-premises).
Highlight deployment, accessibility, use cases.

Answer:

Azure DevOps Services:
Cloud-hosted, scalable platform with 99.9% SLA.
Globally accessible via Microsoft account.
Use Case: Teams needing managed DevOps.


Azure DevOps Server:
On-premises, SQL Server-based, keeps data in-network.
Supports SQL Server Reporting Services.
Use Case: Organizations requiring data control.


Differences:
Deployment: Cloud vs. on-premises.
Maintenance: Managed vs. local.


Outcome: Services offer flexibility; Server ensures data control.


Azure Interview Questions (Zero to Hero, Episode 8)
Question 1: What Is the Difference Between Network Security Group (NSG) and Application Security Group (ASG)?
Context: Explain NSG vs. ASG, avoiding AWS comparisons.
Key Points:

Clarify complementary roles.
Describe traffic control.
Provide example.

Answer:

NSG: Controls traffic for subnets/VMs using IP/port rules.
ASG: Groups VMs for simplified NSG rule application.
Scenario: Allow billing/catalog VMs (in an ASG) to access a database VM, but block login/logout VMs. Use ASG in NSG’s inbound rule instead of listing IPs.
Outcome: NSGs and ASGs work together for scalable traffic management.
Avoid: AWS security group/NACL comparisons.


Question 2: Can You Block Access to a Virtual Machine from a Particular Subnet?
Context: Block a VM’s access from a specific subnet within the same VNet.
Key Points:

Explain default VNet access.
Describe deny rule creation.
Highlight priority.

Answer:

Default: VNet allows intra-VNet traffic via “AllowVnetInbound” (priority 65000).
Solution:
Add NSG inbound rule: Deny, source = subnet CIDR, priority < 65000 (e.g., 300).
Save rule.


Outcome: Deny rule overrides default, blocking subnet access.


Question 3: Are Azure NSGs Stateful or Stateless?
Context: Determine NSG state behavior and implications.
Key Points:

Define stateful/stateless.
Explain NSG behavior.
Contrast stateless systems.

Answer:

Stateful: NSGs allow return traffic for permitted inbound requests without explicit outbound rules.
Example: Allow port 80 inbound for a Jenkins VM; responses are permitted automatically.
Contrast: Stateless (e.g., AWS NACLs) requires inbound/outbound rules.
Outcome: Stateful NSGs simplify configuration.


Question 4: What Is the Difference Between Azure Firewall and NSG?
Context: Compare Firewall and NSG scope and use.
Key Points:

Define scope.
Explain use cases.
Highlight differences.

Answer:

Firewall: VNet-level, manages inbound/outbound traffic with NAT, application rules.
NSG: Subnet/VM-level, controls traffic via IP/port rules.
Differences: Firewall is centralized (VNet); NSG is granular (subnet/VM).
Outcome: Use Firewall for VNet protection, NSG for resource-specific control.


Question 5: What Are the Advantages of Resource Groups in Azure?
Context: Explain resource group benefits beyond mandatory use.
Key Points:

List advantages.
Provide examples.
Mention best practices.

Answer:

Advantages:
Organization: Group project resources (e.g., Nike-Sales-Dev).
Lifecycle: Delete group to remove all resources.
RBAC: Assign access to group (e.g., for DevOps).
Cost: Track project costs.
Tagging/Templates: Categorize or deploy consistently.
Locking: Prevent accidental changes.


Best Practice: Group by environment (e.g., Dev, Staging, Prod).
Outcome: Resource groups enhance management and security.


Question 6: What Is the Difference Between Azure User Data and Custom Data?
Context: Compare user data and custom data, avoiding AWS confusion.
Key Points:

Define user/custom data.
Highlight persistence.
Clarify AWS comparison.

Answer:

Custom Data: One-time scripts for VM creation (e.g., install Nginx).
User Data: Persistent, updatable scripts, executable on reboots.
Differences: Custom data is single-use; user data is lifecycle-long.
AWS: AWS user data = Azure custom data; Azure user data is unique.
Outcome: User data supports ongoing VM configuration.


Question 7: What Is the Difference Between Azure Application Gateway and Azure Load Balancer?
Context: Compare Application Gateway and Load Balancer by OSI layer.
Key Points:

Define layers.
Explain use cases.
Highlight features.

Answer:

Application Gateway: Layer 7 (HTTP), supports host/path-based routing, WAF.
Use Case: Web tier routing (e.g., “/login” to specific servers).


Load Balancer: Layer 4 (TCP/UDP), supports IP/port routing.
Use Case: Backend tier distribution (e.g., database VMs).


Outcome: Application Gateway for web; Load Balancer for backend.


Question 8: In an Ideal Azure Networking Setup with an Application in a Web Subnet, Explain the Traffic Flow to the Application.
Context: Describe user access to a web application in an ideal VNet.
Key Points:

Define VNet setup.
Explain traffic flow.
Include security/DevOps access.

Answer:

Setup: VNet with web subnet, firewall subnet, Application Gateway, NSG, Bastion, Azure DNS.
Traffic Flow:
User requests “www.example.com”; DNS resolves to firewall IP.
Firewall NATs to Application Gateway; blocks unauthorized traffic.
Application Gateway routes HTTP to web VMs; NSG allows legitimate traffic.
VMs respond via same path.


DevOps: Use Bastion for secure SSH to private VMs.
Security: Firewall, NSG, WAF protect against threats.
Outcome: Secure, scalable access to the application.


Question 9: What Is the Purpose of Azure Bastion, and What Are Its Advantages?
Context: Explain Bastion’s role and benefits for VM access.
Key Points:

Define purpose.
List advantages.
Provide use case.

Answer:

Purpose: Secure SSH/RDP access to private VMs via Azure Portal.
Advantages:
Eliminates public IPs.
Portal-based access with RBAC, MFA.
Audit/monitoring for compliance.


Use Case: DevOps SSH to a web VM securely.
Outcome: Bastion enhances security and simplifies access.


Notes

Source: Questions from Azure DevOps (Parts 1–3) and Azure Zero to Hero (Episode 8).
Focus: Practical scenarios and concepts for Azure DevOps (Repos, Pipelines, Boards) and Azure (networking, VMs, security).
Resources: Original videos reference GitHub/Telegram for notes (not included here). Contact speaker for links (e.g., devopsmela@gmail.com for DevOps; Telegram for Azure).
Feedback: Speakers invite comments for additional topics (e.g., Terraform, Kubernetes).
Date: Consolidated as of June 14, 2025.

For further questions or topics, provide additional transcripts or specify requirements.


1)	What exactly have you done in your current project?
2)	How many pipelines have you created?
3)	How many environments do you have in your project?
4)	While deployment, how exactly do you maintain the approval process
5)	Do you know azure board and have you worked on it
6)	How is your team managing the assigned work
7)	What is the way to analyze the static code?
8)	Process to deploy a .net app in azure devops
9)	Process to deploy a angular app in azure devops
10)	What is service connection and how can we crate that?
11)	Diff between service connection and service principe
12)	Aware of azure resources such as App services and function apps?’
13)	What is IAC?

