1. In Kubernetes, simplify the lifecycle management of containerized applications by:
- restarting of unresponsive pods
- application rollour strategies

2. In lifecycle management in Kubernetes,
- Developers declare the application state in a resource manifest. Kubernetes ensures the application state is identical to the declared state. This is the declarative approach. 

3. To create an application that uses the provided parameters:
- - Application name is lb-v1.
- - Application is based on the lb:v1 image.
- - Application should restart automatically if it crashes.
- Use the command: ```kubectl run lb-v1 -- lb:v1``` WRONG

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
6. 

7.

8.

9.

10.

11.

12.

13.

14.

15.

16.

17.

18.

19.

20.
