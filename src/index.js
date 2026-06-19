const { app } = require('@azure/functions');
require('./functions/AskQuestion');

app.setup({
    enableHttpStream: true,
});
