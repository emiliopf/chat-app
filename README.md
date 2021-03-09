<p align="center">

  <h3 align="center">CHAT APP</h3>
  <p align="center">
    An over complex chat app.
    <br />
  </p>
</p>

![preview](/images/preview.gif)


## About The Project


App developed only with learning intention. One of the main goals is create an efficient develop environment over Minikube.

Other objetives are learn kubernetes components and build a whole app from nothing, use a modern nodejs framework like NestJS, make a first approach to Angular and use RabbitMQ as message broker.

<br/>

<!-- TABLE OF CONTENTS -->
## Table of Contents

  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#architecture">Architecture</a></li>
    <li><a href="#microservices">Microservices</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#set-up">Set Up</a></li>
      </ul>
    </li>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#license">License</a></li>
  </ol>
<br />


## Architecture 

![Arch](/images/arch.png)

App deployed over k8s cluster.


## Microservices

* [Users](https://github.com/emiliopf/chat-users)
* [Rooms](https://github.com/emiliopf/chat-rooms)
* [Rabbit Auth Backend](https://github.com/emiliopf/chat-rabbitmq-auth-backend)
* [Frontend](https://github.com/emiliopf/chat-frontend)

### Data Flow

![Arch](/images/flow.png)

*1: STOMP over websockets.


## Getting Started

### Prerequisites

* [Minikube](https://github.com/kubernetes/minikube)
* [Skaffold](https://github.com/GoogleContainerTools/skaffold)
* Mysql Server


### Set Up

1. Execute `initiateRepositories.sh`
2. Configure mysql [endpoint](/databases/mysql/k8s/endpoint.yaml) with your mysql server.
4. Ensure [rooms](/microservices/rooms/k8s/config_map.yaml) and [users](/microservices/users/k8s/config_map.yaml) scheme exist in your database server.
3. Change mysql credentials in [rooms](/microservices/rooms/k8s/secret.yaml) and [users](/microservices/users/k8s/secret.yaml) secrect.yaml
4. Change host in [ingress](/ingress.yaml) and frontend [configmap](/microservices/frontend/k8s/config_map.yaml) with your `minikube ip`
5. Launch `skaffold dev -f skaffold.yaml`

Make sure you initiated minikube and enabled ingress (`minikube addons enable ingress`) before launch skaffold.

### Built With

* [Kubernetes](https://kubernetes.io/)
* [NestJS](https://nestjs.com)
* [Angular](https://angular.io)
* [RabbitMQ](https://rabbitmq.com)
* [MySQL](https://mysql.com)


## License

[MIT licensed](LICENSE)