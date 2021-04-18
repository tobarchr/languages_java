<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>All Languages</title>
</head>
<body>
    <div class="container">
      <h1>All Languages</h1>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Creator</th>
            <th scope="col">Version</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            <c:forEach items="${languages}" var="language">
          <tr>
            <td><a href="/languges/${language.id}"><c:out value="${language.name}"/></a></td>
            <td><c:out value="${language.creator}"/></td>
            <td><c:out value="${language.version}"/></td>
            <td>
              <a class="btn btn-primary" href="/languages/${language.id}/edit" role="button">Edit</a>
              <form action="/languages/${language.id}/edit" method="post">   
                <input type="hidden" name="_method" value="delete">           
                <button type="submit" class="btn btn-danger">Delete</button>
              </form>
            </td>
             </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
    <div class="container mx-auto mt-5" style="width: 500px;">
        <form:form action="/languages" method="post" modelAttribute="language">
        <div class="form-group mb-3">
            <form:label path="name" class="form-label">Name</form:label>
              <form:errors path="name" class="form-text"></form:errors>
              <form:input path ="name" class="form-control"></form:input>
            </div>
            <div class="form-group mb-3">
                <form:label path="creator" class="form-label">Creator</form:label>
                <form:errors path="creator" class="form-text"></form:errors>
                <form:input path="creator" class="form-control"></form:input>
              </div>
              <div class="form-group mb-3">
                <form:label path="version" class="form-label">Version</form:label>
                <form:errors path="version" class="form-text"></form:errors>
                <form:input path="version" class="form-control" type="number"></form:input>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form:form>
    </div>
</body>
</html>