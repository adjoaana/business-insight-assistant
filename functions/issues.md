README: Azure Functions Setup & Troubleshooting
📌 Overview
This project implements a Business Insight Assistant API using Azure Functions (Node.js).
The goal was to:

Create an HTTP API (AskQuestion)
Process user questions using an intent engine
Return detected intent


🚀 Setup Steps (What we did)
1️⃣ Install Node (LTS version)
Azure Functions requires a supported Node version.
✅ Install:

Node 18 (recommended at the time)


2️⃣ Install Azure Functions Core Tools
❌ Initial issue:

Installing via npm caused errors (missing binaries, ESM issues)

✅ Solution:

Install using the official Microsoft installer:
https://aka.ms/azure-functions-core-tools-4




3️⃣ Verify Installation
Run:
Shellfunc --versionShow more lines
✅ Expected:
4.x.x


4️⃣ Fix Project Structure
❌ Initial mistake:

Placing functions inside src/functions

✅ Correct structure:
business-insight-assistant/
│
├── AskQuestion/
│   └── index.js          <-- Azure Function entry point
│
├── api/
│   └── question-engine/
│       └── questionProcessor.js
│
├── host.json
├── package.json
├── local.settings.json


5️⃣ Configure package.json
Azure Functions (v4 model) requires specifying the entry point.
✅ Fix:
JSON"main": "AskQuestion/index.js"Show more lines

6️⃣ Configure local.settings.json
Azure Functions needs a storage connection.
✅ Add:
JSON{  "IsEncrypted": false,  "Values": {    "AzureWebJobsStorage": "<your-connection-string>",    "FUNCTIONS_WORKER_RUNTIME": "node"  }}Show more lines
👉 Connection string obtained from:
Azure Portal → Storage Account → Access Keys

7️⃣ Fix Module Import Issues
❌ Initial errors:
Cannot find module ...

✅ Solution:

Correct relative paths

JavaScriptconst { detectIntent } = require("../api/question-engine/questionProcessor");Show more lines

8️⃣ Run the Function
Shellfunc startShow more lines
✅ Expected output:
Functions:

    AskQuestion: http://localhost:7071/api/AskQuestion


🧪 How to Test
Example request:
ShellPOST http://localhost:7071/api/AskQuestionContent-Type: application/json{  "question": "How many customers do we have?"}Show more lines

Example response:
JSON{  "question": "How many customers do we have?",  "intent": "customer_count"}Show more lines

❗ Common Errors & Fixes








































ProblemCauseSolutionfunc not recognizedCore Tools not installedInstall via Microsoft MSIENOENT errorBroken npm installReinstall using MSINo functions foundWrong folder structureCreate AskQuestion/index.jsStorage unhealthyMissing connection stringAdd AzureWebJobsStorageCannot find moduleWrong pathFix require("../...")Entry point not foundWrong main in package.jsonSet correct path

🧠 Key Learnings
✅ Azure Functions is folder/config-based, not just code
✅ Project structure matters
✅ package.json -> main controls function entry
✅ Storage is required even for local development
✅ Clean architecture separates:

API layer (Functions)
Business logic (api/)
Data (database/)


✅ Current Status
✔ Function running locally
✔ API endpoint working
✔ Intent detection functional

🚀 Next Steps

Connect to database for real insights
Improve intent detection (AI/NLP)
Deploy to Azure
Integrate with PowerApps


🎯 Summary
We successfully:

Installed Azure Functions environment
Fixed runtime and dependency issues
Structured the project correctly
Built a working serverless API


✅ Result: A fully functional Azure Function API running locally.