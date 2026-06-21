const { app } = require("@azure/functions");
const { detectIntent } = require("../api/question-engine/questionProcessor");

app.http("AskQuestion", {
  methods: ["POST"],
  authLevel: "anonymous",
  handler: async (request, context) => {
    const body = await request.json();
    const question = body.question;
    const intent = detectIntent(question);
    return { jsonBody: { question, intent } };
  },
});

/*const { app } = require('@azure/functions');

app.http('AskQuestion', {
    methods: ['GET', 'POST'],
    authLevel: 'anonymous',

    handler: async (request, context) => {
        return {
            jsonBody: {
                message: 'Hello from Azure Function'
            }
        };
    }
}); */
