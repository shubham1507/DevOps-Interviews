# Cloud, Azure, Terraform & Observability Interview Q&A

> Click any question below to jump directly to its answer. Each answer has a **Back to Index** link.

# Index

## Cloud Knowledge / AWS / Azure
1. [How good are you with AWS? How much is your experience with AWS?](#q1)
2. [What all services in Azure have you worked on?](#q2)
3. [Let’s say we want to build a website and we do not have cloud presence. What are the things we should consider while building the cloud account and cloud infrastructure?](#q3)

## Design Decisions — VM vs Container vs Serverless / App Service vs AKS
4. [How will you decide whether the application should be containerized, VM-based, or serverless?](#q4)
5. [Azure has App Service and AKS — what parameters will you consider to decide which one to use?](#q5)
6. [App Service also supports autoscaling, so why would you still choose AKS?](#q6)
7. [What other components would you set up to make this architecture work on cloud?](#q7)

## Global / Regional Architecture & Networking
8. [Consider your application is used across the globe — how will you design the network?](#q8)
9. [Have you worked on setting up Azure Kubernetes Service (AKS) yourself or was it done by another team?](#q9)
10. [Have you worked on load balancers in Azure?](#q10)
11. [If I am an end user, how does traffic flow from the user to your application?](#q11)
12. [How many load balancers will be involved, and how will routing take place?](#q12)
13. [What is the difference between a Network Load Balancer and an Application Load Balancer?](#q13)
14. [In OSI layer terms, which layer does NLB work on and which layer does ALB work on?](#q14)
15. [Can we use a Network Load Balancer in place of an Application Load Balancer? Why or why not?](#q15)

## HashiCorp Vault / Secret Management
16. [Have you worked on HashiCorp Vault or Azure Secret Manager?](#q16)
17. [Can you brief your experience with Vault? What have you worked on?](#q17)
18. [Have you set up HashiCorp Vault yourself or was it provided by another team?](#q18)
19. [When the Vault token expires, what do you do? How is it renewed?](#q19)

## Terraform — Usage, Best Practices, Drift
20. [What is your experience with Terraform? How much have you worked on it?](#q20)
21. [What steps do you follow to make Terraform enterprise-ready?](#q21)
22. [Are you using Terraform Enterprise or open-source?](#q22)
23. [What is this TOFU version of Terraform? Explain.](#q23)
24. [Why do you run Terraform locally on VMs instead of integrating with CI/CD?](#q24)
25. [Where is your Terraform state file stored?](#q25)
26. [If the state file contains cloud passwords and secrets, is storing it in GitLab a good practice? Why?](#q26)
27. [If someone creates or deletes resources manually from the cloud console, what happens when you run Terraform apply?](#q27)
28. [What are the best practices you follow for Terraform drift management?](#q28)
29. [Have you ever encountered a drift issue and how did you fix it?](#q29)

## Observability / Monitoring / AppDynamics / OpenTelemetry
30. [I see on your resume that you configured Hazelcast with OpenTelemetry and AppDynamics — can you walk us through how you configured it?](#q30)
31. [Is the instrumentation Auto-instrumentation or Manual-instrumentation?](#q31)
32. [If there are 5 applications to onboard to AppDynamics, how do you onboard them? Is it manual or automated?](#q32)
33. [What does your automation pipeline for AppDynamics onboarding do?](#q33)
34. [If one application is Java and another is .NET, will the APD agent be the same or different? Why?](#q34)
35. [Is AppDynamics agent push-based or pull-based?](#q35)
36. [Are you only responsible for installing agents, or also for configuring monitoring, alerting, dashboards?](#q36)
37. [Can you share one incident where AppDynamics helped you diagnose an issue and how you troubleshot it?](#q37)
38. [What is the core strength of AppDynamics? Why do we use it?](#q38)

---

# Answers

<a id="q1"></a>
## Answer 1

My strongest cloud experience is Azure. I have worked hands-on with Azure infrastructure, networking, AKS, identity, monitoring, CI/CD, and Infrastructure as Code.

I also understand AWS architecture and the equivalent AWS services, but I would clearly distinguish between hands-on production experience and conceptual knowledge rather than overstating AWS experience.

For example, I map services across clouds like this:

| Azure | AWS |
|---|---|
| Virtual Machines | EC2 |
| VNet | VPC |
| Azure Load Balancer | Network Load Balancer |
| Application Gateway | Application Load Balancer |
| AKS | EKS |
| Azure Functions | Lambda |
| Blob Storage | S3 |
| Azure SQL | RDS |
| Azure Key Vault | Secrets Manager / Parameter Store |
| Azure Monitor | CloudWatch |
| Entra ID | IAM / Identity services |
| Azure DNS | Route 53 |
| Azure Front Door | CloudFront + routing/WAF capabilities depending on design |

A good interview response is:

> My primary hands-on cloud is Azure. I have stronger production experience there, particularly around infrastructure automation, AKS, networking, monitoring and Azure DevOps. I have AWS knowledge and can map the architecture and services, but I would describe my AWS exposure accurately rather than claim the same depth as Azure.

[Back to Index](#index)

---

<a id="q2"></a>
## Answer 2

My Azure exposure covers several layers.

**Compute and application platforms**
- Azure Virtual Machines
- VM Scale Sets
- Azure App Service
- Azure Functions
- Azure Kubernetes Service

**Networking**
- VNets and subnets
- NSGs
- Azure Load Balancer
- Application Gateway
- Private Endpoints
- Private DNS
- Public IPs
- Azure DNS
- Azure Front Door concepts
- VNet peering

**Identity and security**
- Microsoft Entra ID
- Managed identities
- Service principals
- Azure RBAC
- Azure Key Vault

**Storage and data**
- Storage Accounts
- Blob Storage
- Azure SQL concepts

**Containers**
- AKS
- Azure Container Registry

**Monitoring**
- Azure Monitor
- Log Analytics
- Application Insights
- AppDynamics integration

**DevOps/IaC**
- Azure DevOps Repos
- Azure Pipelines
- Service Connections
- Terraform
- Ansible
- Git
- CI/CD

I normally explain the services through the architecture I implemented rather than simply listing service names.

[Back to Index](#index)

---

<a id="q3"></a>
## Answer 3

If an organization has no existing cloud presence, I would not immediately start creating application resources.

I would first establish the cloud foundation or landing zone.

My sequence would be:

```text
Business Requirements
        |
Identity & Account Structure
        |
Subscription Strategy
        |
Governance
        |
Networking
        |
Security Baseline
        |
Logging/Monitoring
        |
IaC + CI/CD
        |
Application Platform
        |
Application Deployment
```

Key considerations:

**1. Requirements**
- Expected users and traffic
- Regions
- Availability requirements
- RTO/RPO
- Compliance
- Data residency
- Budget
- Application architecture

**2. Azure tenant/subscription design**

For example:

```text
Azure Tenant
├── Management
├── Connectivity
├── Security
├── Development
├── QA
└── Production
```

**3. Identity**

Use Entra ID, RBAC, MFA/PIM where appropriate, managed identities and workload identities.

**4. Network**

Design IP ranges before creating VNets.

Consider:

```text
Hub VNet
├── Firewall
├── VPN/ExpressRoute
├── DNS
└── Shared Services

Spoke VNets
├── Dev
├── QA
└── Prod
```

**5. Security**

Establish:
- Azure Policy
- Defender controls
- Key Vault
- NSGs
- WAF
- Private endpoints
- Encryption
- Centralized logging

**6. Application entry point**

For a global website:

```text
Internet
   |
Azure Front Door + WAF
   |
Regional Application Gateway
   |
App Service / AKS
   |
Database / Cache / Storage
```

**7. Observability**

Configure Azure Monitor, Log Analytics, Application Insights/AppDynamics and alerts from the beginning.

**8. Infrastructure as Code**

Build the environment using Terraform instead of manually creating production infrastructure.

**9. CI/CD**

Applications and infrastructure should deploy through controlled pipelines.

**10. Business continuity**

Design backups, zone/region redundancy, disaster recovery and failover based on business requirements.

[Back to Index](#index)

---

<a id="q4"></a>
## Answer 4

I decide based on workload characteristics rather than choosing containers by default.

### VM

I choose VMs when:
- Application requires OS-level control
- Legacy application cannot easily be containerized
- Vendor software requires a specific OS
- Specialized drivers/software are required
- Migration needs minimal application changes

### Containers

I choose containers when:
- Application is microservice-oriented
- Portability is important
- We need consistent runtime environments
- Independent scaling/deployment is required
- Application releases are frequent
- Kubernetes/container orchestration adds genuine value

### Serverless

I choose serverless when:
- Workload is event-driven
- Execution is short-lived
- Traffic is intermittent
- We want minimal infrastructure management
- Independent functions can scale on demand

Example:

```text
Legacy banking application
        -> VM

Microservices platform
        -> Containers / AKS

Image processing triggered by upload
        -> Azure Functions
```

I consider cost, operational complexity, scaling pattern, statefulness, latency, portability, team skills and availability requirements before making the decision.

[Back to Index](#index)

---

<a id="q5"></a>
## Answer 5

App Service and AKS can both host applications, but the operational model is different.

I choose **App Service** when:
- Application is relatively straightforward
- Team doesn't need Kubernetes features
- We want Microsoft to manage most platform operations
- Simple autoscaling is sufficient
- Fast deployment and low operational overhead matter

I choose **AKS** when:
- We have many microservices
- Need Kubernetes-native orchestration
- Require advanced scheduling
- Need sidecars
- Need service mesh
- Need custom ingress
- Need fine-grained resource control
- Need Kubernetes ecosystem tooling
- Need complex deployment strategies
- Need workload portability

Decision matrix:

```text
Simple web/API
        -> App Service

Large microservice ecosystem
        -> AKS

Low operational overhead
        -> App Service

Advanced orchestration/control
        -> AKS
```

I would not choose AKS for a simple website merely because Kubernetes is technically more powerful. Its additional flexibility comes with additional operational complexity.

[Back to Index](#index)

---

<a id="q6"></a>
## Answer 6

Autoscaling alone is not the reason to choose AKS.

App Service provides excellent scaling for web applications, but Kubernetes provides a much broader orchestration platform.

AKS gives us capabilities such as:

- Pod-level scaling
- Independent microservice scaling
- Horizontal Pod Autoscaler
- Cluster autoscaling
- Custom scheduling
- Sidecars
- DaemonSets
- StatefulSets
- Custom ingress
- Service mesh
- Kubernetes operators
- Advanced rollout patterns
- Resource requests/limits
- Namespace isolation
- Kubernetes ecosystem portability

Example:

```text
Application
├── frontend
├── orders
├── payments
├── inventory
├── notifications
└── reporting
```

Each component may have completely different scaling requirements.

With AKS, `payments` could run 10 pods while `reporting` runs only 2.

So the decision is not:

```text
Does it autoscale?
```

It is:

```text
How much orchestration, portability and runtime control does the application require?
```

[Back to Index](#index)

---

<a id="q7"></a>
## Answer 7

For a production cloud application, the compute platform is only one component.

A typical architecture may require:

```text
Users
 |
DNS
 |
Front Door/CDN
 |
WAF
 |
Application Gateway / Load Balancer
 |
App Service / AKS
 |
APIs / Services
 |
Database + Cache + Storage
```

Supporting components include:

- DNS
- TLS certificates
- WAF
- Load balancing
- VNets/subnets
- NSGs
- Private endpoints
- Key Vault
- Managed identities
- Container registry
- Database
- Redis/cache if required
- Storage
- Monitoring
- Central logging
- Alerting
- Backup
- Disaster recovery
- CI/CD
- Terraform
- RBAC
- Policy/compliance controls

I also consider availability zones, autoscaling, health checks, patching, secrets, certificate rotation and cost management.

[Back to Index](#index)

---

<a id="q8"></a>
## Answer 8

For a globally used application, I would use a multi-region architecture based on latency, availability, compliance and disaster-recovery requirements.

A simplified Azure architecture:

```text
                  Global Users
                       |
                       v
               Azure Front Door
                 + Global WAF
                  /           \
                 /             \
                v               v
        Region 1             Region 2
     Application GW       Application GW
           |                    |
          AKS                  AKS
           |                    |
        Services             Services
```

Azure Front Door can provide global HTTP(S) entry, health-based routing and acceleration.

Within each region, Application Gateway/WAF or another regional ingress layer routes traffic to the application.

For data, I determine whether the application needs:
- Active-active
- Active-passive
- Geo-replication
- Read replicas
- Globally distributed databases

I also design non-overlapping CIDR ranges and consider hub-spoke connectivity, private DNS, firewall controls and regional failover.

[Back to Index](#index)

---

<a id="q9"></a>
## Answer 9

A strong answer should clearly separate what you personally implemented from what a platform team provided.

For hands-on AKS setup, I would describe activities such as:

- AKS provisioning using Terraform
- VNet/subnet integration
- Node pools
- Managed identities
- Azure Container Registry integration
- RBAC
- Network configuration
- Ingress
- Monitoring
- Autoscaling
- Upgrade strategy
- Private cluster configuration where required
- CI/CD integration

Example architecture:

```text
Terraform
   |
AKS Cluster
├── System Node Pool
├── Application Node Pool
├── Managed Identity
├── VNet/Subnet
├── ACR Integration
├── Monitoring
└── Ingress
```

If another platform team originally created the AKS foundation, I would state that clearly and explain the parts I owned, such as deployments, upgrades, monitoring, pipeline integration or Terraform changes.

[Back to Index](#index)

---

<a id="q10"></a>
## Answer 10

Yes, Azure provides different load-balancing options depending on the layer and requirement.

I distinguish between:

**Azure Load Balancer**
- Layer 4
- TCP/UDP
- Internal or public
- High-performance network load balancing

**Application Gateway**
- Layer 7
- HTTP/HTTPS
- Host-based routing
- Path-based routing
- TLS termination
- WAF integration

**Azure Front Door**
- Global Layer 7 entry point
- Global routing
- Acceleration
- WAF
- Multi-region failover

For AKS, there can also be a Kubernetes Service of type `LoadBalancer` and an ingress controller.

[Back to Index](#index)

---

<a id="q11"></a>
## Answer 11

For a globally accessible AKS-hosted web application, a typical traffic flow could be:

```text
End User
   |
DNS
   |
Azure Front Door
   |
WAF
   |
Application Gateway
   |
AKS Ingress
   |
Kubernetes Service
   |
Pod
   |
Application
   |
Database / Cache / Storage
```

Step by step:

1. User enters the application URL.
2. DNS resolves the application endpoint.
3. Front Door receives the request.
4. WAF evaluates security rules.
5. Front Door selects a healthy/appropriate region.
6. Regional Application Gateway receives the request.
7. The ingress layer performs host/path routing.
8. Kubernetes Service selects an application pod.
9. Application processes the request.
10. Application accesses backend services using private connectivity where possible.
11. Response returns through the appropriate path.

The exact number of hops depends on the architecture. I avoid adding multiple load balancers unless each has a clear purpose.

[Back to Index](#index)

---

<a id="q12"></a>
## Answer 12

There is no fixed number of load balancers. It depends on the architecture.

For a simple single-region application:

```text
User
 |
Application Gateway
 |
Application
```

For AKS:

```text
User
 |
Application Gateway / External LB
 |
Ingress
 |
Kubernetes Service
 |
Pods
```

For global multi-region architecture:

```text
Users
 |
Azure Front Door
 |
+---------------------+
|                     |
Region A              Region B
|                     |
Regional Gateway      Regional Gateway
|                     |
AKS                   AKS
```

Each layer has a purpose:

```text
Front Door
-> Global routing

Application Gateway
-> Regional HTTP routing/WAF

Kubernetes Service/Ingress
-> Cluster/service routing
```

I design the minimum number of layers necessary to meet availability, security and routing requirements.

[Back to Index](#index)

---

<a id="q13"></a>
## Answer 13

A Network Load Balancer operates primarily on network/transport information, whereas an Application Load Balancer understands application protocols such as HTTP.

Conceptually:

| NLB | ALB |
|---|---|
| Layer 4 | Layer 7 |
| TCP/UDP | HTTP/HTTPS |
| IP/port based | URL/host/header aware |
| Very high network performance | Advanced application routing |
| No HTTP path awareness | Path/host-based routing |

Example:

NLB-style routing:

```text
10.0.1.10:443
       |
Backend Pool
```

Application routing:

```text
/api/*
   -> API backend

/images/*
   -> Image backend

shop.example.com
   -> Shopping service
```

In Azure terminology, Azure Load Balancer is the common Layer-4 service and Application Gateway provides Layer-7 regional application delivery.

[Back to Index](#index)

---

<a id="q14"></a>
## Answer 14

Using the OSI model:

```text
Network Load Balancer
        -> Layer 4
        -> Transport Layer
        -> TCP / UDP

Application Load Balancer
        -> Layer 7
        -> Application Layer
        -> HTTP / HTTPS
```

Layer 4 makes routing decisions primarily using information such as:

```text
Source IP
Destination IP
Source Port
Destination Port
Protocol
```

Layer 7 can understand:

```text
Hostname
URL
HTTP method
Headers
Cookies
Application path
```

That is why Layer-7 load balancers can provide advanced application routing.

[Back to Index](#index)

---

<a id="q15"></a>
## Answer 15

Technically, a Layer-4 load balancer can forward TCP traffic for many applications, but it cannot replace a Layer-7 load balancer when application-aware features are required.

Suppose we need:

```text
example.com/api/*
    -> API service

example.com/images/*
    -> Image service
```

A Layer-7 load balancer can inspect the HTTP request path and route accordingly.

A Layer-4 load balancer generally sees:

```text
IP
Port
Protocol
```

but does not make routing decisions based on HTTP URL paths.

Similarly, if we require WAF capabilities, HTTP redirects, host-based routing or application-aware TLS handling, we normally need an application-layer service.

So I choose the load balancer based on protocol and routing requirements rather than treating them as interchangeable.

[Back to Index](#index)

---

<a id="q16"></a>
## Answer 16

I have worked with secret-management patterns around Azure Key Vault and understand HashiCorp Vault integration patterns.

In Azure-native environments, Key Vault is commonly used for:

- Secrets
- Certificates
- Encryption keys

Applications should authenticate through managed identity or workload identity rather than storing static credentials.

With HashiCorp Vault, the same principle applies: applications authenticate using an approved auth method and retrieve authorized secrets dynamically.

A good architecture is:

```text
Application / Pipeline
       |
Identity Authentication
       |
Vault / Key Vault
       |
Authorized Secret
```

I would clearly distinguish whether I administered the Vault platform itself or consumed a centrally managed Vault service.

[Back to Index](#index)

---

<a id="q17"></a>
## Answer 17

My Vault experience would be explained across four areas:

**Authentication**
- Application/pipeline authenticates to Vault
- Avoid long-lived hardcoded tokens
- Use workload-specific authentication mechanisms

**Authorization**
- Vault policies control which paths an identity can access.

Example concept:

```text
Application A
   -> secret/data/app-a/*

Application B
   -> secret/data/app-b/*
```

**Secret consumption**
- Applications retrieve secrets at runtime
- Pipelines retrieve only secrets required for deployment
- Avoid writing secrets to source control or logs

**Token lifecycle**
- Tokens have TTLs
- Renewable tokens can be renewed
- Applications should authenticate again when appropriate
- Automation should manage lifecycle instead of engineers manually copying tokens

For dynamic secret engines, Vault can also issue short-lived credentials rather than storing permanent credentials.

[Back to Index](#index)

---

<a id="q18"></a>
## Answer 18

I would answer this based on actual ownership.

There is a major difference between:

```text
Vault Platform Administration
```

and:

```text
Vault Consumer / Integration
```

Platform setup can involve:

- Vault installation
- HA architecture
- Storage backend
- TLS
- Initialization
- Unseal strategy
- Authentication methods
- Policies
- Audit logging
- Backup/recovery
- Upgrades

Consumer integration can involve:

- Configuring application authentication
- Policies/path access requests
- Pipeline integration
- Secret retrieval
- Token renewal
- Application onboarding

If Vault was centrally provided by a security/platform team, I would say:

> The core Vault platform was managed by the platform/security team. My responsibility was application and CI/CD integration, policy/access coordination, secret consumption and automation.

That is stronger than claiming platform administration you did not perform.

[Back to Index](#index)

---

<a id="q19"></a>
## Answer 19

I avoid designing applications around manually generated Vault tokens.

Vault tokens have a TTL and may be renewable depending on how they were created and the authentication method.

For a renewable token, renewal can be performed through Vault's token-renewal mechanism.

But in production, the preferred design is automated authentication and lifecycle management.

Conceptually:

```text
Application
    |
Authenticate using approved auth method
    |
Vault
    |
Issue short-lived token
    |
Application accesses secret
    |
Renew token when permitted
    OR
Re-authenticate when required
```

If the token is non-renewable or has reached its maximum TTL, the application must authenticate again to obtain a new token.

The important interview point is:

```text
Do not manually rotate application Vault tokens.
Automate authentication, renewal and re-authentication.
```

[Back to Index](#index)

---

<a id="q20"></a>
## Answer 20

Terraform is one of the primary tools I use for Infrastructure as Code.

My Terraform work includes areas such as:

- Resource groups
- Networking
- VNets/subnets
- NSGs
- AKS
- ACR
- Key Vault
- Managed identities
- Storage
- Monitoring resources
- RBAC
- Reusable modules
- Remote state
- Environment separation
- CI/CD integration

A typical workflow is:

```text
Requirement
   |
Terraform Module
   |
terraform fmt
   |
terraform validate
   |
Security Scan
   |
terraform plan
   |
Review/Approval
   |
terraform apply
```

I also work with state management, imports, module versioning, lifecycle behavior, drift detection and troubleshooting failed applies.

In an interview, I focus on concrete implementation rather than only stating a number of years.

[Back to Index](#index)

---

<a id="q21"></a>
## Answer 21

To make Terraform enterprise-ready, I focus on architecture, security, governance and automation.

My checklist includes:

1. Remote backend
2. State locking
3. State versioning/backups
4. Separate state per environment
5. Reusable modules
6. Module versioning
7. Provider version pinning
8. CI/CD execution
9. Pull-request reviews
10. `terraform plan` review
11. Production approval gates
12. IaC security scanning
13. Policy as Code
14. Least-privilege identities
15. No hardcoded secrets
16. Drift detection
17. Logging/auditing
18. Documentation
19. Naming/tagging standards
20. Disaster-recovery procedure for state

Typical flow:

```text
Git
 |
Pull Request
 |
fmt + validate
 |
Security/Policy Scan
 |
terraform plan
 |
Review
 |
Approval
 |
terraform apply
 |
Remote State
```

[Back to Index](#index)

---

<a id="q22"></a>
## Answer 22

I would state exactly which edition the project uses.

With Terraform open-source/CLI, the organization typically builds supporting capabilities itself using systems such as:

- GitLab/Azure DevOps/GitHub
- Azure Blob remote backend
- Pipeline approvals
- RBAC
- External policy/security tools

HCP Terraform/Terraform Enterprise provides a managed/platform-oriented workflow with capabilities around remote runs, governance, team collaboration, state and policy depending on the edition and configuration.

If my actual environment uses open-source Terraform, I would say:

> We use Terraform CLI/open-source integrated with Azure DevOps. State is stored remotely in Azure Blob Storage, and we implement approvals, security scanning, RBAC and pipeline controls through our DevOps platform.

[Back to Index](#index)

---

<a id="q23"></a>
## Answer 23

"TOFU" usually refers to **OpenTofu**.

OpenTofu is an open-source Infrastructure as Code tool that originated as a fork of Terraform after HashiCorp changed Terraform's licensing model.

It is under the Linux Foundation ecosystem and aims to remain open-source while maintaining a Terraform-like workflow.

The commands and HCL concepts are intentionally familiar:

```text
Terraform:
terraform init
terraform plan
terraform apply

OpenTofu:
tofu init
tofu plan
tofu apply
```

Conceptually, both manage infrastructure declaratively using providers, state and configuration.

Before migrating an enterprise project, I would validate:

- Provider compatibility
- Module compatibility
- State/backend compatibility
- CI/CD tooling
- Governance requirements
- Support model
- Feature differences

I would not migrate only because the CLI looks similar; it requires proper compatibility testing.

[Back to Index](#index)

---

<a id="q24"></a>
## Answer 24

For production, my preferred approach is CI/CD rather than engineers running Terraform manually from VMs.

Local/VM execution can be reasonable for:

- Initial development
- Troubleshooting
- Proof of concept
- Bootstrap scenarios
- Emergency controlled operations

But production automation should ideally be:

```text
Git Commit
   |
Pull Request
   |
terraform plan
   |
Approval
   |
Pipeline Identity
   |
terraform apply
```

Benefits include:

- Audit trail
- Repeatability
- Central credentials
- Approvals
- Consistent Terraform version
- Consistent provider versions
- Security scanning
- Reduced dependence on individual machines

If an interviewer asks why the current organization runs Terraform from a VM, I would explain the current constraint and then say what improvement I would recommend.

[Back to Index](#index)

---

<a id="q25"></a>
## Answer 25

For Azure, I store Terraform state remotely in an Azure Storage Account rather than keeping production state on an engineer's machine or in Git.

Example:

```text
Azure Storage Account
└── tfstate
    ├── dev.terraform.tfstate
    ├── qa.terraform.tfstate
    └── prod.terraform.tfstate
```

Benefits:

- Centralized state
- Team collaboration
- Locking
- Access control
- Versioning
- Recovery
- CI/CD compatibility

I protect the backend with Azure RBAC and enable versioning/soft delete.

Production state access is restricted to authorized identities.

[Back to Index](#index)

---

<a id="q26"></a>
## Answer 26

No. Committing Terraform state to GitLab is not a good practice.

Terraform state may contain sensitive values, resource metadata, connection information and sometimes secrets depending on the providers/resources used.

Even if the Git repository is private, Git introduces additional risks:

- History retains old versions
- More users may have repository access
- Clones create additional copies
- Secrets can persist after file deletion
- State locking is not provided by Git
- Concurrent modifications become dangerous

I store state in a supported remote backend such as Azure Blob Storage.

```text
GitLab
  |
Terraform Code
  |
CI/CD
  |
Azure Blob Backend
  |
terraform.tfstate
```

Git stores the desired configuration.

The remote backend stores Terraform state.

I also add Terraform state files to `.gitignore`.

[Back to Index](#index)

---

<a id="q27"></a>
## Answer 27

Terraform detects the difference when it refreshes/reads the current infrastructure during planning.

Suppose Terraform manages:

```text
VM-A
VM-B
```

Someone manually deletes `VM-B`.

The configuration still declares `VM-B`.

On the next plan, Terraform can detect that the managed object no longer exists and normally proposes recreating it.

Similarly, if someone manually modifies a managed property, Terraform may propose changing it back to match the Terraform configuration.

If someone manually creates a completely unrelated resource that Terraform does not manage, Terraform will not automatically delete it merely because it exists.

This is an important distinction:

```text
Managed resource changed manually
    -> Terraform detects drift

Unmanaged resource created manually
    -> Terraform generally ignores it
```

The exact plan depends on configuration, provider behavior and lifecycle settings.

[Back to Index](#index)

---

<a id="q28"></a>
## Answer 28

My drift-management strategy is both preventive and detective.

### Prevention

- Restrict manual production access
- Use CI/CD as the normal deployment path
- Apply RBAC
- Use Azure Policy
- Protect Git branches
- Require PR reviews
- Treat Git/Terraform as source of truth

### Detection

Run scheduled:

```bash
terraform plan
```

or use refresh-only planning when appropriate:

```bash
terraform plan -refresh-only
```

If drift is found:

```text
Drift Detected
      |
Determine Root Cause
      |
Was manual change valid?
     / \
   No   Yes
   |     |
Revert  Update Terraform code
   |     |
   +---> Plan
          |
        Apply
```

I don't automatically overwrite every drift without understanding why it occurred.

[Back to Index](#index)

---

<a id="q29"></a>
## Answer 29

A realistic example is an NSG rule manually modified during troubleshooting.

Suppose Terraform defines:

```text
Inbound:
443 -> Allowed
22  -> Denied
```

An engineer temporarily opens port 22 through the Azure Portal.

The next Terraform plan shows a difference.

My process is:

1. Confirm who made the change and why.
2. Determine whether it was temporary or a legitimate new requirement.
3. If temporary, let Terraform restore the desired configuration.
4. If legitimate, update Terraform code through a pull request.
5. Run `terraform plan`.
6. Review and apply through CI/CD.
7. Strengthen access/process controls if the drift was unauthorized.

The key point is not simply fixing drift; it is ensuring the declared Terraform configuration becomes the source of truth again.

[Back to Index](#index)

---

<a id="q30"></a>
## Answer 30

For a Hazelcast/Java workload, I would describe the implementation in layers.

A typical setup is:

```text
Hazelcast / Java Application
        |
OpenTelemetry / Java Agent
        |
Traces + Metrics
        |
Collector / APM Integration
        |
AppDynamics / Observability Backend
        |
Dashboards + Alerts
```

The implementation generally includes:

1. Identify application runtime and deployment model.
2. Add the appropriate Java monitoring/instrumentation agent.
3. Configure agent startup options/environment variables.
4. Configure application/service name and environment metadata.
5. Configure controller/collector endpoint and authentication securely.
6. Restart/roll out the application.
7. Verify agent registration.
8. Verify transactions/traces.
9. Validate JVM metrics.
10. Configure dashboards and health rules.
11. Configure alerts.
12. Test the monitoring path under actual application traffic.

For containerized workloads, these settings should be automated through deployment manifests, Helm values or pipeline configuration rather than manually changing every server.

For OpenTelemetry specifically, I also verify whether telemetry is being generated using automatic instrumentation, application SDK/manual instrumentation, or both.

[Back to Index](#index)

---

<a id="q31"></a>
## Answer 31

It can be either, depending on the application and telemetry requirement.

### Auto-instrumentation

For Java, an OpenTelemetry Java agent can instrument supported frameworks without changing application source code.

Example concept:

```text
java
-javaagent:opentelemetry-javaagent.jar
-jar application.jar
```

Advantages:
- Faster onboarding
- Minimal code changes
- Standard HTTP/database/framework telemetry

### Manual instrumentation

Developers use OpenTelemetry SDK/API in application code to create custom spans, attributes or metrics.

Example requirement:

```text
Payment Processing
    |
Custom business span
    |
payment.type
payment.region
payment.status
```

I use auto-instrumentation for standard technical visibility and manual instrumentation when we need application-specific business context or unsupported/custom flows.

They can also be used together.

[Back to Index](#index)

---

<a id="q32"></a>
## Answer 32

For five applications, I would automate onboarding rather than manually configuring each one unless this is a one-time proof of concept.

I create a standardized onboarding pipeline/template.

Input might include:

```text
Application Name
Environment
Technology
Java / .NET
Deployment Platform
Controller Details
Business Unit
Alerting Requirements
```

The automation determines the appropriate agent and configuration.

Example:

```text
Application Onboarding Request
           |
           v
Detect/Select Runtime
      /          \
    Java         .NET
     |             |
Java Agent      .NET Agent
      \           /
       Configuration
            |
        Deployment
            |
       Verification
            |
   Dashboards / Alerts
```

This improves consistency and makes onboarding repeatable.

[Back to Index](#index)

---

<a id="q33"></a>
## Answer 33

A mature AppDynamics onboarding pipeline can perform:

```text
Input Validation
      |
Determine Application Runtime
      |
Retrieve Agent Package/Image
      |
Apply Configuration
      |
Retrieve Credentials Securely
      |
Deploy Agent
      |
Restart/Rollout Workload
      |
Validate Agent Registration
      |
Configure Monitoring Standards
      |
Validate Telemetry
```

Typical automation activities include:

- Select correct Java/.NET agent
- Set application name
- Set tier/service name
- Set node naming strategy
- Configure controller endpoint
- Retrieve access credentials from a secure store
- Inject environment-specific settings
- Deploy/update workload
- Verify application health
- Verify AppDynamics registration
- Configure standard health rules/alerts where APIs/automation support it
- Send onboarding status

For Kubernetes, I prefer reusable Helm/manifests/operator-based patterns where appropriate rather than manually installing agents into individual pods.

[Back to Index](#index)

---

<a id="q34"></a>
## Answer 34

The agents are different because the runtimes are different.

For example:

```text
Java Application
      |
AppDynamics Java Agent
      |
JVM instrumentation


.NET Application
      |
AppDynamics .NET Agent
      |
CLR/.NET instrumentation
```

The agents need runtime-specific instrumentation mechanisms to capture:

- Method execution
- Exceptions
- Transactions
- Database calls
- External calls
- Runtime metrics

The controller/backend may be common, but the application agents are runtime-specific.

So:

```text
Same observability platform
        !=
Same runtime agent
```

[Back to Index](#index)

---

<a id="q35"></a>
## Answer 35

For AppDynamics APM agents, the application agent collects telemetry from the instrumented application and sends/report data to the AppDynamics Controller.

Conceptually:

```text
Application
     |
AppDynamics Agent
     |
Telemetry
     |
     v
AppDynamics Controller
```

So from the telemetry transport perspective, I describe the agent as reporting/pushing collected monitoring data toward the controller rather than the controller periodically scraping every application's metrics in the Prometheus-style pull model.

The exact communication behavior and supported intermediaries can vary by agent/platform version, so I avoid oversimplifying protocol internals beyond what is needed for the interview.

[Back to Index](#index)

---

<a id="q36"></a>
## Answer 36

Agent installation is only the first part of observability.

My responsibility should cover the monitoring lifecycle where it falls within my team's scope:

```text
Agent Deployment
      |
Application Discovery
      |
Transaction Visibility
      |
Dashboards
      |
Health Rules
      |
Alerts
      |
Incident Troubleshooting
      |
Tuning
```

I would typically work on:

- Agent configuration
- Application/tier/node naming
- Business transaction visibility
- JVM/.NET runtime metrics
- Infrastructure correlation
- Health rules
- Alert thresholds
- Dashboards
- Notification integration
- Troubleshooting missing telemetry
- Performance incident analysis

The goal is not "agent installed successfully."

The goal is actionable observability.

[Back to Index](#index)

---

<a id="q37"></a>
## Answer 37

A good real-world example is an application response-time degradation.

Suppose users report that an API that normally responds in under one second is taking several seconds.

My troubleshooting flow would be:

```text
User Reports Slowness
        |
AppDynamics Dashboard
        |
Response Time Spike
        |
Identify Slow Business Transaction
        |
Call Graph / Snapshot
        |
Find Slow Downstream Call
        |
Database / External Service
        |
Root Cause
```

Example:

AppDynamics shows:

```text
/api/orders
Average response time: 6 seconds
```

Transaction analysis shows:

```text
Application processing: 300 ms
Database query:         5.2 sec
Other calls:            500 ms
```

Now I know the majority of the delay is database-related rather than CPU or application code generally.

I then correlate:
- Database response time
- Query behavior
- Connection pool
- CPU/memory
- Recent deployments
- Infrastructure events

Suppose the root cause is a slow query caused by a missing index after a schema change.

The database/application team fixes the query/index.

Then I validate in AppDynamics that:

```text
Response Time
6 sec
  |
  v
700 ms
```

The key value is reducing mean time to resolution by identifying where time is actually being spent across the transaction.

[Back to Index](#index)

---

<a id="q38"></a>
## Answer 38

The core strength of AppDynamics is application performance monitoring with end-to-end transaction visibility and correlation.

Traditional infrastructure monitoring might tell me:

```text
CPU = 85%
Memory = 70%
```

That tells me the server is busy, but not necessarily which business transaction is slow or why.

APM can provide:

```text
User Request
     |
Frontend/API
     |
Service A
     |
Service B
     |
Database
```

and help answer:

```text
Which transaction is slow?

Which service caused the delay?

Was it application code?

Database?

External API?

Runtime/JVM?

Infrastructure?
```

Key capabilities include:

- Business transaction monitoring
- Application topology
- Transaction snapshots
- Call graphs
- Error monitoring
- JVM/.NET visibility
- Database/external-call correlation
- Health rules
- Alerts
- Dashboards
- Performance baselining

In short:

```text
Infrastructure Monitoring
-> Is the server healthy?

APM / AppDynamics
-> Is the application healthy, which transaction is affected,
   and where is the performance bottleneck?
```

That is why AppDynamics is particularly useful for troubleshooting complex distributed applications and reducing MTTR.

[Back to Index](#index)
