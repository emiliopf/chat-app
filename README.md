<p align="center">

  <h3 align="center">CHAT APP</h3>

  <p align="center">
    An over complex chat app.
    <br />
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#architecture">Architecture</a></li>
    <li><a href="#data-flow">Data Flow</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>
<br />


## About The Project


App developed only with learning intention. One of the main goals is create an efficient develop environment over Minikube.

Other objetives are learn kubernetes components and build a whole app from nothing, use a modern nodejs framework like NestJS, make a first approach to Angular and use RabbitMQ as message broker.



### Built With

* [Kubernetes](https://kubernetes.io/)
* [NestJS](https://nestjs.com)
* [Angular](https://angular.io)
* [RabbitMQ](https://rabbitmq.com)
* [MySQL](https://mysql.com)


## Architecture 

![Arch](/images/arch.png)

App deployed over k8s cluster.


## Data Flow

![Arch](/images/flow.png)

*1: STOMP over websockets.


## Gettiing Started

### Prerequisites

* [Minikube](https://github.com/kubernetes/minikube)
* [Skaffold](https://github.com/GoogleContainerTools/skaffold)
* Mysql Server








