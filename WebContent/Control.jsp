


<%--  	
		Senadeera U.M.R.M.B
		ITPM 2020 June Intake
		IT16166066
--%>




<%@page import="pac_service.*"%>
<%@page import="pac_model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Control</title>

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
	<h1>Complexity Of Control Structure</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Wtcs</th>
		<th>NC</th>
		<th>Ccspps</th>
		<th>Ccs</th>
	</tr>
	</thead>
	<tbody>
		<%
			ServiceControl test3 = new ServiceControl();
				int condition= Integer.parseInt(session.getAttribute("condition").toString());
				int loop = Integer.parseInt(session.getAttribute("loop").toString());
				int switchCase= Integer.parseInt(session.getAttribute("switchCase").toString());
				int caseOnly=Integer.parseInt(session.getAttribute("caseOnly").toString());
			ArrayList<ModelControls> arrayList3 = test3.control(session.getAttribute("test_code").toString(),condition,loop,switchCase,caseOnly);
			
			for (ModelControls control : arrayList3) {
				int total = (control.getLine_weight()*control.getNo_of_control())+control.getCspps();
		%>
		<tr>
			<td><%=control.getLineNumber() %></td>
			<td><%=control.getLine() %></td>
			<td><%=control.getLine_weight() %></td>
			<td><%=control.getNo_of_control() %></td>
			<td><%=control.getCspps() %></td>
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