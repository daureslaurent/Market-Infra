# Market – Infrastructure Repository

![Docker](https://img.shields.io/badge/docker-ready-blue?style=flat-square&logo=docker&logoColor=white)
![Architecture](https://img.shields.io/badge/architecture-CQRS%20%7C%20Saga%20%7C%20Hexagonal-success?style=flat-square)
![License](https://img.shields.io/github/license/daureslaurent/Market-Infra?style=flat-square)
![PostgreSQL](https://img.shields.io/badge/postgresql-database-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![Kafka](https://img.shields.io/badge/kafka-message%20broker-purple?style=flat-square&logo=apachekafka&logoColor=white)
![Microservices](https://img.shields.io/badge/microservices-architecture-blueviolet?style=flat-square)
![Hexagonal](https://img.shields.io/badge/hexagonal-ports%20%26%20adapters-orange?style=flat-square)

[![CI/CD](https://github.com/daureslaurent/Market-Infra/actions/workflows/light-deploy.yml/badge.svg)](https://github.com/daureslaurent/Market-Infra/actions/workflows/light-deploy.yml)
[![Live](https://img.shields.io/badge/live-market.lda--dev.com-blue?style=flat-square)](https://market.lda-dev.com)




This repository contains the **infrastructure layer** for the **Market** project.
It is responsible for deploying the complete application stack using **Docker Compose**, with a strong focus on:

* **CQRS** (Command Query Responsibility Segregation)
* **Saga Pattern** for distributed transactions
* **Hexagonal Architecture** (Ports & Adapters)
* **Microservices architecture**
* **Low-cost / VPS friendly deployment**, while remaining **cloud-ready (AWS)**

---

## 🧱 Architecture Overview

### Architectural Patterns

* **Hexagonal Architecture**
* **CQRS**
* **Saga Pattern**
* **Microservices**

---

## 📦 Services Overview

| Service      | Description                                           | Repository     |
|--------------|-------------------------------------------------------|---------------|
| API Gateway  | Routes requests, handles auth and load balancing     | 🔗 *link here* |
| Order MS     | Manages orders, payments, and order status          | 🔗 *link here* |
| Catalog MS   | Manages products, categories, pricing, stock       | 🔗 *link here* |
| Customer MS  | Manages customer profiles and notifications         | 🔗 *link here* |
| Frontend     | UI for browsing, orders, and account management     | 🔗 *https://github.com/daureslaurent/Market-Angular* |

> Replace the links above with the corresponding repositories.
