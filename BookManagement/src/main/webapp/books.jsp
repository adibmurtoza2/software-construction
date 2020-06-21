<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css"
        rel="stylesheet">
<link href="/css/style.css" rel="stylesheet"/>        
</head>
<body>
    <div class="container container-table">
        
            <h2>Library Management</h2>
            <hr/>
            <div class="jumbotron vertical-center">
           
            
	        	<a href="/new-book">
	                <button type="submit" class="btn btn-warning">Add new book  <span class="glyphicon glyphicon-plus"></span></button>
	            </a>
   			  <br/><br/>
   			  
		<form action="/search">
           		<div class="input-group mb-3">
  				<input type="text" class="form-control" placeholder="e.g. 101" name="id">
 				 <div class="input-group-append">
   						 <button class="btn btn-warning" type="submit"><span class="glyphicon glyphicon-search"></span>Search</button>
  				</div>
				</div>
           </form>
           
           
         
           <h3>Books List</h3>
            <hr/>


                    <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Author</th>
                            <th scope="col">Name</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.id}</td>
                                <td>${book.author}</td>
                                <td>${book.name}</td>
                                <td>
                                    <a href="/${book.id}">
                                    	<button type="submit" class="btn btn-success">Edit  <span class="glyphicon glyphicon-edit"></span></button>
                                    </a>
                                 </td>   
                                  <td>
                                    <form action="/${book.id}/delete" method="post">
                                        <button type="submit" class="btn btn-danger">Delete  <span class="glyphicon glyphicon-trash"></span></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        
</body>
</html>