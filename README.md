# Business Insight Assistant

## Overview

Business Insight Assistant is a conversational business intelligence solution designed to help employees access information quickly using natural language.

Instead of navigating multiple reports, dashboards, or spreadsheets, users can ask simple questions and receive immediate answers based on business data.

Examples:

- What are total sales this month?
- Which product generated the most revenue?
- How many sales records exist?
- What was our top-performing product?

The project demonstrates how modern Microsoft technologies can be combined to deliver business value through self-service analytics and AI-assisted experiences.

---

# Business Problem

Many organizations have data available but struggle to make it easily accessible.

Business users often need to:

- Search for reports
- Apply filters
- Interpret dashboards
- Contact data teams for information

This results in:

- Slower decision-making
- Reduced productivity
- Reporting bottlenecks
- Increased dependence on technical teams

The goal of this solution is to provide a simple conversational interface that enables users to obtain business insights instantly.

---

# Solution Vision

Provide employees with a business assistant capable of:

1. Understanding business questions
2. Retrieving relevant data
3. Returning meaningful answers
4. Delivering insights in natural language

The vision is to evolve from a simple query system into a full Microsoft Copilot-style business assistant.

---

# MVP Scope

## Included

### User Interface
- Power Apps

### API Layer
- Azure Functions

### Data Layer
- Azure SQL Database

### Supported Questions
- What are total sales?
- What is the top-performing product?
- How many sales records exist?

### Monitoring
- Application Insights

---

## Excluded (Future Phases)

- Microsoft Fabric
- Copilot Studio
- Teams Integration
- Azure OpenAI
- Advanced Natural Language Understanding
- Multi-source Data Integration

---

# High-Level Architecture
Power App
    ↓
Azure Function
    ↓
Azure SQL Database
    ↓
Response

## Current Status

Phase 1 – Discovery & Design

## Documentation

- Project Charter
- Requirements
- User Stories
- Architecture
- Architecture Decisions
- Roadmap
