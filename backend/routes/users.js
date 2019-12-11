const express = require('express');
const router = express.Router();
const db = require('../db/index');

const { getAllUser } = require('../db/queries/userQueries.js');

router.get('/', getAllUser)


module.exports = router;