


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
<title>Result Method</title>

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
	<h1>Complexity Of Methods</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Wmrt</th>
		<th>Npdtp</th>
		<th>Ncdtp</th>
		<th>Cm</th>
	</tr>
	</thead>
	<tbody>
	
	<%
			ServiceMethod test2 = new ServiceMethod();
				ArrayList<ModelMethods> arrayList2 = test2.method(session.getAttribute("test_code").toString());
				
				for (ModelMethods methods : arrayList2) {
			
			int Wmrt =(methods.getComposite_method()*Integer.parseInt(session.getAttribute("methodComposite").toString()))+(methods.getPrimitive_method()*Integer.parseInt(session.getAttribute("methodPrimitive").toString()));
				          
				          	int Cm = Wmrt+((methods.getPrimitive_parameters()*Integer.parseInt(session.getAttribute("methodPrimitiveData").toString()))+(methods.getComposite_parameters()*Integer.parseInt(session.getAttribute("methodCompositeData").toString())));
		%>
		<tr>
			<td><%=methods.getLineNumber() %></td>
			<td><%=methods.getLine() %></td>
			<td><%=Wmrt %></td>
			<td><%=methods.getPrimitive_parameters() %></td>
			<td><%=methods.getComposite_parameters() %></td>
			<td><%=Cm %></td>
		</tr>
		<% 
		}	
		%>
	
	</tbody>
	</table>
	</center>
</body>
</html>