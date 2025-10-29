1. What is Kubernetes?
  Kubernetes is an open-source container orchestration platform.
  It automates deployment, scaling, and management of containerized applications.

2. What is a Pod in Kubernetes?
   A pod is the smallest deployable unit in Kubernetes.
   It can contain one or more containers that share storage and network.

3. What is a ReplicaSet?
   Ensures a specified number of identical pods are running at any time.
   Automatically replaces crashed or deleted pods.

4. What is the difference between a Pod and a Deployment?
   Pod is a single instance of a running container.
   Deployment manages a ReplicaSet, which manages Pods — it ensures desired state, handles updates/rollbacks.

5. What is a Service in Kubernetes?
   Abstracts access to a set of Pods.Provides stable network endpoint (ClusterIP, NodePort, LoadBalancer).

6. What are the types of Services in Kubernetes?
     ClusterIP: default, internal access only.
     NodePort: exposes pod via static port on each node.
     LoadBalancer: exposes app using external cloud load balancer.
     ExternalName: maps to external DNS name.

7. What is a Namespace?
   Logical cluster division to isolate resources (like environments: dev, test, prod).

8. What is a ConfigMap and a Secret?
   ConfigMap: stores non-sensitive config like app settings.
   Secret: stores sensitive data like passwords, tokens, and certs.

https://freedium.cfd/https://medium.com/@nirbhaysingh281/basic-kubernetes-interview-questions-95fce896cc98

10. What is a DaemonSet?
   Ensures a pod runs on every node in the cluster (e.g., log collectors or monitoring agents).

11. What is a StatefulSet?
   Used for stateful applications (like databases).
   Maintains sticky identity: each pod has a stable name and storage.
