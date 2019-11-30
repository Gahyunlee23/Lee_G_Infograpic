var express = require('express');
var router = express.Router();
var path = require('path');



router.get('/', function(req, res, next) {
    // res.render('index', { title: 'Express' });
    res.sendFile(path.join(__dirname, "../views/index.html"))
  });

router.get('/info/:target', (req, res) => {
    // set up your sql query here and retrieve the relevant data
    let query = `SELECT * FROM stats WHERE id="${req.params.target}"`;
  
    sql.query(query, (err, result) => {
      if (err) { console.log(err); }
  
      console.log(result);
      res.json(result[0]);
    })
  
  })
  
  module.exports = router;
  
