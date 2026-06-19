const sql = require('mssql');

const config = {
    connectionString: process.env.sqlConnectionString,
    options: {
        encrypt: true,
        trustServerCertificate: true,
    }
};

async function executeQuery(query) {
    const pool = await sql.connect(config);
    const result = await pool.request().query(query);
    return result.recordset;
}

module.exports = {
    executeQuery,
};