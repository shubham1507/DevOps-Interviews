Here are all 35 questions shared in this conversation, grouped by topic. Numbers match the assessment.
Jenkins and CI/CD — 5 questions
What is the purpose of Jenkins plugins?
Why might a Jenkins pipeline use different agents for different stages?
A Jenkins pipeline using Kubernetes agents remains stuck in “Pending” status. What would you investigate?
A Jenkinsfile change was merged, and all subsequent builds started failing. How would you identify the cause?
A Kubernetes agent pod starts, but the build fails with mvn: command not found. What would you check?
Given configuration: the builder container uses alpine:latest and executes mvn clean package.
Kubernetes Architecture and Workload Management — 7 questions
What are the risks of running both control plane components and application workloads on the same node?
Explain the purpose of taints and tolerations and a scenario where they are preferable to node selectors.
What indicators would suggest that etcd is becoming a bottleneck in a Kubernetes cluster?
A cluster contains thousands of namespaces and tens of thousands of pods. API server CPU usage suddenly spikes, and developers report slow kubectl responses. How would you determine whether the issue is caused by user activity, controllers, or admission webhooks?
Why are StatefulSets preferable to Deployments for systems that require stable network identities and ordered startup, such as databases?
A production application running with five replicas suddenly loses two pods due to a node failure. How does Kubernetes restore availability, and what would you verify if replacement pods are not created?
A critical application uses anti-affinity rules to spread replicas across nodes. During a node outage, several replicas remain Pending. Why might this happen?
Kubernetes Networking and Service Mesh — 2 questions
Why are port names on Kubernetes Service ports significant for some protocols and controllers?
A service mesh is introduced, and application latency increases. What networking areas would you investigate?
Kubernetes Security — 2 questions
What is RBAC in Kubernetes, and why is it important for application teams?
Your application uses a shared ServiceAccount across multiple workloads. What risks would you highlight during a security review?
Terraform Fundamentals and Modules — 3 questions
Why are variables used in Terraform?
What role do input variables play in Terraform modules?
What considerations determine whether a module’s API change should be a major version versus a minor version in semantic versioning, especially for private organizational modules?
Terraform State, Drift, and Migration — 6 questions
Explain how to import an existing cloud resource into Terraform state and three important checks you must perform after import.
Describe how race conditions can arise in Terraform when using dynamic resource creation patterns, and explain three techniques to control or eliminate such races.
How does Terraform detect drift, and what command do you run to update its local view of remote infrastructure before creating a plan?
You opened your repository and found terraform.tfstate.local accidentally present in the repo. What immediate steps do you take, and why?
What happens when a Terraform state file grows too large, and how would you manage it?
Design a migration plan to split a monolithic Terraform state containing networking, compute, and database resources into separate states for each domain. Include risk mitigation, sequencing, and verification steps.
Terraform CI/CD and IAM — 2 questions
Describe how to design least-privilege IAM for the service account or identity used by CI to run Terraform against cloud provider APIs.
A GitLab pipeline frequently fails due to concurrent Terraform runs. How can this be handled?
Prometheus Monitoring and Batch Jobs — 2 questions
What is cAdvisor in the Prometheus ecosystem?
A team uses Prometheus Pushgateway to push per-execution metrics for batch jobs, such as job duration, success status, and run ID. What are the semantic limitations or pitfalls of using Pushgateway for job-level metrics, and what alternative approaches would you recommend for accurately monitoring batch jobs?
Prometheus Discovery, Cardinality, Relabeling, and PromQL — 4 questions
After adding a new application label to your metrics, Prometheus starts creating many new time series with high churn in a large Kubernetes environment. You have three options:
Roll back the label change—slow.
Drop or modify labels using Prometheus relabeling—quick, but may affect performance.
Fix application instrumentation—requires developer effort.
How would you decide what to do immediately and long term, and how would you verify that the solution works?
In a Kubernetes setup using ServiceMonitor, both selector and namespaceSelector are used to discover targets. Explain how they work together to determine which endpoints are scraped, common mistakes, and how you would test the configuration.
You have a complex set of Prometheus relabeling rules that have grown over time and become difficult to maintain. How would you clean up and simplify them without breaking existing alerts or monitoring behavior? Describe a safe, step-by-step approach.
Explain how the without modifier in an aggregation behaves differently from aggregating and then dropping labels using label_replace. Give a situation where without yields a safer or more efficient result.
Grafana / Dashboard Design — 2 questions
Explain how the order of transformations—for example, filter, join, pivot, and aggregate—can change a panel’s result, and how you would validate correctness when designing a transformation chain.
A dashboard retrieves data from a source whose schema changes frequently, causing queries to fail or return unexpected results. What design approach should be followed?