<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Search Book</title>
    <link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="/css/style.css" rel="stylesheet"/> 
</head>
<body>
  			 <div class="container container-table">
  			 	<h2>Search Result</h2>
  			 	<hr>
  			 	<div class="jumbotron vertical-center">
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
                        
                        </tbody>
                    </table>
                </div>
			</div>
</body>
</html>