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

| Service       | Description                                      | Repository     |
|---------------|--------------------------------------------------|---------------|
| BackForFront  | Aggregates microservices for the frontend        | 🔗 *link here* |
| Order MS      | Manages orders, payments, and order status       | 🔗 *link here* |
| Catalog MS    | Manages products, categories, pricing, stock     | 🔗 *link here* |
| Customer MS   | Manages customer profiles and notifications      | 🔗 *link here* |
| Frontend      | UI for browsing, orders, and account management  | 🔗 *https://github.com/daureslaurent/Market-Angular* |


## 🖼️ Architecture Diagram

[![](https://mermaid.ink/img/pako:eNqVldtum0AQhl9ltVEkR8KOCZgYKlXyIVSVG8WBRJZaqmgDC0YG1hogjhv5ttdVH7FP0mUJBzvxRXxhsew3_z8ze-AFu8yj2MB-xDbukkCG7qZOgvjv9BSZwJKMJh76RrYUytfm1Q8H1xOdURLkEYEzB_9E3e5nZM35tEWfKKQUzYE9b9E5Gs2_oi8koxuy5VypY80FPzZNHjAm7spkIGRRh787E1ydyHXoAkspPIUuTdvZcFTI3FhTLnMDHgV0bdcm1fRkdMenJyQjEQveBe7tAsjTjMWNRO0_5ZGPJOXeHZuuCfBakEWJd76AMKNnJcdzqHJ5WNTZTMeo80pVpm3Q2gMLzYbjWVfZC8Eq_3ck26h1gB6I3ttVxaVoVfN7qi3WOmQb2bpNk1vLRiMAtknblSIeGXvo3--_Dm46VBMPi5K5eqJ89fcpq6GskrrNKWw59aehqgzKJrxxE-2riWNuonMNdcSNT9Vuojlv3Yq-1sRRt6KjDXXM7d5udbfUGOcpP1E2Ccj-ZpoV52hG_BVBHUFW2NtNMjP3l7cY1y52to3CJCjHbkTSdEp9FBcHEPlhFBknvu5LaQZsRY0TRVFen7ub0MuWhrx-_tSKLdKTuK9UeAmRA2Hv8VVV9_UPqT4sJLErJLGm4t-SRMelsqPe44FVmPhAqhrcD9QwM8tYLOEAQg8bPolSKmF-EmJSjPFLgTs4W9KYOtjgjx6BlYOdZMeD1iT5zliMjQxyHgYsD5bVIF97_DKZhiQAEtfKwO9WChOWJxk2BvpAaGDjBT9jQ1V7sq7omq4NVUVTNV3CW2x0B3JPkwf9Yb8_HMrKxUDfSfiXcJV7_aEmX2qXA6WvqvLFUJUw9cKMwXV594tPwO4_YKbIrQ?type=png)](https://mermaid.live/edit#pako:eNqVldtum0AQhl9ltVEkR8KOCZgYKlXyIVSVG8WBRJZaqmgDC0YG1hogjhv5ttdVH7FP0mUJBzvxRXxhsew3_z8ze-AFu8yj2MB-xDbukkCG7qZOgvjv9BSZwJKMJh76RrYUytfm1Q8H1xOdURLkEYEzB_9E3e5nZM35tEWfKKQUzYE9b9E5Gs2_oi8koxuy5VypY80FPzZNHjAm7spkIGRRh787E1ydyHXoAkspPIUuTdvZcFTI3FhTLnMDHgV0bdcm1fRkdMenJyQjEQveBe7tAsjTjMWNRO0_5ZGPJOXeHZuuCfBakEWJd76AMKNnJcdzqHJ5WNTZTMeo80pVpm3Q2gMLzYbjWVfZC8Eq_3ck26h1gB6I3ttVxaVoVfN7qi3WOmQb2bpNk1vLRiMAtknblSIeGXvo3--_Dm46VBMPi5K5eqJ89fcpq6GskrrNKWw59aehqgzKJrxxE-2riWNuonMNdcSNT9Vuojlv3Yq-1sRRt6KjDXXM7d5udbfUGOcpP1E2Ccj-ZpoV52hG_BVBHUFW2NtNMjP3l7cY1y52to3CJCjHbkTSdEp9FBcHEPlhFBknvu5LaQZsRY0TRVFen7ub0MuWhrx-_tSKLdKTuK9UeAmRA2Hv8VVV9_UPqT4sJLErJLGm4t-SRMelsqPe44FVmPhAqhrcD9QwM8tYLOEAQg8bPolSKmF-EmJSjPFLgTs4W9KYOtjgjx6BlYOdZMeD1iT5zliMjQxyHgYsD5bVIF97_DKZhiQAEtfKwO9WChOWJxk2BvpAaGDjBT9jQ1V7sq7omq4NVUVTNV3CW2x0B3JPkwf9Yb8_HMrKxUDfSfiXcJV7_aEmX2qXA6WvqvLFUJUw9cKMwXV594tPwO4_YKbIrQ)
