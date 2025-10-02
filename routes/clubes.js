var express = require('express');
let db = require('../utils/db')
var router = express.Router();


router.get('/listar', function(req, res){
  db.query('SELECT * FROM clubes', [], function(erro, listagem){
    if(erro){
      res.send(erro);
    }
    res.render('clubes-lista', {resultado: listagem});
  });
 
});


router.get('/add', function(req, res){
  res.render('clubes-add', {resultado: {}});
});

router.post('/add', function(req, res){
  let nome = req.body.nome;
  let estado = req.body.estado;
  db.query('INSERT INTO clubes (nome, sigla_estado) VALUES (?, ?);', [nome, estado], function(erro, listagem){
    if(erro){
      res.send(erro);
    }
    res.redirect('/clubes/listar');
  });
 
});

router.get('/edit/:id', function(req, res){
  let id = req.params.id;

  db.query('SELECT * FROM clubes WHERE id = ?;', [id], function(erro, listagem){
    if(erro){
      res.send(erro);
    }
    res.render('clubes-add', {resultado: listagem[0]});
  });
 
});











module.exports = router;