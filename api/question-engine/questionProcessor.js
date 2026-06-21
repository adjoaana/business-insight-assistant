const intents = require("./intentMappings");
function detectIntent(question) {
  const normalizedQuestion = question.toLowerCase();

  for (const item of intents) {
    for (const keyword of item.keywords) {
      if (normalizedQuestion.includes(keyword.toLowerCase())) {
        return item.intent;
      }
    }
  }
  return "unknown";
}

module.exports = {
  detectIntent,
};

console.log(detectIntent("How many customers do we have?"));
