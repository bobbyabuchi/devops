1. In Kubernetes, simplify the lifecycle management of containerized applications by:
- restarting of unresponsive pods
- application rollour strategies

2. In lifecycle management in Kubernetes,
- Developers declare the application state in a resource manifest. Kubernetes ensures the application state is identical to the declared state. This is the declarative approach. 

3. To create an application that uses the provided parameters:
- - Application name is lb-v1.
- - Application is based on the lb:v1 image.
- - Application should restart automatically if it crashes.
- Use the command: ```kubectl run lb-v1 -- lb:v1``` WRONG-CHECK

4. Consider the provided resource manifest. Which two of the following statements about the manifest are correct? (Choose two.)
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
- The provided manifest declares a Deployment resource that manages two Pod replicas.
- The resource uses the redhat/sso:latest container image.

5. Consider the previously provided resource manifest. Which two of the following statements about the manifest are correct? (Choose two.)
- The ```spec.template.metadata.labels``` configures the label applied to pods.
- The ```spec.replicas``` property configures the number of replicas.

6. You tried to create a Deployment resource by using the kubectl utility. However, kubectl returns the provided error message. Which of the following statements is the likely cause of the error message? (Choose one.)  
```
[user@host ~] $ kubectl create -f deployment.yaml
The Deployment "sso" is invalid: spec.template.metadata.labels: Invalid value:
 map[string]string{"app":"keycloak"}: `selector` does not match template `labels`
```
- The resource manifest is misconfigured. The ```spec.template.metadata.labels``` property likely does not match the ```spec.selector.matchLabels``` property. 

7. Which of the following statements about Kubernetes networking and containers is correct? (Choose one.)
- Each Kubernetes pod has a unique IP address.

8. Your task is to connect the sso and api application pods. Based on the provided requirements, which of the following solutions is the most suitable? (Choose one.)
-- The sso pods must reach api pods. 
-- The api pods scale up at 4pm due to peak traffic. 
-- The api pods scale down at 9pm due to reduced traffic. 
-- All traffic is internal to the Kubernetes cluster. 
- Create a Service resource of type ClusterIP that routes requests to the api pods. This ensures that the sso pods always reach the api pods.

9. Based on the provided description, which of the following commands creates a Service resource? (Choose one.)
-- Route requests to a deployment named portal.
-- Listen on port 443.
-- Route request to port 8443.
- kubectl expose deployment/portal --port 443 --target-port 8443

10. Which two of the following statements about the Kubernetes Service resource are correct? (Choose two.) 
- ClusterIP type services simplify discovering IP addresses of new pods by providing a stable IP address that routes requests to a set of specified pods. 
- Pods can reach services by using DNS names.

11. Which of the following statements about the Kubernetes Ingress resource is correct? (Choose one.)
- The Ingress resource routes external traffic into the Kubernetes cluster.

12. Which two of the following statements about resource limits and resource requests in Kubernetes are correct? (Choose two.)
- Resource requests configure the minimum resources for an application container.
- Resource limits prevent an application container from consuming more resources than configured.

13. You are in charge of operating an application that is running in a Kubernetes cluster. You discover that the application becomes unresponsive after around 3000 served clients, probably due to a memory leak. Which of the following statements is a suitable temporary solution for the issue until the core development team fixes the issue? (Choose one.)
- You can configure a liveness probe and restart the application when it becomes unresponsive. This is useful because it minimizes the downtime of the application without the need for manual intervention. 

14. Which two of the following statements about the ConfigMap and Secret resources are correct? (Choose two.)
- The Secret resource stores data in an encrypted format. WRONG-CHECK
- The ConfigMap resource is suitable for storing non-sensitive data.

15. Which two of the following statements are correct ways of exposing the ConfigMap and Secret resources to your application? (Choose two.)
- You can inject the values as environment variables.
- You can mount all keys as files.

16. Which two of the following statements about externalizing application configuration are correct? (Choose two.)
- Externalizing application configuration means removing the values from application source code and reading the values at runtime, for example from environment variables.
- Developers can use the ConfigMap and Secret Kubernetes resources to externalize application configuration.

17. Your team just finished the development of a new feature. You decide to test the feature by using a production environment. However, you do not want to expose the feature to users. Which of the following deployment strategies should you use? (Choose one.)
- Blue-green deployment

18. Consider the following Deployment resource configuration. Which of the following statements is correct? (Choose one.)
```
spec:
  replicas: 10
  strategy: {}
```
- The update strategy defaults to the RollingUpdate strategy.

19. Which two of the following statements about deployment strategies are correct? (Choose two.) 
- Developers configure some deployment strategies, such as the Recreate and RollingUpdate strategies, in the Deployment resource manifest.
- Developers must configure advanced deployment strategies by using the Kubernetes ingress router.

20. Which of the following commands shows you the deployment strategy of a Deployment resource in a Kubernetes cluster? (Choose one.)
- ```kubectl describe deployment example```
