const intents = require('./intentMappings');
function detectIntent(question) {

    const normalizedQuestion = question.toLowerCase();

    for (const intent in intents) {
        for (const keyword of intents[intent]) {
            if (normalizedQuestion.includes(keyword)) {
                return intent;
            }
        }
    }
}
return "unknown";

module.exports = {
    detectIntent
}