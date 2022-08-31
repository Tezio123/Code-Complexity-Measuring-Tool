


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
<title>Result Variable</title>

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
	<h1>Complexity Of Variables</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Wvs</th>
		<th>Npdtv</th>
		<th>Ncdtv</th>
		<th>Cv</th>
	</tr>
	</thead>
	<tbody>
		<%
			ServiceVariable test1 = new ServiceVariable();
				ArrayList<ModelVariables> arrayList1 = test1.variable(session.getAttribute("test_code").toString());
				
				for (ModelVariables variables : arrayList1) {
			
			int Wvs =(variables.getGlobal()*Integer.parseInt(session.getAttribute("variableGlobal").toString()))+(variables.getLocal())*Integer.parseInt(session.getAttribute("variableLocal").toString());
				            
				            int Npdtv = variables.getGlobal()+variables.getLocal();
				            
				            int Cv = Wvs*((Npdtv*Integer.parseInt(session.getAttribute("variablePrimitive").toString()))+(variables.getComposite()*Integer.parseInt(session.getAttribute("variableComposite").toString())));
		%>
			<tr>
				<td><%=variables.getLineNumber() %></td>
				<td><%=variables.getLine() %></td>
				<td><%=Wvs %></td>
				<td><%=Npdtv %></td>
				<td><%=variables.getComposite() %></td>
				<td><%=Cv %></td>
			</tr>
			<% 
		}	
	%>
	</tbody>
	</table>
	</center>
</body>
</html>