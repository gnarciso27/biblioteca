var express = require('express');
let db = require('../utils/db')
var router = express.Router();


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'aaaaaaaaaa' });
});

router.get('/clubes/listar', function(req, res){
  db.query('SELECT * FROM clubes', [], function(erro, listagem){
    if(erro){
      res.send(erro);
    }
    res.send(listagem);
  });
 
});











module.exports = router;