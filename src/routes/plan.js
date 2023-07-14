const express = require("express");
const router = express.Router();
const insertOP=require('../utils/insert')
const connection=require('../models/dbconf')
const selectOP=require('../utils/select')

//router.get('/get',(req,res)=>{})
router.get('/get',(req,res)=>{

    const stm=selectOP.selectAll("AuditPlan");
    console.log(stm)
    runCode(stm, res)
})





router.get('/gets',(req,res)=>{
    let val={
        Titile:"System Administration"     
}
let stm=insertOP.insert('AuditPlan',val);



   // selectQeury.getAll(res,'audit_plan','audit_plan');   
    })

router.post('/add',(req,res)=>{
       // res.send('plan added')
//let json=req.body

       let stm=insertOP.insert('AuditPlan',req.body)
      // console.log(stm);
       runCode(stm,res)
});

function runCode(stm,res){
    connection.connect;
connection.query(stm,(err,result)=>{
    if (err) {
        console.error('Error executing query:', err);
        //return;
        res.send(err);
      }
      console.log("REgistered With success");
      
      res.send(result);

});

}


    module.exports = router;