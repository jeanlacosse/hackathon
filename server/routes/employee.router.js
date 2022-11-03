const express = require('express');
const router = express.Router();
const pool = require("../modules/pool.js");

// GET Route
router.get('/', (req, res) => {
console.log('get all route good')
    const sqlText = `
    SELECT * FROM employees
    ORDER BY id ASC;
      `;

    pool
        .query(sqlText)
        .then((result) => {
            res.send(result.rows);
        })
        .catch((err) => {
            console.log(`Err in DB query`, err);
            res.sendStatus(500);
        });
}); 
// END GET Route


// GET employee Route
router.get('/:id/info', (req, res) => {
console.log('single employee info is', req.params.id)
    const sqlText = `
    SELECT * FROM employees
    WHERE id = ${req.params.id};
      `;

    pool
        .query(sqlText)
        .then((result) => {
            res.send(result.rows[0]);
        })
        .catch((err) => {
            console.log(`Err in DB query`, err);
            res.sendStatus(500);
        });
}); 
// END GET Route

module.exports = router;