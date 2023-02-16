In Kubernetes, simplify the lifecycle management of containerized applications by:
- restarting of unresponsive pods
- application rollour strategies

In lifecycle management in Kubernetes,
- Developers declare the application state in a resource manifest. Kubernetes ensures the application state is identical to the declared state. 
- - This is the declarative approach. 

To create an application that uses the provided parameters:
- Application name is lb-v1.
- Application is based on the lb:v1 image.
- Application should restart automatically if it crashes.
*```kubectl run lb-v1 -- lb:v1```</p>
