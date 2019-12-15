var express = require('express');
var router = express.Router();

var sql = require('../utils/sql')
router.get('/', (req, res) => {
  // should really get the user data here and then fetch it thru, but let's try this asynchronously
  console.log('at the main route');

  let query = "SELECT ID, name, dshort, dfull, preview, image1, image2 FROM portfolio";

  sql.query(query, (err, result) => {
      if (err) { throw err; console.log(err); }

      //console.log(result); // should see objects wrapped in an array

      // render the home view with dynamic data
      res.render('home', { portfolio: result });
  
  })
})
//localhost:3000
router.get('/:id', (req, res) => {
  console.log('hit a dynamic route!');
  console.log(req.params.id);

  let query = `SELECT * FROM portfolio WHERE ID="${req.params.id}"`;

  sql.query(query, (err, result) => {
      if (err) { throw err; console.log(err); }

      console.log(result); // should see objects wrapped in an array

      // turn our social property insto an array - its just text in the DB,
      // which isnt really anything we can work with
     // result[0].social = result[0].social.split(",").map(function(item) {
          //item = item.trim(); // remove the extra spaces for each word

          //return item;
      

     console.log('after split: ', result[0]);

      // send DB query back to browser
      // render the home view with dynamic data
      res.json(result);
  
  })
})

module.exports = router;
