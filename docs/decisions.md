# Architecture Decision Records

## ADR-001

### Decision

Use Azure Functions.

### Alternatives Considered

- Azure App Service
- Azure Container Apps

### Rationale

Azure Functions provide a serverless, cost-efficient platform suitable for request-response workloads.

---

## ADR-002

### Decision

Use Azure SQL Database.

### Alternatives Considered

- Dataverse
- Cosmos DB

### Rationale

Structured relational data is required for reporting and analytics.

---

## ADR-003

### Decision

Use Power Apps as the user interface.

### Alternatives Considered

- Custom web application
- Teams application

### Rationale

Power Apps enables rapid development and Microsoft ecosystem integration.

---

## ADR-004

### Decision

Defer AI integration until after foundational architecture is complete.

### Alternatives Considered

- AI-first approach

### Rationale

Reliable data and business logic must exist before introducing AI capabilities.

---

## ADR-005

### Decision

Adopt Microsoft Fabric in a future phase.

### Rationale

Fabric provides enterprise-scale analytics capabilities beyond MVP requirements.

## ADR-008

### Decision

Use rule-based intent detection for MVP.

### Alternatives Considered

- Azure OpenAI
- Copilot Studio
- Natural Language Understanding services

### Rationale

A rule-based

## ADR-009

### Decision

Use Azure SQL Database as the primary data source.

### Alternatives Considered

- Dataverse
- Cosmos DB
- Fabric Lakehouse

### Rationale

The business data model is relational and benefits from structured querying and reporting capabilities.
## ADR-010

### Decision

Use Power Apps as the primary user interface.

### Alternatives Considered

- Custom Web Application
- Teams Application

### Rationale

Power Apps provides rapid development, Microsoft ecosystem integration, and low-code extensibility suitable for the MVP.