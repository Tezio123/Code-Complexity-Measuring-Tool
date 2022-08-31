


<%--  	
		Dharamasiri P.A.A.L
		ITPM 2020 June Intake
		IT17153478
--%>





<%@page import="pac_service.*"%>
<%@page import="pac_model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Size</title>

<style>
* {font-family: 'Open Sans', sans-serif;}

#customers {
  border-collapse: collapse;
  width: 100%;
  background-color: #b3c6ff;
}
body {
background: #1f2e2e;
}


#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #b3c6ff;}

#customers tr:hover {background-color:;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #29a329;
  color: #b3ffb3;
}
h1 {
  text-align: center;
  font-size: 2.4em;
  color: #FFFFFF;
}
h2 {
  text-align: left;
  font-size: 1.4em;
  color: #FFFFFF;
}
</style>
</head>
<body>
<h2>CDE IT solutions</h2>
	<center>
	<h1>Complexity Of Size</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Line No</th>
		<th>Program Statements</th>
		<th>Nkw</th>
		<th>Nid</th>
		<th>Nop</th>
		<th>Nnv</th>
		<th>Nsl</th>
		<th>Cs</th>
	</tr>
	</thead>
	<tbody>
    
    <%
        	ServiceSize test = new ServiceSize();
                		ArrayList<ModelSizes> arrayList = test.size(session.getAttribute("test_code").toString());
                		
                		for (ModelSizes sizes : arrayList) {
                	
                	int Nkw = sizes.getKeyword()*Integer.parseInt(session.getAttribute("sizeKeyword").toString());
                	int Nid = sizes.getIdentifier()*Integer.parseInt(session.getAttribute("sizeIdentifier").toString());
                	int Nop = sizes.getOperator()*Integer.parseInt(session.getAttribute("sizeOperator").toString());
                	int Nnv = sizes.getNumerical()*Integer.parseInt(session.getAttribute("sizeNumerical").toString());
                	int Nsl = sizes.getStringCount()*Integer.parseInt(session.getAttribute("sizeString").toString());
                	int total =Nkw+Nid+Nop+Nnv+Nsl;
        %>
			<tr>
				<td scope="row"><%=sizes.getLineNumber() %></td>
				<td><%=sizes.getLine() %></td>
				<td><%=sizes.getKeyword() %></td>
				<td><%=sizes.getIdentifier() %></td>
				<td><%=sizes.getOperator() %></td>
				<td><%=sizes.getNumerical() %></td>
				<td><%=sizes.getStringCount() %></td>
				<td><%=total %></td>
			</tr>
			<% 
		}	
	%>
	</tbody>
	</table>
	</center>
</body>
</html>