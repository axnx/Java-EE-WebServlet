<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	
	<title>Configuration Template</title>
	<meta name="description" content="Kurzbeschreibung" />
	
	<link href="/css/style.css" type="text/css" rel="stylesheet" />
	<!-- <script src="js/login.js" type="text/javascript" /> -->

	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
	
	<script
			  src="https://code.jquery.com/jquery-1.12.4.min.js"
			  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
			  crossorigin="anonymous"></script>
				
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>
<script>
/*
function animation() {
	$('td').click( function() {
			//alert('clicked');
			alert($( this ).text());
	});


function checklogin(){
  $("#login").click(function(){
    var email = $("#email").val();
    var password = $("#pwd").val();
    //alert(email " : " + password);
  });
};

*/

function testAlert(){
    alert("TESTALERT");
}



$(document).ready(function(){
	 //checklogin();
   //testAlert();
   //alert("TEST");

   //https://www.formget.com/jquery-login-form/
   $("#save").click(function(){
     var path1 = $("#conf_path1").val();
     var path2 = $("#conf_path2").val();
     

      /*

      else {
        $.post("login.php",{ email1: email, password1:password},
      */
     alert(path1 + " : " + path2);
     //alert("TESTMESSAGE");
  })

});

</script>
    <%= "Hello World!" %>
    <div class="container">
  <h2>Configuration</h2>
  <p>server configuration</p>
  <div class="form-group">
	<label for="conf_path1">Path1:</label>
      <input type="text" class="form-control" id="conf_path1">
			<label for="conf_path1">Path2:</label>
      <input type="text" class="form-control" id="conf_path2">	
  </div>	
     <button class="btn btn-success" type="button" id="save" >save</button>
     <br/> 
  </form>
  </div><!-- /container -->
</body>
</html>