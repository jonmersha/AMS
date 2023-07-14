const express = require("express");
const router = express.Router();
const insertOP=require('../utils/insert')
const connection=require('../models/dbconf')

const tableName="BudgetYear";

//router.get('/get',(req,res)=>{
  
router.post('/year/add',(req,res)=>{
    //console.log(req.body)

   // res.send('masreja');
    queryex(req,res);
   
    })
    function queryex(req,res){


let stm=insertOP.insert(tableName,req.body);
console.log(stm);
connection.connect;

connection.query(stm,(err,result)=>{
    if (err) {
        console.error('Error executing query:', err);
        //return;
        res.send(err);
      }
    
      
      res.send(result);

});

    }



    module.exports = router;