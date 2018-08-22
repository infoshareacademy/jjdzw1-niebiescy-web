<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>

<form method="post" action="/EventAddServlet">

    Name: <input type="text" name="name"/><br/><br/>
    Description: <input type="text" name="description"/><br/><br/>
    Start date: <input type="date" name="start_date"/><br/><br/>
    Finish date: <input type="date" name="finish_date"/><br/><br/>
    Address: <input type="text" name="address"/><br/><br/>
    Google maps: <input type="text" name="google_maps"/><br/><br/>
    Organizer: <input type="number" name="organizer"/><br/><br/>
    Price: <input type="number" name="price"/><br/><br/>
    Tickets: <input type="number" name="tickets"/><br/><br/>
    Category: <input type="number" name="category"/><br/><br/>
    Promote?:
    <select name="promote">
        <option>YES</option>
        <option>NO</option>
    </select> <br/><br/>
    <input type="submit" name="save" value="Add event"/><br/><br/>
</form>


</body>
</html>
