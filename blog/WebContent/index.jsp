<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 30%, 95% 83%, 74% 93%, 15% 95%, 8% 80%, 0% 30%);}</style>
</head>
<body>
<!-- -navbar -->
<%@include file="normal_navbar.jsp" %>
<!-- banner -->
<div class="container-fluid p-0 m-0">
<div class="jumbotron" style='background:orange;'>
<div class="container">
<h1 class="display-3">Hii There!!</h1>
<h3><b>Everything you can imagine is real</b></h3>
<h3>May you live all the days of your life</h3>
<a href="register.jsp" class="btn btn-outline-light"> 
          <j class="fa fa-slack"></j>
        Start! its free</a>
<a href="login.jsp" class="btn btn-outline-light"> <j class="fa fa-odnoklassniki"></j>Login!</a>

</div>

</div>
</div>
<!-- cards -->
<div class="container">
<div class="row">
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><b>POEM WRITING</b></h5>
    <p class="card-text">Poetry empowers the simplest of lives to confront the most extreme sorrows with courage</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><b>STORY WRITING</b></h5>
    <p class="card-text">You have a voice don't be afraid to speak, live through your pen and create a legacy.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><B>TECHNICAL CONTENT WRITING</B></h5>
    <p class="card-text">As a technical communicator, Be a enabler of
information.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
</div>
</div>
<br>
<div class="container">
<div class="row">
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><B>QUOTES WRITING</B></h5>
    <p class="card-text">If there's a book that you want to read, but it hasn't been written yet, then you must write it.</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><B>SHYARI WRITING</B></h5>
    <p class="card-text">Great poetry is always written by somebody straining to go beyond what he can do..</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><B>YOUR LIFE STORY</B></h5>
    <p class="card-text">Do you wait for things to happen, or do you make them happen yourself? I believe in writing your own story..</p>
    <a href="#" class="btn btn-primary">Read more</a>
  </div>
</div>
</div>
</div>
</div>
<br>
<br>
<!-- footer -->
<%@include file="footer.jsp" %>






<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
</body>
</html>