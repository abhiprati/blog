<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String name=(String)session.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="normal_navbar.jsp" %>
<!-- Card -->

<div class="conatiner pt-5" style='background:grey;'>
<main>
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card" style='border-radius:50px;'>

  <!-- Card body -->
  <div class="card-body" >

    <!-- Material form register -->
    <form action="data" method="post">
      <p class="h4 text-center py-4"><b>Sign up</b></p>
		
		<%
		if(name!=null)
		{
		%>
		<h3><div style:'background:black;'>&nbsp;&nbsp;&nbsp;&nbsp;<b><%=name %></b></div></h3>
		<%}
		session.removeAttribute("msg");
		%>
      <!-- Material input text -->
      <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" id="materialFormCardNameEx" class="form-control" name="name">
        <label for="materialFormCardNameEx" class="font-weight-light">Your name</label>
      </div>

      <!-- Material input email -->
      <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="email" id="materialFormCardEmailEx" class="form-control" name="email">
        <label for="materialFormCardEmailEx" class="font-weight-light">Your email</label>
      </div>

   

      <!-- Material input password -->
      <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" id="materialFormCardPasswordEx" class="form-control" name="pass">
        <label for="materialFormCardPasswordEx" class="font-weight-light">Your password</label>
      </div>

      <div class="text-center py-4 mt-3">
        <button class="btn btn-outline-light" type="submit" style='background:blue;'>Register</button>
      </div>
     <B>IF YOU HVE NO ACCOUNT THEN LOG IN FIRST!!</B><br>
       <center> <a href="login.jsp"><button class="btn btn-outline-light" type="button" style='background:blue;'>Log In</button></a></center>
    </form>
    <!-- Material form register -->

  </div>
  <!-- Card body -->

</div>
<!-- Card -->
</div>
</div>
<br>
</main> 
<!-- footer -->

</div>

<%@include file="footer.jsp" %>
<!-- script -->

<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
</body>
</html>