# Terraform Interview Questions & Answers

## State Management & Collaboration:
1. How do you manage Terraform state across environments? 
2. How do you handle remote state locking in team setups? 
3. What’s your strategy to recover from a corrupted state file? 
4. How do you inspect/modify state without affecting infra?

## Modules & Reusability:
5. How do you build reusable Terraform modules across teams? 
6. How do you manage shared module versioning? 
7. How do you deal with module dependencies and nesting?

## Advanced Logic & Operations:
8. Difference between `count`, `for_each`, and `dynamic`. 
9. When would you use `create_before_destroy` lifecycle rules? 
10. Explain `terraform import` which you have used in any project . 
11. Monorepo vs Polyrepo Terraform strategy – pros & cons.

## Security & Secrets Management:
12. How do you secure secrets in Terraform without exposing them? 
13. How do you integrate Azure Key Vault/Vault with Terraform? 
14. How do you enforce RBAC for Terraform in CI/CD? 
15. Tools you use to ensure Terraform security compliance?

## CI/CD & Automation: 
16. How do you implement Terraform with GitOps? 
17. How do you handle `terraform plan`/`apply` in pipelines? 
18. What’s your approach to approval gates in prod applies?

## Debugging & Failures:
19. How do you troubleshoot apply failures across modules? 
20. How do you detect and resolve infra drift in Terraform? 
21. What’s your rollback strategy if an apply breaks midway?

---

# Index

## State Management & Collaboration
1. [How do you manage Terraform state across environments?](#q1-how-do-you-manage-terraform-state-across-environments)
2. [How do you handle remote state locking in team setups?](#q2-how-do-you-handle-remote-state-locking-in-team-setups)
3. [What’s your strategy to recover from a corrupted state file?](#q3-whats-your-strategy-to-recover-from-a-corrupted-state-file)
4. [How do you inspect/modify state without affecting infra?](#q4-how-do-you-inspectmodify-state-without-affecting-infra)

## Modules & Reusability
5. [How do you build reusable Terraform modules across teams?](#q5-how-do-you-build-reusable-terraform-modules-across-teams)
6. [How do you manage shared module versioning?](#q6-how-do-you-manage-shared-module-versioning)
7. [How do you deal with module dependencies and nesting?](#q7-how-do-you-deal-with-module-dependencies-and-nesting)

## Advanced Logic & Operations
8. [Difference between `count`, `for_each`, and `dynamic`.](#q8-difference-between-count-for_each-and-dynamic)
9. [When would you use `create_before_destroy` lifecycle rules?](#q9-when-would-you-use-create_before_destroy-lifecycle-rules)
10. [Explain `terraform import` which you have used in any project.](#q10-explain-terraform-import-which-you-have-used-in-any-project)
11. [Monorepo vs Polyrepo Terraform strategy – pros & cons.](#q11-monorepo-vs-polyrepo-terraform-strategy--pros--cons)

## Security & Secrets Management
12. [How do you secure secrets in Terraform without exposing them?](#q12-how-do-you-secure-secrets-in-terraform-without-exposing-them)
13. [How do you integrate Azure Key Vault/Vault with Terraform?](#q13-how-do-you-integrate-azure-key-vaultvault-with-terraform)
14. [How do you enforce RBAC for Terraform in CI/CD?](#q14-how-do-you-enforce-rbac-for-terraform-in-cicd)
15. [Tools you use to ensure Terraform security compliance?](#q15-tools-you-use-to-ensure-terraform-security-compliance)

## CI/CD & Automation
16. [How do you implement Terraform with GitOps?](#q16-how-do-you-implement-terraform-with-gitops)
17. [How do you handle `terraform plan`/`apply` in pipelines?](#q17-how-do-you-handle-terraform-planapply-in-pipelines)
18. [What’s your approach to approval gates in prod applies?](#q18-whats-your-approach-to-approval-gates-in-prod-applies)

## Debugging & Failures
19. [How do you troubleshoot apply failures across modules?](#q19-how-do-you-troubleshoot-apply-failures-across-modules)
20. [How do you detect and resolve infra drift in Terraform?](#q20-how-do-you-detect-and-resolve-infra-drift-in-terraform)
21. [What’s your rollback strategy if an apply breaks midway?](#q21-whats-your-rollback-strategy-if-an-apply-breaks-midway)

---

# Questions & Answers

<a id="q1-how-do-you-manage-terraform-state-across-environments"></a>
## 1. How do you manage Terraform state across environments?

I keep Terraform state isolated per environment. Dev, QA, staging, and production never share the same state file.

In Azure, I normally use an Azure Storage Account as the remote backend and use separate state keys such as:

```text
dev.terraform.tfstate
qa.terraform.tfstate
stage.terraform.tfstate
prod.terraform.tfstate
```

A typical backend configuration is:

```hcl
terraform {
  backend "azurerm" {}
}
```

Then the environment-specific backend configuration is supplied during initialization:

```bash
terraform init \
  -backend-config="resource_group_name=rg-tfstate" \
  -backend-config="storage_account_name=sttfstateprod" \
  -backend-config="container_name=tfstate" \
  -backend-config="key=prod.terraform.tfstate"
```

I also maintain separate `.tfvars` files:

```text
environments/
├── dev/
│   └── dev.tfvars
├── qa/
│   └── qa.tfvars
├── stage/
│   └── stage.tfvars
└── prod/
    └── prod.tfvars
```

For stronger production isolation, I may also use separate Azure subscriptions, storage accounts, service connections, and identities.

The key principle is:

```text
Same reusable Terraform code
        +
Different tfvars
        +
Different state
        +
Different credentials/subscriptions where required
```

This reduces blast radius and prevents changes in one environment from unintentionally affecting another.

**Interview summary:**  
I use remote state in Azure Blob Storage, maintain separate state per environment, protect access using RBAC and workload identities, enable versioning/soft delete, and dynamically select the backend key in CI/CD.

[Back to Index](#index)

---

<a id="q2-how-do-you-handle-remote-state-locking-in-team-setups"></a>
## 2. How do you handle remote state locking in team setups?

In a team environment, I use a remote backend that supports locking.

With the AzureRM backend, Azure Blob Storage uses blob leases to ensure only one Terraform operation can modify a specific state object at a time.

Example:

```text
Pipeline A
   |
terraform apply
   |
Acquire Blob Lease
   |
Modify Infrastructure
   |
Update State
   |
Release Lease
```

If Pipeline B targets the same state while Pipeline A is still running, Terraform cannot acquire the lock.

This prevents:

- Concurrent state writes
- State corruption
- Duplicate changes
- Lost state updates

I also use CI/CD concurrency controls so that only one deployment to a given environment runs at a time.

I don't rely only on backend locking.

My protection model is:

```text
Remote State Locking
        +
Pipeline Concurrency Control
        +
Separate State Per Environment
```

If a lock appears stale, I first confirm:

- No pipeline is still running
- No engineer is running Terraform
- No apply is still making infrastructure changes

Only then would I consider:

```bash
terraform force-unlock <LOCK_ID>
```

I never force-unlock casually because removing a valid lock while an apply is still running can result in multiple processes modifying the same state.

**Interview summary:**  
Azure Blob Storage provides locking through blob leases. I combine that with pipeline-level concurrency controls and only force-unlock after confirming the original Terraform process is no longer running.

[Back to Index](#index)

---

<a id="q3-whats-your-strategy-to-recover-from-a-corrupted-state-file"></a>
## 3. What’s your strategy to recover from a corrupted state file?

My first step is to stop all Terraform operations.

I do not run another `terraform apply` until I understand the state issue.

My recovery sequence is:

```text
Stop Terraform operations
        |
Backup current state
        |
Identify root cause
        |
Check backend versions
        |
Restore known-good state
        |
Reconcile with actual infrastructure
        |
terraform plan
        |
Resume deployments
```

If possible, I back up the current state:

```bash
terraform state pull > corrupted-state-backup.json
```

In Azure Blob Storage, I enable versioning and soft delete. If the current state is corrupted, I can restore the last known good blob version.

After recovery, I run:

```bash
terraform state list
terraform plan
```

I compare Terraform's view with the actual Azure infrastructure.

If a resource exists in Azure but is missing from state, I can import it:

```bash
terraform import azurerm_virtual_network.vnet <RESOURCE_ID>
```

I avoid manually editing `terraform.tfstate` unless absolutely necessary.

If the state is completely lost and no backup exists, I rebuild the state by importing existing infrastructure resource-by-resource and repeatedly validating with `terraform plan`.

**Interview summary:**  
Stop changes, back up the current state, restore the last known good backend version, import any missing resources, validate against real infrastructure with `terraform plan`, and only then resume deployments.

[Back to Index](#index)

---

<a id="q4-how-do-you-inspectmodify-state-without-affecting-infra"></a>
## 4. How do you inspect/modify state without affecting infra?

Terraform provides state-management commands that allow me to inspect or change Terraform's state mappings without directly modifying infrastructure.

To inspect resources:

```bash
terraform state list
```

To inspect a specific resource:

```bash
terraform state show azurerm_virtual_network.vnet
```

To download the current remote state:

```bash
terraform state pull
```

To move an existing resource to a new Terraform address:

```bash
terraform state mv \
  azurerm_resource_group.rg \
  module.platform.azurerm_resource_group.rg
```

This is useful during refactoring because it changes the state mapping rather than recreating the actual resource.

To remove a resource from Terraform management without deleting the infrastructure:

```bash
terraform state rm azurerm_storage_account.example
```

Important distinction:

```text
terraform destroy
    -> Deletes infrastructure

terraform state rm
    -> Removes the Terraform state mapping only
```

After any state modification, I always run:

```bash
terraform plan
```

I also take a state backup before state manipulation.

**Interview summary:**  
I use `terraform state list`, `state show`, `state pull`, `state mv`, and `state rm`. State commands change Terraform's knowledge/mapping of resources; they do not necessarily change the actual infrastructure. I always back up state and run `terraform plan` afterward.

[Back to Index](#index)

---

<a id="q5-how-do-you-build-reusable-terraform-modules-across-teams"></a>
## 5. How do you build reusable Terraform modules across teams?

I treat Terraform modules like reusable software components.

A good shared module should have:

- Clear inputs
- Clear outputs
- Sensible defaults
- Minimal hardcoding
- Validation rules
- Documentation
- Versioning
- Examples
- Automated tests
- Security defaults

Example:

```text
modules/
└── aks/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── versions.tf
    ├── README.md
    └── examples/
```

Instead of hardcoding:

```hcl
resource_group_name = "rg-prod"
location            = "eastus"
```

I expose configurable inputs:

```hcl
variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "eastus"
}
```

I also avoid making a module too large. For example, rather than creating one module that provisions an entire enterprise platform, I might maintain focused modules for:

```text
network
aks
acr
key-vault
monitoring
private-endpoints
```

Teams can compose these modules based on their requirements.

**Interview summary:**  
I create small, opinionated, well-documented modules with standardized inputs, outputs, validations, secure defaults, examples, automated validation, and semantic versioning.

[Back to Index](#index)

---

<a id="q6-how-do-you-manage-shared-module-versioning"></a>
## 6. How do you manage shared module versioning?

For shared modules, I avoid referencing an unpinned branch such as:

```hcl
source = "git::https://example.com/network.git?ref=main"
```

because changes to `main` could unexpectedly affect every consumer.

Instead, I publish/tag module versions using semantic versioning:

```text
v1.0.0
v1.1.0
v1.2.0
v2.0.0
```

Example:

```hcl
module "network" {
  source = "git::https://example.com/network.git?ref=v1.4.2"
}
```

Semantic versioning:

```text
MAJOR.MINOR.PATCH

MAJOR -> breaking changes
MINOR -> backward-compatible features
PATCH -> backward-compatible fixes
```

I test module releases before publishing them and maintain release notes/changelogs.

Consumer teams upgrade versions intentionally through pull requests.

This gives us:

- Predictability
- Controlled upgrades
- Easy rollback
- Change tracking
- Reduced blast radius

[Back to Index](#index)

---

<a id="q7-how-do-you-deal-with-module-dependencies-and-nesting"></a>
## 7. How do you deal with module dependencies and nesting?

I prefer explicit dependencies through module outputs and inputs.

For example, the network module creates a subnet:

```hcl
output "aks_subnet_id" {
  value = azurerm_subnet.aks.id
}
```

The AKS module consumes it:

```hcl
module "aks" {
  source = "./modules/aks"

  subnet_id = module.network.aks_subnet_id
}
```

Terraform automatically understands the dependency because one module references another module's output.

Flow:

```text
Network Module
     |
subnet_id output
     |
AKS Module
```

I only use `depends_on` when Terraform cannot infer the dependency naturally:

```hcl
module "aks" {
  source = "./modules/aks"

  depends_on = [
    module.network
  ]
}
```

I also avoid deep module nesting.

For example, I prefer:

```text
Root Module
├── Network Module
├── AKS Module
├── Key Vault Module
└── Monitoring Module
```

rather than unnecessarily nesting modules many levels deep.

Deep nesting can make debugging, ownership, outputs, and upgrades harder.

[Back to Index](#index)

---

<a id="q8-difference-between-count-for_each-and-dynamic"></a>
## 8. Difference between `count`, `for_each`, and `dynamic`.

### `count`

Use `count` when creating multiple similar resource instances based mainly on a number or boolean condition.

```hcl
resource "azurerm_resource_group" "rg" {
  count = 3

  name     = "rg-${count.index}"
  location = "eastus"
}
```

Useful for:

- Simple repetition
- Conditional creation

Example:

```hcl
count = var.enable_monitoring ? 1 : 0
```

### `for_each`

Use `for_each` when instances have unique logical identities.

```hcl
variable "resource_groups" {
  type = set(string)
  default = [
    "rg-dev",
    "rg-qa",
    "rg-prod"
  ]
}

resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups

  name     = each.value
  location = "eastus"
}
```

The state addresses become:

```text
azurerm_resource_group.rg["rg-dev"]
azurerm_resource_group.rg["rg-qa"]
azurerm_resource_group.rg["rg-prod"]
```

This is generally safer than `count` when list ordering may change.

### `dynamic`

`dynamic` does not create multiple Terraform resources.

It dynamically generates nested configuration blocks inside a resource.

Example:

```hcl
dynamic "security_rule" {
  for_each = var.security_rules

  content {
    name                       = security_rule.value.name
    priority                   = security_rule.value.priority
    direction                  = security_rule.value.direction
    access                     = security_rule.value.access
    protocol                   = security_rule.value.protocol
    source_port_range          = "*"
    destination_port_range     = security_rule.value.port
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
```

Summary:

```text
count
-> Multiple resource instances based on number/index

for_each
-> Multiple resource instances based on keys

dynamic
-> Multiple nested blocks inside a resource
```

[Back to Index](#index)

---

<a id="q9-when-would-you-use-create_before_destroy-lifecycle-rules"></a>
## 9. When would you use `create_before_destroy` lifecycle rules?

I use `create_before_destroy` when replacing a resource could cause downtime and Terraform is capable of creating the replacement before deleting the old resource.

Example:

```hcl
resource "azurerm_linux_virtual_machine" "app" {
  # configuration

  lifecycle {
    create_before_destroy = true
  }
}
```

Default replacement behavior may be:

```text
Destroy Old Resource
        |
Create New Resource
```

With `create_before_destroy`:

```text
Create New Resource
        |
Validate / Switch
        |
Destroy Old Resource
```

Useful scenarios include resources supporting blue/green-style replacement or resources where temporary duplication is allowed.

However, I don't enable it blindly.

Potential issues:

- Name uniqueness constraints
- Duplicate resource limitations
- Temporary extra cost
- Capacity/quota restrictions
- Dependency conflicts

[Back to Index](#index)

---

<a id="q10-explain-terraform-import-which-you-have-used-in-any-project"></a>
## 10. Explain `terraform import` which you have used in any project .

`terraform import` is used when infrastructure already exists outside Terraform but we want Terraform to start managing it.

A real-world example is an existing Azure resource group, VNet, subnet, or Key Vault created manually before Terraform adoption.

First, I define the matching Terraform resource:

```hcl
resource "azurerm_resource_group" "prod" {
  name     = "rg-prod"
  location = "Central India"
}
```

Then import the existing Azure resource:

```bash
terraform import \
  azurerm_resource_group.prod \
  "/subscriptions/<subscription-id>/resourceGroups/rg-prod"
```

After import:

```bash
terraform state show azurerm_resource_group.prod
```

Then:

```bash
terraform plan
```

Import mainly establishes the state mapping. I still need Terraform configuration that matches the real resource.

My workflow is:

```text
Existing Resource
       |
Write Terraform Configuration
       |
terraform import
       |
terraform plan
       |
Reconcile Differences
       |
Terraform Manages Resource
```

I have also used/import concepts during state recovery when infrastructure exists but a resource is missing from Terraform state.

[Back to Index](#index)

---

<a id="q11-monorepo-vs-polyrepo-terraform-strategy--pros--cons"></a>
## 11. Monorepo vs Polyrepo Terraform strategy – pros & cons.

### Monorepo

A monorepo stores multiple Terraform stacks/modules/environments in one repository.

Example:

```text
terraform-platform/
├── modules/
├── dev/
├── qa/
├── prod/
├── network/
└── aks/
```

Advantages:

- Centralized visibility
- Easier cross-stack changes
- Shared standards
- Simpler repository discovery
- Easier coordinated pull requests

Disadvantages:

- Repository can become large
- More complex pipeline triggering
- Broader access may be required
- Teams can accidentally affect unrelated areas
- Ownership boundaries may be less clear

### Polyrepo

Different infrastructure components or modules live in separate repositories.

Example:

```text
terraform-network
terraform-aks
terraform-database
terraform-keyvault
```

Advantages:

- Strong ownership boundaries
- Independent release cycles
- Easier access control
- Smaller repositories
- Independent CI/CD

Disadvantages:

- More repositories to manage
- Cross-repository changes are harder
- Version coordination is required
- Standards can drift

### My approach

For reusable organization-wide modules, polyrepo can work very well because modules need independent versioning.

For environment/platform configuration, a monorepo can simplify coordinated infrastructure management.

A hybrid strategy is common:

```text
Reusable Modules -> Separate repositories/versioned registry

Environment Configurations -> Platform monorepo
```

[Back to Index](#index)

---

<a id="q12-how-do-you-secure-secrets-in-terraform-without-exposing-them"></a>
## 12. How do you secure secrets in Terraform without exposing them?

I avoid hardcoding secrets in `.tf` or `.tfvars` files and never commit secrets to Git.

Bad example:

```hcl
admin_password = "Password123!"
```

Instead, secrets come from secure identity-based systems or CI/CD secret stores such as:

- Azure Key Vault
- HashiCorp Vault
- Azure DevOps secret variables/variable groups
- Workload identity / managed identity

I also mark sensitive Terraform variables:

```hcl
variable "db_password" {
  type      = string
  sensitive = true
}
```

And sensitive outputs:

```hcl
output "password" {
  value     = var.db_password
  sensitive = true
}
```

Important point:

`sensitive = true` hides values from normal CLI output, but it does not necessarily prevent sensitive values from being stored in Terraform state.

Therefore, I secure the state backend using:

- Encryption at rest
- RBAC
- Restricted network access
- Private endpoints where needed
- Least-privilege identities

The best option is often to avoid retrieving the secret value into Terraform at all when the target service can directly reference Key Vault or use managed identity.

[Back to Index](#index)

---

<a id="q13-how-do-you-integrate-azure-key-vaultvault-with-terraform"></a>
## 13. How do you integrate Azure Key Vault/Vault with Terraform?

For Azure Key Vault, Terraform can retrieve existing secrets through a data source.

Example:

```hcl
data "azurerm_key_vault" "kv" {
  name                = "kv-prod"
  resource_group_name = "rg-security"
}

data "azurerm_key_vault_secret" "db_password" {
  name         = "db-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}
```

Then:

```hcl
password = data.azurerm_key_vault_secret.db_password.value
```

However, if Terraform reads a secret value and uses it in a managed resource, that value may be represented in Terraform state.

So where possible, I prefer architectures where the application/resource retrieves secrets directly from Key Vault using managed identity rather than Terraform transporting secret values.

Authentication should use:

```text
Azure DevOps Pipeline
       |
Workload Identity / Service Principal
       |
Azure RBAC
       |
Key Vault
```

The Terraform identity gets only the minimum permissions required.

[Back to Index](#index)

---

<a id="q14-how-do-you-enforce-rbac-for-terraform-in-cicd"></a>
## 14. How do you enforce RBAC for Terraform in CI/CD?

I use separate identities/service connections for different environments.

Example:

```text
DEV Pipeline
   |
DEV Service Connection
   |
DEV Subscription


PROD Pipeline
   |
PROD Service Connection
   |
PROD Subscription
```

I follow least privilege rather than granting broad Owner access by default.

I prefer workload identity federation where supported so the pipeline doesn't need long-lived client secrets.

I separate permissions such as:

- Read-only plan identity where practical
- Deployment/apply identity
- State backend access
- Key Vault access

Production permissions are more restricted and tied to protected pipelines/environments.

I also combine Azure RBAC with:

- Branch protection
- Pull-request reviews
- Environment approvals
- Audit logs
- Service connection permissions
- Pipeline permissions

[Back to Index](#index)

---

<a id="q15-tools-you-use-to-ensure-terraform-security-compliance"></a>
## 15. Tools you use to ensure Terraform security compliance?

I use multiple layers rather than one tool.

Typical tools include:

### Terraform native validation

```bash
terraform fmt -check
terraform validate
terraform plan
```

### Static security/IaC scanning

Examples:

- Checkov
- Trivy
- tfsec
- Terrascan

These detect issues such as:

- Public storage
- Open security groups
- Missing encryption
- Weak network controls
- Missing logging

### Policy as Code

Depending on the platform:

- Azure Policy
- Open Policy Agent / Conftest
- Sentinel in Terraform Enterprise/Cloud environments

### Secret scanning

Examples:

- TruffleHog
- Gitleaks

### CI/CD security gates

I fail or block deployments when high-severity policy violations exceed agreed thresholds.

The goal is:

```text
Developer Commit
     |
Terraform Validation
     |
IaC Security Scan
     |
Policy Check
     |
terraform plan
     |
Approval
     |
terraform apply
```

[Back to Index](#index)

---

<a id="q16-how-do-you-implement-terraform-with-gitops"></a>
## 16. How do you implement Terraform with GitOps?

My GitOps approach is that Git becomes the source of truth for infrastructure configuration.

Engineers don't directly make production Terraform changes from laptops.

Typical flow:

```text
Engineer
   |
Feature Branch
   |
Pull Request
   |
terraform fmt/validate/security scan
   |
terraform plan
   |
Peer Review
   |
Merge
   |
Approved Pipeline
   |
terraform apply
```

Any infrastructure modification should come through Git.

For Kubernetes, I normally distinguish Terraform GitOps from application GitOps.

Terraform may provision:

- AKS
- Networking
- ACR
- Key Vault
- Managed identities
- Argo CD

Then Argo CD manages Kubernetes application manifests.

Example:

```text
Terraform
   |
Creates AKS + Argo CD
   |
Argo CD
   |
Reads Application Git Repository
   |
Deploys Kubernetes Applications
```

This provides clear responsibility boundaries.

[Back to Index](#index)

---

<a id="q17-how-do-you-handle-terraform-planapply-in-pipelines"></a>
## 17. How do you handle `terraform plan`/`apply` in pipelines?

I separate planning and applying.

Typical pipeline:

```text
Checkout
   |
terraform fmt -check
   |
terraform init
   |
terraform validate
   |
Security scanning
   |
terraform plan
   |
Publish/Review Plan
   |
Approval
   |
terraform apply
```

I generate a saved plan:

```bash
terraform plan -out=tfplan
```

Then apply that exact approved plan:

```bash
terraform apply tfplan
```

For production, I do not blindly run:

```bash
terraform apply -auto-approve
```

from an uncontrolled pipeline.

I also:

- Use remote state
- Use environment-specific identities
- Prevent concurrent applies
- Require PR review
- Restrict production service connections
- Capture pipeline logs
- Add manual/environment approvals

[Back to Index](#index)

---

<a id="q18-whats-your-approach-to-approval-gates-in-prod-applies"></a>
## 18. What’s your approach to approval gates in prod applies?

Production apply should be controlled.

I normally use:

```text
Pull Request Approval
        +
Successful Terraform Plan
        +
Security/Policy Checks
        +
Environment Approval
        +
terraform apply
```

In Azure DevOps, the production environment or deployment stage can require authorized approvers.

Approvers should see:

- Terraform plan
- Resources being created
- Resources being updated
- Resources being destroyed
- Security scan results
- Change/ticket reference where required

For higher-risk changes, I may also require:

- Change-management approval
- Maintenance window
- Backup verification
- Rollback/recovery plan

The approval should happen against a known Terraform plan so the person approving understands what will be applied.

[Back to Index](#index)

---

<a id="q19-how-do-you-troubleshoot-apply-failures-across-modules"></a>
## 19. How do you troubleshoot apply failures across modules?

I start with the exact Terraform error and identify the failing resource/module.

Example:

```text
module.aks.azurerm_kubernetes_cluster.aks
```

I then check:

1. Terraform error details
2. Provider/API error
3. Input variables
4. Module outputs
5. Dependencies
6. Azure permissions
7. Resource quotas
8. Naming constraints
9. Networking dependencies
10. Whether a partial resource was created

Useful commands include:

```bash
terraform validate
terraform plan
terraform state list
terraform state show <resource>
```

For deeper troubleshooting:

```bash
TF_LOG=DEBUG terraform apply
```

I use debug logging carefully because logs may contain sensitive information.

I also inspect the Azure activity log and resource deployment/API errors.

For modules, I trace the dependency:

```text
Root Module
    |
Network Module
    |
Subnet Output
    |
AKS Module
```

If AKS fails because the subnet is incorrect, the real issue may originate in the network module.

After correcting the issue, I normally rerun:

```bash
terraform plan
```

before applying again.

[Back to Index](#index)

---

<a id="q20-how-do-you-detect-and-resolve-infra-drift-in-terraform"></a>
## 20. How do you detect and resolve infra drift in Terraform?

Drift occurs when the real infrastructure differs from Terraform's expected configuration/state.

Example:

Terraform expects:

```text
NSG Port 443
```

Someone manually adds:

```text
NSG Port 22
```

Now Azure and Terraform differ.

I detect drift through scheduled or pull-request Terraform plans:

```bash
terraform plan
```

For a refresh-only review:

```bash
terraform plan -refresh-only
```

My strategy is:

```text
Detect Difference
      |
Determine Why It Changed
      |
Decide Source of Truth
      |
Revert Manual Change
      OR
Update Terraform Code
      |
terraform plan
      |
terraform apply
```

If the manual change was unauthorized, I usually revert infrastructure back to the Terraform-defined configuration.

If the manual change was legitimate and should become permanent, I update Terraform code so Git remains the source of truth.

I reduce drift through:

- RBAC
- Restricted portal access
- GitOps processes
- CI/CD-only deployments
- Azure Policy
- Scheduled drift detection

[Back to Index](#index)

---

<a id="q21-whats-your-rollback-strategy-if-an-apply-breaks-midway"></a>
## 21. What’s your rollback strategy if an apply breaks midway?

Terraform does not provide a universal automatic rollback like a database transaction.

If an apply fails midway, some resources may already have been successfully created or updated.

My first action is not to immediately restore an old state file.

I first determine:

```text
What succeeded?
What failed?
What does the state contain?
What exists in Azure?
```

I run:

```bash
terraform state list
terraform plan
```

Because Terraform updates state as operations succeed, often the safest recovery is to fix the underlying cause and re-run the plan/apply.

Example:

```text
10 resources planned

Resource 1 -> Success
Resource 2 -> Success
Resource 3 -> Success
Resource 4 -> Failed
```

Terraform may have already recorded successful resources.

After fixing the issue, I run:

```bash
terraform plan
```

Terraform then determines what remains.

For application/platform changes that need true rollback capability, I design infrastructure to support safer deployment strategies such as:

- Blue/green
- Immutable infrastructure
- Versioned modules
- Previous configuration in Git
- Database backup/recovery
- Resource snapshots/backups

If a change itself must be reverted, I revert the Terraform code to the known-good version and generate a new plan.

```text
Failed Change
    |
Assess Current State
    |
Fix Forward OR Revert Git Configuration
    |
terraform plan
    |
Review
    |
terraform apply
```

Important point:

I do not blindly replace the current state file with an older one because the old state might not represent resources that were successfully created or modified during the failed apply.

**Interview summary:**  
Terraform isn't transactional. If apply fails midway, I inspect the actual infrastructure and state, fix the cause, and usually let Terraform converge by re-running `plan` and `apply`. If rollback is needed, I revert configuration through Git and apply the resulting plan rather than blindly restoring an old state.

[Back to Index](#index)

---

# Quick Revision Summary

```text
1. State across environments
   -> Separate remote state + tfvars + identities

2. Remote locking
   -> Azure Blob lease + pipeline concurrency

3. Corrupted state
   -> Stop, backup, restore, import, plan

4. Inspect/modify state
   -> state list/show/pull/mv/rm

5. Reusable modules
   -> Small, documented, configurable, secure

6. Module versioning
   -> Semantic versions + pinned releases

7. Module dependencies
   -> Outputs/inputs first, depends_on only if needed

8. count vs for_each vs dynamic
   -> Numeric instances vs keyed instances vs nested blocks

9. create_before_destroy
   -> Reduce downtime during replacements

10. terraform import
    -> Bring existing infra under Terraform management

11. Monorepo vs Polyrepo
    -> Central coordination vs independent ownership/versioning

12. Secrets
    -> Key Vault/Vault + identities + protected state

13. Key Vault integration
    -> Data sources/RBAC; prefer runtime secret retrieval

14. RBAC in CI/CD
    -> Separate least-privileged workload identities

15. Security compliance
    -> Checkov/Trivy/tfsec/Terrascan + Policy as Code

16. Terraform GitOps
    -> Git PR is source of truth

17. Plan/apply
    -> Validate -> plan -> review -> approval -> apply

18. Prod approval
    -> Reviewed plan + environment approval

19. Apply failures
    -> Error -> dependencies -> state -> Azure logs -> plan

20. Drift
    -> Scheduled plan -> decide source of truth -> reconcile

21. Midway failure
    -> Inspect state/infra -> fix forward or Git revert -> plan/apply
```
