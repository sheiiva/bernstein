Popeye
===

Time:       3 weeks

Team:       2

Language:   Kubernetes, Yaml


The project
----

**Orchestration** is the arrangement of a piece of music in parts so that it can be played by an orchestra *(from the Oxford Advanced Learner’s Dictionary)*. In other terms, it is the process of organizing the different components of a system in order for them to be *(correctly)* executed by a generic infrastructure. **Leonard Bernstein** was an exceptional composer (his most famous work being the soundtrack of West Side Story), pianist, and conductor in his days.

During this project, you are going to become the Leonard Bernstein of containers!

The orchestra you are going to conduct is one of the most popular of its kind: [**Kubernetes**](https://kubernetes.io/). Kubernetes is an open-source platform that allows you to manage containerized applications and services, in a scalable and automatic way.

You will deploy an **application to a multi-host cluster** using Kubernetes, and you will use **Traefik** as a reverse proxy and load balancer. The application you will be working on during this project is a simple **web poll application**.


There are five elements constituting the application:
* **Poll**, a Flask Python web application that gathers votes and push them into a Redis queue.
* **A Redis queue**, which holds the votes sent by the Poll application, awaiting for them to be consumed bythe Worker.
* **The Worker**, a Java application which consumes the votes being in the Redis queue, and stores them intoa PostgreSQL database.
* **A PostgreSQL database**, which (persistently) stores the votes stored by the Worker.
* **Result**, a Node.js web application that fetches the votes from the database and displays the. . . well, result. ;)


# ENVIRONMENT

You will need at least 1 Kubernetes master and 2 nodes (workers). You can run it locally, but it is highly recommended to use a “Kubernetes as a Service” platform.

Examples of such platforms include (but are not limited to) Amazon Elastic Kubernetes Service,Google Ku-bernetes Engine, and Digital Ocean.

Installing a full Kubernetes cluster locally is complex. Minikube is also not built for multi-node clusters (which you needfor your project).

Author [**Corentin COUTRET-ROZET**](https://github.com/sheiiva)