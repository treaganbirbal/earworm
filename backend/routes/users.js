const express = require('express');
const router = express.Router();
const db = require('../db/index');

const { getAllUsers } = require('../db/queries/userQueries.js');

router.get('/', getAllUsers)


module.exports = router;