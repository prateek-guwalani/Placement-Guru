var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var mysql = require('mysql');
var fs=require('fs');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
var con=mysql.createConnection({
host:'localhost',
user:'dheeraj',
password:'123',
database:'online_exam'
});

app.use('/assets',express.static('assets'));
app.get('/lockscreen.html', function (req, res) {
   res.sendFile( __dirname + "/" + "lockscreen.html" );
})

app.post('/User_admin', urlencodedParser, function (req, res) {
   // Prepare output in JSON format
   response = {
      password:req.body.password,
         };
   console.log(response);
   //res.send(JSON.stringify(response));

  // con.connect(function(err)
  {
  // if(err)throw err;
   console.log("CONNECTION ESTABLISHED\nyou can start your query now");
    con.query('select password from admin where password=\''+req.body.password+'\'',function(err,result)
    {
      console.log(result);
      if(err)throw err;
    if(result.length!=0)
    {console.log("you are authorized to access");
     fs.readFile('admin_fill.html', function(err, data) {
       res.writeHead(200, {'Content-Type': 'text/html'});
       res.write(data);
     });

    }
    else
    {
      console.log("you are not authorized to access");
      fs.readFile('register.html', function(err, data) {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write(data);
      });

    }
  });
}
})

app.use('/assets',express.static('assets'));
app.get('/admin_fill.html', function (req, res) {
   res.sendFile( __dirname + "/" + "admin_fill.html" );
})

app.post('/User_admin_fill', urlencodedParser, function (req, res) {
   // Prepare output in JSON format
   response = {
      branch:req.body.branch,
      type_ques:req.body.type_ques,
      question:req.body.question,
      option1:req.body.option1,
      option2:req.body.option2,
      option3:req.body.option3,
      option4:req.body.option4,
      answer:req.body.answer
         };
   console.log(response);
   //res.send(JSON.stringify(response));

  // con.connect(function(err)
  {
  // if(err)throw err;
  var demo=''+req.body.branch+'_'+req.body.type_ques+'';
  console.log(demo);
   console.log("CONNECTION ESTABLISHED\nyou can start your query now");
    con.query('insert into '+req.body.branch+'_'+req.body.type_ques+' values(\''+req.body.question+'\',\''+req.body.option1+'\',\''+req.body.option2+'\',\''+req.body.option3+'\',\''+req.body.option4+'\',\''+req.body.answer+'\') ',function(err,result)
    {
      console.log(result);
      if(err)throw err;
    if(result.length!=0)
    {console.log("you are authorized to access");
     fs.readFile('admin_fill.html', function(err, data) {
       res.writeHead(200, {'Content-Type': 'text/html'});
       res.write(data);
     });

    }
    else
    {
      console.log("you are not authorized to access");
      fs.readFile('register.html', function(err, data) {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write(data);
      });

    }
  });
}
})



   var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port

   console.log("Example app listening at http://%s:%s", host, port)

})
