var express = require('express');
let db = require('../utils/db')
var router = express.Router();


router.get('/listar', function(req, res){
  db.query('SELECT sigla_estado FROM clubes', [], function(erro, listagem){
    if(erro){
      res.send(erro);
    }
    res.json( {resultado: listagem});
  });
 
});














module.exports = router;