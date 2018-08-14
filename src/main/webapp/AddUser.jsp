<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- propoer style for mobile devices -->
    <title>Add new user</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style/style.css">

</head>
<body>
Add new user<br/><br/>

<form method="post" action="/UserAddServlet">

    Login: <input type="text" name="login"/><br/><br/>
    Password: <input type="password" name="password"/><br/><br/>
    Name: <input type="text" name="name"/><br/><br/>
    Surname: <input type="text" name="surname"/><br/><br/>
    Email: <input type="email" name="email"/><br/><br/>
    Phone: <input type="text" name="phone"/><br/><br/>
    Type of user:
    <select name="type">
        <option>NORMAL</option>
        <option>BUSINESS</option>
        <option>ADMIN</option>
        <br/><br/>
    </select>
    Active user?:
    <select name="isactive">
        <option>YES</option>
        <option>NO</option>

    </select> <br/><br/>
    <input type="submit" name="save" value="Add user"/><br/><br/>
</form>


</body>
</html>
