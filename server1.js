var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path=require('path');
var mysql = require('mysql');
var fs = require('fs');
var csv = require('fast-csv');
var formidable = require('formidable');
var $=require('jquery');
var app = express();
var Sync=require('sync');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
var compiler = require('compilex');
var options = {stats : true}; //prints stats on console
compiler.init(options);
var con=mysql.createConnection({
host:'localhost',
user:'root',
password:'',
database:'online_exam'
});


app.set('views', __dirname + '/views');
app.engine('.html', require('ejs').renderFile);
var path = require('path');
app.use(express.static(path.join(__dirname, '/public')));
app.use(session({secret: 'ssshhs'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
//app.use('assets/javascripts',express.static(path.static ))
var sess;

app.get('/',function(req,res){
    res.render('index.html');

});

app.get('/tutorial',function(req,res){
sess = req.session;
//Session set when user Request our app via URL
if(sess.roll_no) {

    res.redirect('/admin');
}
else {
	res.render('tutorial.html') ;

}
});

app.get('/pdf1',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/admin');
}
else {
	res.render('pdfview.html');
}
});
app.get('/pdf2',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/admin');
}
else {
	res.render('pdfview1.html');
}
});
app.get('/pdf3',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/admin');
}
else {
	res.render('pdfview2.html');
}
});


app.post('/pdfviewer1', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/Functions.pdf');
  var filename = "Functions.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer2', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/structuresUnions.pdf');
  var filename = "structuresUnions.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer3', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/PointersArrays.pdf');
  var filename = "PointersArrays.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer4', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/Inheritance.pdf');
  var filename = "Inheritance.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer5', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/templates.pdf');
  var filename = "templates.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer6', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/friendfunction.pdf');
  var filename = "friendfunction.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer7', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/LinkedLists.pdf');
  var filename = "LinkedLists.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer8', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/BinaryTrees.pdf');
  var filename = "BinaryTrees.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer9', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/Graphs.pdf');
  var filename = "Graphs.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer10', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/fileHandling.pdf');
  var filename = "fileHandling.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.post('/pdfviewer11', function(req, res, next) {
  var stream = fs.createReadStream('./pdf_c/Dp.pdf');
  var filename = "Dp.pdf";
  // Be careful of special characters

  filename = encodeURIComponent(filename);
  // Ideally this should strip them

  res.setHeader('Content-disposition', 'inline; filename="' + filename + '"');
  res.setHeader('Content-type', 'application/pdf');

  stream.pipe(res);
});

app.get('/register',function(req,res){
sess = req.session;
//Session set when user Request our app via URL
if(sess.roll_no) {

    res.redirect('/admin');
}
else {
	res.render('register.html');

}
});

app.get('/admin_upload',function(req,res){
sess = req.session;
//Session set when user Request our app via URL
if(sess.roll_no) {

    res.redirect('/User_admin');
}
else {
	res.render('admin_upload.html');

}
});


app.get('/admin_pdf',function(req,res){
sess = req.session;
//Session set when user Request our app via URL
if(sess.roll_no) {

    res.redirect('/User_admin');
}
else {
	res.render('admin_pdf.html');
}
});
app.get('/compiler',function(req,res){
sess = req.session;
//Session set when user Request our app via URL
if(sess.roll_no) {

    res.render('testing.html');
}
else {
	res.redirect('/login');
}
});

app.post('/test1',urlencodedParser,function(req,res){
    con.query('SELECT * FROM '+req.body.branch+'_apt ', function(err, result)
        {
          console.log(result);
			console.log(result[0].question);
         fs.writeFile('./public/exam'+sess.roll_no+'.json',JSON.stringify(result), function (err) {
            if (err) throw err;
            console.log('Saved!');
			console.log(result);
            });

        });

	res.render('test1.html',{roll_no:sess.roll_no,typet:1});


});

app.post('/test2',urlencodedParser,function(req,res){
    con.query('SELECT * FROM '+req.body.branch+'_tech ', function(err, result)
        {

         fs.writeFile('./public/exam'+sess.roll_no+'.json',JSON.stringify(result), function (err) {
            if (err) throw err;
            console.log(sess.roll_no);
            });

        });

	res.render('test1.html',{roll_no:sess.roll_no,typet:2});


});

app.post('/test3',urlencodedParser,function(req,res){
    con.query('SELECT * FROM '+req.body.branch+'_eng ', function(err, result)
        {

         fs.writeFile('./public/exam'+sess.roll_no+'.json',JSON.stringify(result), function (err) {
            if (err) throw err;
            console.log(sess.roll_no);
            });

        });

	res.render('test1.html',{roll_no:sess.roll_no,typet:3});


});

app.post('/result',urlencodedParser,function(req,res){

            if(req.body.typet==1)
                {
                  con.query('update result set apt_marks=\''+req.body.marks+'\' where roll_no =\''+sess.roll_no+'\' ',function(err,res){});
                }
            if(req.body.typet==2)
                {
                  con.query('update result set tech_marks=\''+req.body.marks+'\' where roll_no =\''+sess.roll_no+'\' ',function(err,res){});
                }
            if(req.body.typet==3)
                {
                   con.query('update result set eng_marks=\''+req.body.marks+'\' where roll_no =\''+sess.roll_no+'\' ',function(err,res){});
                }

	res.redirect('/previous');

});
app.post('/User_register', urlencodedParser, function (req, res) {

  // if(err)throw err;
   console.log("CONNECTION ESTABLISHED\nyou can start your query now");

    con.query('insert into user_info(name,roll_no,password,email,contact_no,branch,year) values(\''+req.body.name+'\',\''+req.body.roll_no+'\',\''+req.body.password+'\',\''+req.body.email+'\',\''+req.body.contact_no+'\',\''+req.body.branch+'\',\''+req.body.year+'\')',function(err,result)
    {
      console.log(result);
     if(err)throw err;
     if(result.length!=0)
    {console.log("you are authorized to access");
     res.render('login.html');

    }
    else
    {
      console.log("you are not authorized to access");
      res.render('register.html');


    }
  });
    con.query('insert into result(roll_no)values(\''+req.body.roll_no+'\')',function(err,r)
              {
        if(err)
         throw err;

    });

})

app.get('/login',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/admin');
}
else {
	res.render('login.html');
}
});

app.get('/lockscreen',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/User_admin');
}
else {
	res.render('lockscreen.html');
}
});
app.get('/teacher',function(req,res){
  sess = req.session;
  if(sess.roll_no) {
	//sess.roll_no=req.body.username;
    res.redirect('/User_admin');
}
else {
	res.render('teacher.html');
}
});

app.post('/new', urlencodedParser, function (req, res) {

  // if(err)throw err;
   console.log("CONNECTION ESTABLISHED\nyou can start your query now");
    con.query('select * from user_info where roll_no=\''+req.body.roll_no+'\' AND password=\''+req.body.password+'\'',function(err,result)
    {

      console.log(result);
     if(err)throw err;
     if(result.length!=0)
    {console.log("you are authorized to access");
     sess=req.session;
	 sess.roll_no=req.body.roll_no;
     res.redirect('/admin');
    }
    else
    {
      console.log("you are not authorized to access");
      res.redirect('/login');

    }
  });

});


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
		res.render('admin_fill.html');

    }
    else
    {
      console.log("you are not authorized to access");
	  res.render('register.html');

    }
  });
}
})

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
     res.render('admin_fill.html');
    }
    else
    {
      console.log("you are not authorized to access");
      res.render('register.html');

    }
  });
}
})


app.get('/admin',function(req,res){
  sess = req.session;
if(sess.roll_no) {
//res.write('<h1>Hello '+sess.roll_no+'</h1> ');
//res.end('<a href="/logout">Logout</a>');

    con.query('select name,branch,year from user_info where roll_no=\''+sess.roll_no+'\'',function(err,result)
    {

      console.log(result);
     if(err)throw err;
      res.render('admin.html',{name:result[0].name,branch:result[0].branch,year:result[0].year});
  });
  } else {
    res.render('login.html');

}
});

app.get('/previous',function(req,res){
  sess = req.session;
if(sess.roll_no) {
//res.write('<h1>Hello '+sess.roll_no+'</h1> ');
//res.end('<a href="/logout">Logout</a>');

    con.query('select apt_marks,tech_marks,eng_marks from result where roll_no=\''+sess.roll_no+'\'',function(err,rest)
    {
        con.query('select name from user_info where roll_no=\''+sess.roll_no+'\'',function(e,r){


      console.log(rest);
     if(err)throw err;
     res.render('previous.html',{name:r[0].name,apt:rest[0].apt_marks,tech:rest[0].tech_marks,eng:rest[0].eng_marks});
    });});
  } else {
    res.write(' <h1>Please login first.</h1> ');
    res.end('<a href="/">Login</a>');
}
});

//module.exports = function(app) {
    // accepts the POST form submit of the CSV file
    app.post("/upload_data", urlencodedParser,function(req, res) {

        {

  var form = new formidable.IncomingForm();
  form.parse(req, function (err, fields, files) {
    res.render('admin_upload.html');
    console.log(files);
	console.log(fields.branch);
    fs.createReadStream(files.filetoupload.name)
      .pipe(csv())
      .on('data',function(data){
        var question=data[0];
          var option1=data[1];
            var option2=data[2];
              var option3=data[3];
                var option4=data[4];
                    var answer=data[5];
        con.query('insert into '+fields.branch+'_'+fields.type_ques+' values(\''+question+'\',\''+option1+'\',\''+option2+'\',\''+option3+'\',\''+option4+'\',\''+answer+'\') ',function(err,result)
            {
				console.log(result);
				if(err)throw err;
              console.log('inserted');
            })
        console.log(data);

      })
      .on('end',function(data){
      console.log('read finished');

      });
})

        }
    });

    app.post("/upload_prac", urlencodedParser,function(req, res) {

        {

    var form = new formidable.IncomingForm();
    form.parse(req, function (err, fields, files) {
    res.render('teacher.html');
    console.log(files);
    console.log(fields.branch);
    fs.createReadStream(files.filetoupload.path)
      .pipe(csv())
      .on('data',function(data){
        var topic=data[0];
          var question=data[1];
            var input_format=data[2];
              var output_format=data[3];
                var input1=data[4];
                    var output1=data[5];
                    var input2=data[6];
                        var output2=data[7];
                        var input3=data[8];
                            var output3=data[9];
        con.query('insert into compiler_test(topic,question,input_format,output_format,input1,output1,input2,output2,input3,output3) values(\''+topic+'\',\''+question+'\',\''+input_format+'\',\''+output_format+'\',\''+input1+'\',\''+output1+'\',\''+input2+'\',\''+output2+'\',\''+input3+'\',\''+output3+'\') ',function(err,result)
            {
        console.log(result);
        if(err)throw err;
              console.log('inserted');
            })
        console.log(data);

      })
      .on('end',function(data){
      console.log('read finished');

      });
    })

        }
    });


app.post("/upload_pdf", urlencodedParser,function(req, res) {

  var form = new formidable.IncomingForm();
  form.parse(req, function (err, fields, files) {
    //res.render('admin_pdf.html');
    fs.rename(files.filetoupload.path,'./public/data/'+files.filetoupload.name, function (err) {
        if (err) throw err;
       console.log('File uploaded and moved!');
	    res.set({
            'Content-Disposition': 'inline'
        });
	  res.render('d.html');
      });


      })
      .on('end',function(data){
      console.log('read finished');
	  })

});

 app.post('/test_compiler',urlencodedParser,function(req,res){
			console.log(req.query.lang+"lang");
			console.log(req.query.check+"check");
			console.log(req.query.code+"code");
			console.log(req.query.input+"input");

			var sample=0;
			if(req.query.check==0)
		  {
          if(req.query.lang=='C'||req.query.lang=='CPP')
		  {
			      var envData = { OS : "windows" , cmd : "g++",options: {timeout:1000 }};
				compiler.compileCPPWithInput(envData , req.query.code , req.query.input , sample , function (data,sample) {
					console.log(data.error);
					console.log(data.output);
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");
				//res.send(data);
				});
		  }
		  else if(req.query.lang=='Java')
		  {
			    var envData = { OS : "windows"};
				compiler.compileJavaWithInput( envData , req.query.code , req.query.input, sample ,  function(data){
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");
					});
		  }
		  		  else if(req.query.lang=='Pyth')
		  {
			    var envData = { OS : "windows"};
				 compiler.compilePythonWithInput( envData , req.query.code , req.query.input, sample ,  function(data){

				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");
					});
		  }
		  }
			else
			{
					if(req.query.lang=='C'||req.query.lang=='CPP')
		  {
			     var envData = { OS : "windows" , cmd : "g++" ,options: {timeout:1000 }};
				compiler.compileCPP(envData , req.query.code , function (data) {
					//console.log(req.body.lang);
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");
			});
		  }
		  else if(req.query.lang=='Java')
		  {
			var envData = { OS : "windows"};
			compiler.compileJava( envData ,req.query.code, function(data){
				console.log(data);
			if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");
		  });
		  }
		    else if(req.query.lang=='Pyth')
		  {
			    var envData = { OS : "windows"};
				  compiler.compilePython( envData , req.query.code , function(data){
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				res.end(data.output+"");

					});
		  }

			}

});


app.post('/test_compiler2',urlencodedParser,function(req,res){
			console.log(req.query.lang+"lang");
			console.log(req.query.check+"check");
			console.log(req.query.code+"code");
			console.log(req.query.qid+"qid");
		var input=[],output=[],i,n1=0,n2=0,n3=0,buf=0,buf2=0;
	for(i=1;i<=3;i++)
	{
		var pos=i;
		con.query('select input'+i+' as inp,output'+i+' as outp from compiler_test where q_id=\''+req.query.qid+'\'',function(err,result){
		if(err) throw err;
		console.log(result);
		input[n1]=result[0].inp;
		output[n1]=result[0].outp;
		console.log(input);
			if(req.query.check==0)
		  {
          if(req.query.lang=='C'||req.query.lang=='CPP')
		  {
			      var envData = { OS : "windows" , cmd : "g++",options: {timeout:1000 }};
				compiler.compileCPPWithInput(envData , req.query.code ,input[n3++] ,output[n2++], function (data,output) {
					console.log(data.error);
					console.log(data.output);
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				{
					buf2++;
					console.log(data.output);
					console.log(output+"mid");
					if(data.output+""==output+"")
					buf++;
					if(buf2==3)
					{
					if(buf==3)
					res.end("correct");
					else
					res.end("wrong");
				    }
				}
					});
		   }
		  else if(req.query.lang=='Java')
		  {
			    var envData = { OS : "windows"};
				compiler.compileJavaWithInput( envData , req.query.code ,input[n3++] , output[n2++], function(data){
				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				{
					buf2++;
					console.log(data.output);
					console.log(output[n2]+"mid");
					if(data.output+""==output[n2]+"")
					buf++;
					if(buf2==3)
					{
					if(buf==3)
					res.end("correct");
					else
					res.end("wrong");
				    }
					n2++;
				}
					});
		  }
		  		  else if(req.query.lang=='Pyth')
		  {
			    var envData = { OS : "windows"};
				 compiler.compilePythonWithInput( envData , req.query.code ,input[n3++] , output[n2++], function(data){

				if(data.output+""=="undefined")
				res.end(data.error+"");
				else
				{
					buf2++;
					console.log(data.output);
					console.log(output[n2]+"mid");
					if(data.output+""==output[n2]+"")
					buf++;
					if(buf2==3)
					{
					if(buf==3)
					res.end("correct");
					else
					res.end("wrong");
				    }
					n2++;
				}
					});
		  }
		  }
		  console.log(output[n1]+"last");
			n1++;
			});
	}
});

app.get('/programming',function(req,res){
con.query('select q_id,topic from compiler_test',function(err,result)
{ var r=(JSON.stringify(result));
console.log(r);
   if (err) throw err;

   res.render('question.html',{dat:JSON.stringify(result)});
});

});

app.post("/start_prog", urlencodedParser,function(req, res) {
	con.query('select * from compiler_test where q_id=\''+req.body.qid+'\'',function(err,result){
		if(err) throw err;
		console.log(result);
			res.render('programming.html',{dat:JSON.stringify(result)});
	});

});


app.get('/logout',function(req,res){
req.session.destroy(function(err) {
  if(err) {
    console.log(err);
  } else {
    res.redirect('/');
  }
});

});
app.listen(8081,function(){
console.log("App Started on PORT 8081");
});
