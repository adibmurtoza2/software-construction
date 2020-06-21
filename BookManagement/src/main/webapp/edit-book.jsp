<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="/css/style.css" rel="stylesheet"/> 
    <title>Book Library</title>
</head>
<body>
    <div class="container container-table">
        <h2>Edit User</h2>
        <hr>
        <div class="jumbotron vertical-center">
            <div class="form-group w-75">
                <form:form action="${book.id}/update" modelAttribute="book" method="post">
                    <div>
                        <div>
                            <form:label path="id">Id: ${book.id}</form:label>
                        </div>
                        <div>
                            <form:label path="author">Author</form:label>
                            <form:input class="form-control" type="text" id="author" path="author"/>
                            <form:errors path="author" />
                        </div>
                        <div>
                            <form:label path="name">Name</form:label>
                            <form:input type="text" id="name" path="name" class="form-control"/>
                            <form:errors path="name" />
                        </div>
                    </div>
                    <div>
                    <br>
                        <div>
                            <input type="submit"  class="btn btn-success" value="Update" >
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    </body>
</html>