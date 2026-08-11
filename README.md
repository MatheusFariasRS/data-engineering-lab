# Data Engineering Lab

Projeto pessoal criado para estudar e praticar conceitos de Engenharia de Dados por meio da construção incremental de uma pequena plataforma de dados.

A ideia é começar com uma arquitetura simples e evoluir o projeto conforme novos conceitos e tecnologias forem sendo estudados.

## Objetivos

* Praticar SQL e modelagem de dados
* Construir pipelines ETL/ELT
* Trabalhar com processamento batch e cargas incrementais
* Aplicar conceitos de Data Lake e Lakehouse
* Utilizar arquitetura Bronze, Silver e Gold
* Aprender processamento de dados com Python e PySpark
* Trabalhar com AWS e Databricks
* Automatizar infraestrutura com Terraform
* Implementar qualidade, observabilidade e testes de dados

## Arquitetura

Arquitetura planejada para a evolução do projeto:

```text
PostgreSQL
    ↓
Python
    ↓
AWS S3
    ↓
Databricks
    ↓
Bronze
    ↓
Silver
    ↓
Gold
    ↓
Analytics / Data Science / APIs
```

A arquitetura será construída gradualmente. Nem todos os componentes estarão presentes desde as primeiras versões do projeto.

## Tecnologias

Inicialmente:

* PostgreSQL
* SQL
* Docker
* Git

Durante a evolução do projeto:

* Python
* AWS
* Databricks
* Apache Spark / PySpark
* Delta Lake
* Terraform
* Orquestração de pipelines
* Data Quality
* CI/CD

## Estrutura do projeto

```text
data-engineering-lab/
├── database/
│   ├── 01_schema.sql
│   └── 02_seed.sql
├── docker-compose.yml
└── README.md
```

A estrutura será expandida conforme novos componentes forem adicionados.

## Dataset

O projeto utiliza dados fictícios de uma empresa de vendas.

O banco transacional contém inicialmente entidades como:

* clientes
* produtos
* pedidos
* itens de pedidos

Esses dados serão utilizados como fonte para os pipelines desenvolvidos durante o projeto.

## Roadmap

* [x] Estrutura inicial do projeto
* [x] PostgreSQL com Docker
* [ ] Criar modelo de dados transacional
* [ ] Gerar massa de dados fictícia
* [ ] Praticar consultas SQL analíticas
* [ ] Criar primeiro pipeline com Python
* [ ] Implementar carga incremental
* [ ] Criar camada Bronze
* [ ] Criar camada Silver
* [ ] Criar camada Gold
* [ ] Integrar AWS S3
* [ ] Integrar Databricks
* [ ] Utilizar PySpark
* [ ] Implementar Data Quality
* [ ] Automatizar infraestrutura com Terraform
* [ ] Criar CI/CD
* [ ] Adicionar observabilidade dos pipelines

## Status

Projeto em desenvolvimento e utilizado como laboratório de estudos em Engenharia de Dados.
