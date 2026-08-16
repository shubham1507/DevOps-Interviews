# Azure / Docker / Jenkins / Linux Interview Questions & Answers

## Index

1. [How securely one will set up 3 tier application on Azure](#q1)
2. [Difference between public IP and private IP](#q2)
3. [How 2 services will communicate with each other — DB and middleware](#q3)
4. [How to reduce the size of Docker image](#q4)
5. [Have you used Python in Azure Function](#q5)
6. [How to make sure data persists even after container is deleted](#q6)
7. [Explain the process of creating an image of an application and tagging it with v1 using Jenkins pipeline](#q7)
8. [What things will you monitor while a 3-tier application is running](#q8)
9. [How have you integrated JFrog and Jenkins](#q9)
10. [What sort of services have you used in Azure](#q10)
11. [How to create n users on m number of Linux machines](#q11)

---

<a id="q1"></a>
## Answer 1

For a secure 3-tier application on Azure, I would separate the application into:

```text
Presentation Tier
Application / Middleware Tier
Database Tier
```

A secure architecture could look like:

```text
Internet
   |
Azure Front Door / Application Gateway
   |
WAF
   |
Frontend Tier
   |
Private Communication
   |
Middleware / Application Tier
   |
Private Communication
   |
Database Tier
```

I would place the tiers in separate subnets.

Example:

```text
VNet: 10.10.0.0/16

Frontend Subnet:
10.10.1.0/24

Application Subnet:
10.10.2.0/24

Database Subnet:
10.10.3.0/24
```

The main security controls I would implement are:

1. Expose only the frontend/load balancer publicly.
2. Keep middleware and database on private IP addresses.
3. Use NSGs to allow only required traffic between tiers.
4. Use Application Gateway WAF or Front Door WAF.
5. Use Azure Key Vault for secrets.
6. Use managed identities instead of hardcoded credentials.
7. Use Private Endpoints for PaaS services where possible.
8. Enable TLS for external and internal communication.
9. Use Azure Firewall where centralized traffic inspection is required.
10. Enable Azure Monitor, Log Analytics, Application Insights or AppDynamics.
11. Use Microsoft Defender for Cloud and Azure Policy.
12. Restrict administrative access using Bastion, VPN or private connectivity.
13. Use RBAC and least privilege.
14. Enable database encryption, backups and auditing.
15. Deploy infrastructure through Terraform/CI-CD rather than manual production changes.

Example NSG logic:

```text
Internet
   |
   | 443
   v
Frontend

Frontend
   |
   | Only application port
   v
Middleware

Middleware
   |
   | Only DB port
   v
Database

Internet
   X
Database
```

For example:

```text
Frontend -> Middleware : 8080
Middleware -> SQL DB    : 1433
Internet -> Frontend    : 443
Internet -> DB          : DENY
```

The key principle is:

```text
Public exposure only where required
        +
Network segmentation
        +
Least privilege
        +
Private connectivity
        +
Centralized secrets
        +
Monitoring
```

[Back to Index](#index)

---

<a id="q2"></a>
## Answer 2

A public IP address is reachable through the public internet, while a private IP is used for communication inside a private network.

Example:

```text
Public IP:

20.x.x.x

Private IP:

10.x.x.x
172.16.x.x - 172.31.x.x
192.168.x.x
```

Public IP use cases:

```text
Internet
   |
Public IP
   |
Load Balancer / Gateway
```

Private IP use cases:

```text
Application Server
      |
Private IP
      |
Database Server
```

Main difference:

| Public IP | Private IP |
|---|---|
| Internet routable | Internal/private network |
| Globally reachable if security allows | Not directly reachable from internet |
| Used for public-facing endpoints | Used for backend communication |
| Requires stronger exposure controls | Reduces external attack surface |

In a production 3-tier application, I generally expose the application through a load balancer, Application Gateway or Front Door and keep the application and database tiers private.

[Back to Index](#index)

---

<a id="q3"></a>
## Answer 3

If middleware needs to communicate with the database, I prefer private connectivity rather than sending database traffic through the public internet.

Example:

```text
Middleware
10.10.2.10
    |
    | TCP 1433
    v
Database
10.10.3.10
```

The communication can happen using:

- Private IP
- Internal DNS
- Private Endpoint
- Service endpoint depending on service/design
- VNet integration

For Azure SQL, a preferred architecture can be:

```text
Middleware
   |
VNet
   |
Private Endpoint
   |
Azure SQL
```

Then I configure NSG/firewall rules to allow only required ports.

Example:

```text
Source:
Application Subnet

Destination:
Database subnet/private endpoint

Port:
1433

Action:
Allow
```

All other unnecessary access should be denied.

For authentication, I prefer:

```text
Managed Identity
    |
Azure SQL / Key Vault
```

instead of storing username/password directly in application configuration.

If passwords are required, they should come from Key Vault.

[Back to Index](#index)

---

<a id="q4"></a>
## Answer 4

I reduce Docker image size using several techniques.

### 1. Use smaller base images

Instead of:

```dockerfile
FROM ubuntu:latest
```

use something appropriate and smaller, for example:

```dockerfile
FROM python:3.13-slim
```

or where compatible:

```dockerfile
FROM alpine
```

### 2. Use multi-stage builds

Example:

```dockerfile
FROM node:22 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build


FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html
```

The final image contains only runtime files, not the full build toolchain.

### 3. Use `.dockerignore`

Example:

```text
.git
.gitignore
README.md
node_modules
tests
logs
*.tmp
```

This prevents unnecessary content from being copied into the image.

### 4. Remove package-manager cache

Example:

```dockerfile
RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*
```

### 5. Install only production dependencies

For Node.js:

```bash
npm ci --omit=dev
```

### 6. Avoid unnecessary packages

Don't install tools such as:

```text
vim
git
gcc
curl
wget
```

in the runtime image unless genuinely required.

### 7. Combine related RUN statements

This reduces unnecessary intermediate layers.

### 8. Don't store logs or temporary files inside the image.

A strong answer is:

```text
Small base image
+
Multi-stage build
+
.dockerignore
+
No build tools in runtime image
+
Remove caches
+
Install only production dependencies
```

[Back to Index](#index)

---

<a id="q5"></a>
## Answer 5

Yes, Python can be used in Azure Functions for event-driven and serverless workloads.

A typical use case could be:

```text
File Uploaded to Blob Storage
          |
          v
Azure Function
   Python Runtime
          |
Process File
          |
Write Result to Storage/DB
```

Other triggers include:

- HTTP trigger
- Timer trigger
- Blob trigger
- Queue trigger
- Service Bus trigger
- Event Grid trigger

Example Python HTTP-triggered function concept:

```python
import azure.functions as func

app = func.FunctionApp()

@app.route(route="health")
def health(req: func.HttpRequest) -> func.HttpResponse:
    return func.HttpResponse("Application is healthy")
```

In production I would also consider:

- Managed identity
- Application settings
- Key Vault references
- Logging
- Application Insights
- Retry handling
- Timeout
- Idempotency
- Dependency management
- Consumption/Premium/App Service hosting choice

I would use Azure Functions when the workload is event-driven and does not justify managing a continuously running server.

[Back to Index](#index)

---

<a id="q6"></a>
## Answer 6

Container storage is ephemeral by default.

If I delete the container, data written only inside its writable layer can be lost.

For example:

```text
Container
   |
/app/data
   |
Container deleted
   |
Data lost
```

To persist data, I use external persistent storage.

For Docker:

```bash
docker volume create app-data
```

Then:

```bash
docker run \
  -v app-data:/app/data \
  myapp:v1
```

Now:

```text
Container
    |
Docker Volume
    |
Persistent Data
```

If the container is deleted and recreated:

```text
New Container
      |
Same Volume
      |
Existing Data
```

In Kubernetes, I use:

```text
PersistentVolume
      +
PersistentVolumeClaim
```

Example:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: app-data
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 10Gi
```

Then the pod mounts the PVC.

In Azure AKS, the underlying storage may be:

- Azure Disk
- Azure Files
- Other CSI-based persistent storage

The key rule is:

```text
Never rely on a container's writable layer for persistent application data.
```

[Back to Index](#index)

---

<a id="q7"></a>
## Answer 7

A typical Jenkins Docker image pipeline is:

```text
Developer
   |
Git Commit
   |
Jenkins
   |
Checkout Code
   |
Build Application
   |
Build Docker Image
   |
Tag Image
   |
Security Scan
   |
Push Image to Registry
```

For example:

```text
Application:
myapp

Version:
v1

Final image:
myregistry.azurecr.io/myapp:v1
```

Example Jenkinsfile:

```groovy
pipeline {
    agent any

    environment {
        IMAGE_NAME = "myapp"
        IMAGE_TAG  = "v1"
        REGISTRY   = "myregistry.azurecr.io"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Application') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build \
                  -t ${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }

        stage('Login to Registry') {
            steps {
                sh '''
                docker login ${REGISTRY} \
                  -u $REGISTRY_USER \
                  -p $REGISTRY_PASSWORD
                '''
            }
        }

        stage('Push Image') {
            steps {
                sh '''
                docker push \
                  ${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }
    }
}
```

The flow becomes:

```text
Source Code
   |
Dockerfile
   |
docker build
   |
myapp:v1
   |
docker push
   |
Azure Container Registry / JFrog
```

In a real production pipeline, I prefer dynamic tags instead of permanently using only `v1`.

For example:

```text
myapp:1.0.15
myapp:${BUILD_NUMBER}
myapp:${GIT_COMMIT}
```

Example:

```groovy
IMAGE_TAG = "${BUILD_NUMBER}"
```

This provides traceability.

A production pipeline may also include:

```text
Unit Test
   |
Build
   |
Docker Build
   |
Image Scan
   |
Push
   |
Deploy
```

[Back to Index](#index)

---

<a id="q8"></a>
## Answer 8

For a 3-tier application, I monitor the complete request path, not just CPU and memory.

Architecture:

```text
Frontend
   |
Middleware
   |
Database
```

### Frontend/Application metrics

I monitor:

- Response time
- Request count
- Error rate
- HTTP 4xx
- HTTP 5xx
- Availability
- Active users
- Throughput
- Failed transactions

### Middleware metrics

I monitor:

- API response time
- Thread utilization
- JVM/CLR metrics
- Heap
- Garbage collection
- CPU
- Memory
- Connection pools
- Queue depth
- External API latency
- Application exceptions

### Database metrics

I monitor:

- Query latency
- Slow queries
- CPU
- Memory
- Connections
- Deadlocks
- Locks
- Transaction rate
- Storage
- IOPS
- Replication health where applicable

### Infrastructure

I monitor:

```text
CPU
Memory
Disk
Network
Pod/VM availability
Node health
Filesystem
Load balancer health
```

### Kubernetes

For AKS:

```text
Pod restarts
Pod status
Node status
CPU requests/limits
Memory requests/limits
OOMKilled events
HPA activity
Cluster autoscaler
Ingress errors
```

### Security

I monitor:

- Authentication failures
- WAF blocks
- Suspicious network traffic
- Privilege changes
- Key Vault access
- Unexpected administrative operations

### Business metrics

Examples:

```text
Orders/minute
Payments/minute
Successful transactions
Failed transactions
```

A good observability model is:

```text
Metrics
+
Logs
+
Traces
+
Alerts
```

Tools may include:

- Azure Monitor
- Log Analytics
- Application Insights
- AppDynamics
- OpenTelemetry
- Splunk
- Prometheus/Grafana

[Back to Index](#index)

---

<a id="q9"></a>
## Answer 9

JFrog Artifactory can be integrated with Jenkins as an artifact repository.

A typical pipeline is:

```text
Developer
   |
Git
   |
Jenkins
   |
Build
   |
Package
   |
Upload Artifact
   |
JFrog Artifactory
```

For Docker:

```text
Git
 |
Jenkins
 |
Docker Build
 |
myapp:1.0.1
 |
JFrog Artifactory
```

Integration usually involves:

1. Configure JFrog repository.
2. Create service credentials/token.
3. Store credentials securely in Jenkins Credentials.
4. Configure the JFrog/Jenkins integration or use CLI/API.
5. Build artifact.
6. Upload artifact.
7. Publish build metadata.
8. Optionally scan artifacts through JFrog Xray.
9. Promote approved artifacts between repositories/environments.

Example conceptual Jenkins pipeline:

```groovy
pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Upload to JFrog') {
            steps {
                sh '''
                  jf rt upload \
                  "target/*.jar" \
                  "libs-release-local/myapp/"
                '''
            }
        }
    }
}
```

For Docker:

```bash
docker build -t jfrog.example.com/docker/myapp:v1 .

docker push jfrog.example.com/docker/myapp:v1
```

A more mature flow is:

```text
Build
 |
Unit Test
 |
SAST/SCA
 |
Package
 |
Upload JFrog
 |
Xray Scan
 |
Promote
 |
Deploy
```

The important principle is that applications should deploy from a trusted artifact repository instead of rebuilding arbitrary source independently for every environment.

[Back to Index](#index)

---

<a id="q10"></a>
## Answer 10

I would explain Azure services by category rather than simply listing names.

### Compute

```text
Azure Virtual Machines
VM Scale Sets
App Service
Azure Functions
AKS
```

### Containers

```text
Azure Kubernetes Service
Azure Container Registry
```

### Networking

```text
VNet
Subnet
NSG
Azure Load Balancer
Application Gateway
Azure Front Door
Private Endpoint
Private DNS
VNet Peering
Public IP
Azure Firewall
```

### Identity and Security

```text
Microsoft Entra ID
Managed Identity
Service Principal
Azure RBAC
Azure Key Vault
Azure Policy
Defender for Cloud
```

### Storage

```text
Storage Account
Blob Storage
Azure Files
Managed Disks
```

### Monitoring

```text
Azure Monitor
Log Analytics
Application Insights
Alerts
```

### DevOps

```text
Azure Repos
Azure Pipelines
Service Connections
Azure Boards
```

### Infrastructure as Code

```text
Terraform
ARM/Bicep concepts
Ansible
```

A concise interview answer could be:

```text
My main hands-on Azure areas are networking, AKS, VMs,
container registry, Key Vault, managed identities, RBAC,
storage, Azure Monitor/Log Analytics and Azure DevOps.

I have used Terraform for provisioning and Azure DevOps/Jenkins
for CI/CD automation around these services.
```

[Back to Index](#index)

---

<a id="q11"></a>
## Answer 11

If I need to create N users across M Linux machines, I would use Ansible rather than manually logging into every server.

For example:

```text
Users:

user1
user2
user3

Servers:

server1
server2
server3
server4
```

Inventory:

```ini
[linux_servers]
server1
server2
server3
server4
```

Playbook:

```yaml
---
- name: Create users on Linux servers
  hosts: linux_servers
  become: yes

  vars:
    users:
      - name: user1
        shell: /bin/bash
      - name: user2
        shell: /bin/bash
      - name: user3
        shell: /bin/bash

  tasks:

    - name: Create users
      ansible.builtin.user:
        name: "{{ item.name }}"
        shell: "{{ item.shell }}"
        state: present
        create_home: yes
      loop: "{{ users }}"
```

Run:

```bash
ansible-playbook -i inventory.ini create-users.yml
```

Flow:

```text
Ansible Controller
       |
       +---------> Server1
       |
       +---------> Server2
       |
       +---------> Server3
       |
       +---------> Server4

On each server:

user1
user2
user3
```

If each user needs an SSH public key:

```yaml
---
- name: Create users and configure SSH access
  hosts: linux_servers
  become: yes

  vars:
    users:
      - name: user1
        key: "ssh-rsa AAAA..."
      - name: user2
        key: "ssh-rsa BBBB..."

  tasks:

    - name: Create users
      ansible.builtin.user:
        name: "{{ item.name }}"
        shell: /bin/bash
        create_home: yes
        state: present
      loop: "{{ users }}"

    - name: Add authorized SSH keys
      ansible.posix.authorized_key:
        user: "{{ item.name }}"
        key: "{{ item.key }}"
        state: present
      loop: "{{ users }}"
```

For a larger enterprise setup, I would keep user data outside the playbook.

Example structure:

```text
ansible/
├── inventory.ini
├── group_vars/
│   └── all.yml
└── create-users.yml
```

`group_vars/all.yml`:

```yaml
users:
  - name: devops1
    shell: /bin/bash

  - name: devops2
    shell: /bin/bash

  - name: support1
    shell: /bin/bash
```

Then the reusable playbook:

```yaml
---
- name: Manage Linux users
  hosts: linux_servers
  become: yes

  tasks:

    - name: Ensure required users exist
      ansible.builtin.user:
        name: "{{ item.name }}"
        shell: "{{ item.shell }}"
        create_home: yes
        state: present
      loop: "{{ users }}"
```

This scales because:

```text
N Users
    X
M Servers
```

does not require:

```text
N x M manual SSH sessions.
```

Ansible performs the same desired-state operation across all targeted machines.

A strong interview answer is:

> I would create an inventory group containing all Linux machines and define the required users as a list. Then I would use the Ansible `user` module with a loop. Ansible executes the task idempotently on every targeted host, so if a user already exists it won't unnecessarily recreate it. For enterprise use, I keep user definitions in `group_vars` and can also manage groups, sudo privileges and authorized SSH keys through the same automation.

[Back to Index](#index)
