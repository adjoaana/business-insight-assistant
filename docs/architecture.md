# Solution Architecture

## Architecture Overview

The Business Insight Assistant uses a simple layered architecture.

## Current-State Architecture

Power App
    ↓
Azure Function
    ↓
Azure SQL Database
    ↓
Response

## Components

### Power App

User interface for question submission.

### Azure Function

Receives requests and processes business questions.

Responsibilities:

- Receive question
- Determine intent
- Execute query
- Generate response

### Azure SQL Database

Stores business data required by the assistant.

### Application Insights

Provides monitoring, logging, and diagnostics.

---

## Sample User Flow

1. User submits question.
2. Power App sends request to Azure Function.
3. Function determines user intent.
4. Function queries the database.
5. Response is generated.
6. User receives answer.

---

## Future-State Architecture

Power App / Teams
        ↓
Copilot Studio
        ↓
Azure Functions
        ↓
Microsoft Fabric
        ↓
Business Data Sources

---

## Architecture Principles

- Simplicity First
- Business Value Driven
- Security by Design
- Scalability
- Observability

## Phase 4 Architecture

Power App
    ↓
AskQuestion API
    ↓
Question Processor
    ↓
Intent Detection
    ↓
Query Mapping
    ↓
Azure SQL Database
    ↓
Response Builder
    ↓
Business Response
