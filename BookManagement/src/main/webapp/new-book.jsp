<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Book Library</title>
    <link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="/css/style.css" rel="stylesheet"/> 
</head>
<body>
    <div class="container container-table">
        <h2>New Book</h2>
        <hr>
        <div class= "jumbotron vertical-center">
            <div>
                <form:form action="/add" modelAttribute="book" method="post">
                    <div class="form-group w-75">
                        <div>
                            <form:label path="author">Author</form:label>
                            <form:input type="text" class="form-control" id="author" path="author"/>
                            <form:errors path="author" />
                        </div>
                        <div>
                            <form:label path="name">Name</form:label>
                            <form:input type="text" class="form-control" id="name" path="name"/>
                            <form:errors path="name" />
                        </div>
                    </div>
                    <div>
                   
                        <div>
                            <input type="submit" class="btn btn-success" value="Add Book">
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    </body>
</html>