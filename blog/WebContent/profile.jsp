<%@ page import="com.arr.user"%>
<%@ page import="com.post.*" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%user users=(user)session.getAttribute("username"); %>
 <%String output=(String)session.getAttribute("res"); %>
 <%-- 
 <%ArrayList<post> db=(ArrayList)session.getAttribute("postlist"); %>
 --%>
 <%ArrayList<post> addpost=(ArrayList)session.getAttribute("postlist"); %>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><h1><b><font size=20px >Life Story</font></b></h1></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://abhiprati.github.io/info/">Contact</a>
      </li>
      
      
      
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addpost">
  DO POST</button>&nbsp;&nbsp;&nbsp;
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><%=users.getName() %></button>&nbsp;&nbsp;&nbsp;
     
      
    </form>
     <form action="logout" method="post"><button class="btn btn-outline-light my-2 my-sm-0">Log Out</button></form>
  </div>
</nav>

<!-- navbar ends -->


<!-- modal -->


<!-- ProfileModal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><b>Hii <%=users.getName() %></b></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <b>USER ID: <%=users.getEmail() %></b><br>
      <b>PASSWORD:<%=users.getPassword() %></b>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<!-- end of modal -->
<!-- addpostmodal -->

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="addpost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provide the post details....</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-post" action="addpostservlet" method="post">
        <div class="form-group">
        <input type="text" name="title" placeholder="Enter post Title" class="form-control">
        </div>
        <div class="form-group">
        <textarea class="form-control" name="content" placeholder="Enter your Content" style='height:300px;'></textarea>
        </div>
         <div class="form-group">
        <textarea class="form-control" name="code" placeholder="Enter your Code ,If any" style='height:300px;'></textarea>
        </div>
          <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">POST</button>
      </div>
     
        </form>
      </div>
    
      
    </div>
  </div>
</div>

<!-- end post modal -->
<div class="container-fluid p-4 m-0" id="cont">
<div class="jumbotron" style='background:orange;'>
<div class="container">
<ul class="list-group">
<%if(output=="done"){ %>
 <center><b> <li class="list-group-item">POST SUBMITTED SUCCESFULLY</li></b></center>
  <%}
session.removeAttribute("res");
%>
</ul>
<center><form action="load" method="post"><input type="submit" class="btn btn-primary" value="CLICK HERE SEE YOUR POST"></input></form></center><br>
 <%Iterator it=addpost.iterator();
 while(it.hasNext())
 {
 post ps=(post)it.next();%>
 <a name="education">
<div class="card">
  <div class="card-body">
    <h2 class="card-title"><b>POST OF <%=ps.getName() %></b></h2>
    <p class="card-text"><b>TITLE:-</b><bR><%=ps.getPtitle() %></p>
    <p class="card-text"><b>CONTENT:-</b><BR><%=ps.getPcontent() %></p>
     <p class="card-text"><b>CODE/DESCRIPTION:-</b><BR><%=ps.getPcode() %>></p>
      
    <center><b> <a href="#top" class="card-link">Click here  to go at top</a></center></b>
  </div>
</div></a><br><br>
 <%} %>>

</div>
</div>
</div>





<br><br>
<%-- 

<%Iterator it=db.iterator();
while(it.hasNext())
{
post p=(post)it.next();%>


<br><br><br>
<%} %></div>--%>


<%@include file="footer.jsp" %>
<!-- SCRIPT  -->
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- add post -->















</body>
</html>