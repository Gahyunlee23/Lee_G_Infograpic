var express = require('express');
var router = express.Router();
var path = require('path');



router.get('/', function(req, res, next) {
    // res.render('index', { title: 'Express' });
    res.sendFile(path.join(__dirname, "../views/index.html"))
  });

router.get('/info/:target', (req, res) => {
 
    let `SELECT c.Name, GROUP_CONCAT(CONCAT(l.Legends,':',m.value)) as Ingredients FROM tbl_coffee c LEFT JOIN tbl_coffee_meta m ON m.coffee_id = c.id LEFT JOIN tbl_legends l ON l.id = m.legends_id GROUP BY m.coffee_id`;
  
    sql.query(query, (err, result) => {
      if (err) { console.log(err); }
  
      console.log(result);
      res.json(result[0]);
    })
  
  })
  
  module.exports = router;
  
