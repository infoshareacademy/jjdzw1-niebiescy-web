<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="niebiescyapp.MeteoDataWriter"%>
<%@ page import="niebiescyapp.MeteoStation" %>


<!DOCTYPE>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- propoer style for mobile devices -->
	<title>The Event Browser</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<%

MeteoDataWriter meteoDataWriter = new MeteoDataWriter();
MeteoStation meteoStation = meteoDataWriter.getWeatherByCity("Hel");
System.out.println("Pogoda dla miasta: "+meteoStation.getStation()+" temperatura: "+meteoStation.getTemperature());
%>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>