var express = require('express');
let db = require('../utils/db')
var router = express.Router();


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'De chinelo' });
});







console.log('http://localhost:3000');
module.exports = router;