<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
	<meta charset="UTF-8">
	<title>A Web Page</title>
	
	<% String width = request.getParameter("width"); %>
	<% String height = request.getParameter("height"); %>
	
	<%if(width == null){ %>
		<%width = "10"; %>
	<%} %>
	<%if(height == null){ %>
		<%height = "5"; %>
	<%} %>
	
	<%! public String[] row(int r){
	String first;
	String second;
	if(r % 2 == 0){
		first = "<div class='red'></div>";
		second = "<div class='blue'></div>";
	}
	else{
		first = "<div class='blue'></div>";
		second = "<div class='red'></div>";
	}
	String[] order = {first, second};
	return order;
	} %>
	
</head>
<body>
	<h3>Checkerboard <%= width %>w X <%= height %>h</h3>
	<%for (int i=0;i<Integer.parseInt(height);i++){%>
		<div id="row">
		<%String[] row = row(i); %>
		<%for (int j=0;j<Integer.parseInt(width);j++){ %>
			<%if(j % 2 == 0){ %>
			<%= row[0] %> 
			<%} %>
			<%if(j % 2 != 0){ %>
			<%= row[1] %>  
			<%} %>
		<%} %>
		</div>
	<%} %>
	
</body>
</html>