### 1. In Kubernetes, simplify the lifecycle management of containerized applications by:
- restarting of unresponsive pods
- application rollour strategies

### 2. For lifecycle management in Kubernetes,
- Developers declare the application state in a resource manifest, while Kubernetes ensures the application state is identical to the declared state. This is the declarative approach. 

### 3. To create an application that uses the provided parameters:
- - Application name is lb-v1.
- - Application is based on the lb:v1 image.
- - Application should restart automatically if it crashes.
- Use the command: ```kubectl run lb-v1 -- lb:v1``` **WRONG-CHECK**

### 4. Consider the provided resource manifest/code below. 
```
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: sso
  name: sso
spec:
  replicas: 2
  selector:
    matchLabels:
      app: sso
  template:
    metadata:
      labels:
        app: sso
    spec:
      containers:
      - image: redhat/sso:latest
        name: redhat-sso
```
We can say that:
- The provided manifest declares a **Deployment** resource that manages two **Pod** replicas.
- The resource uses the **redhat/sso:latest** container image.

### 5. Considering again the previously provided resource manifest, we can also say that:
- The ```spec.template.metadata.labels``` configures the label applied to pods.
- The ```spec.replicas``` property configures the number of replicas.

### 6. In attempt to Deploy resource by using the ***kubectl*** utility. However, it returns the provided error message:
```
[user@host ~] $ kubectl create -f deployment.yaml
The Deployment "sso" is invalid: spec.template.metadata.labels: Invalid value:
 map[string]string{"app":"keycloak"}: `selector` does not match template `labels`
```
the likely cause of the error message is:
- Misconfiguration in the resource manifest. The ```spec.template.metadata.labels``` property likely does not match the ```spec.selector.matchLabels``` property.

### 7. In Kubernetes networking and containers...
- Each Kubernetes pod has a unique IP address.

### 8. To connect the **sso** and **api** application pods. Based on the provided requirements below:
-- The sso pods must reach api pods. 
-- The api pods scale up at 4pm due to peak traffic. 
-- The api pods scale down at 9pm due to reduced traffic. 
-- All traffic is internal to the Kubernetes cluster. 
- Create a **Service** resource of type **ClusterIP** that routes requests to the **api** pods. This ensures that the **sso** pods always reach the **api** pods.

### 9. Based on the provided description below:
-- Route requests to a deployment named portal.
-- Listen on port 443.
-- Route request to port 8443.
 write this command to creates a Service resource: ```kubectl expose deployment/portal --port 443 --target-port 8443```

### 10. In Kubernetes Service resource: 
- **ClusterIP** type services simplify discovering IP addresses of new pods by providing a stable IP address that routes requests to a set of specified pods. 
- Pods can reach services by using DNS names.

### 11. In Kubernetes Ingress resource:
- The Ingress resource routes external traffic into the Kubernetes cluster.

### 12. Dealing with resource limits and resource requests in Kubernetes:
- Resource requests configure the minimum resources for an application container.
- Resource limits prevent an application container from consuming more resources than configured.

### 13. Operating an application that is running in a Kubernetes cluster. You discover that the application becomes unresponsive after around 3000 served clients, probably due to a memory leak. The recommended suitable temporary solution for the issue until the core development team fixes the issue is:
- You can configure a liveness probe and restart the application when it becomes unresponsive. This is useful because it minimizes the downtime of the application without the need for manual intervention. 

### 14. When it comes to **ConfigMap** and **Secret** resources:
- The Secret resource stores data in an encrypted format. **WRONG-CHECK**
- The **ConfigMap** resource is suitable for storing non-sensitive data.

### 15. When you want to expose the **ConfigMap** and **Secret** resources to your application:
- You can inject the values as environment variables.
- You can mount all keys as files.

### 16. Externalizing application configuration:
- Means removing the values from application source code and reading the values at runtime, for example from environment variables.
- Developers can use the **ConfigMap** and **Secret** Kubernetes resources to externalize application configuration.

### 17. Your team just finished the development of a new feature. You decide to test the feature by using a production environment. However, you do not want to expose the feature to users. You can use:
- **Blue-green deployment** as deployment strategy

### 18. Consider the following Deployment resource configuration below:
```
spec:
  replicas: 10
  strategy: {}
```
it means that...
- The update strategy defaults to the **RollingUpdate** strategy.

### 19. For Deployment strategies: 
- Developers configure some deployment strategies, such as the **Recreate** and **RollingUpdate** strategies, in the **Deployment** resource manifest.
- Developers must configure advanced deployment strategies by using the Kubernetes ingress router.

### 20. The commands that shows you the deployment strategy of a Deployment resource in a Kubernetes cluster: 
- ```kubectl describe deployment example```
