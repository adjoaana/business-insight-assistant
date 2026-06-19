const { app } = require('@azure/functions');
const {detectIntent} = require('./question-engine/intentMappings');

app.htpp('AskQuestion', {
    methods: ['POST'],
    authLevel: 'anonymous',
    handler: async(request, context) => {
        const body = await request.json();
        const question = body.question;
        const intent = detectIntent(question);
        return{jsonBody: {question,intent}};
    }
});