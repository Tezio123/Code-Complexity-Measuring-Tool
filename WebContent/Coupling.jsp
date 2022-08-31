
<%--  	
		Wijenayaka H.L.R
		ITPM 2020 June Intake
		IT17089432
--%>

<%@page import="pac_service.*"%>
<%@page import="pac_model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Coupling</title>

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
	<h1>Complexity Of Couplings</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Nr</th>
		<th>Nmcms</th>
		<th>Nmcmd</th>
		<th>Nmcrms</th>
		<th>Nmcrmd</th>
		<th>Nrmcrms</th>
		<th>Nrmcrmd</th>
		<th>Nrmcms</th>
		<th>Nrmcmd</th>
		<th>Nmrgvs</th>
		<th>Nmrgvd</th>
		<th>Nrmrgvs</th>
		<th>Nrmrgvd</th>
		<th>Ccp</th>
	</tr>
	</thead>
	<tbody>
		<%
			ServiceCoupling test5 = new ServiceCoupling();
			ArrayList<ModelCouplings> arrayList5 = test5.coupling(session.getAttribute("test_code").toString());
			
			for (ModelCouplings coupling : arrayList5) {
				
				int Nr=coupling.getRecursive()*Integer.parseInt(session.getAttribute("recursive").toString());
				
				int Nmcms=coupling.getRegular_regular()*Integer.parseInt(session.getAttribute("regularRegular").toString());
				
				int Nmcrms=coupling.getRegular_recursive()*Integer.parseInt(session.getAttribute("regularRecursive").toString());
				
				int Nrmcrms=coupling.getRecursive_recursive()*Integer.parseInt(session.getAttribute("recursiveRecursive").toString());
				
				int Nrmcms=coupling.getRecursive_regular()*Integer.parseInt(session.getAttribute("recursiveRegular").toString());
				
				int total =Nr+Nmcms+Nmcrms+Nrmcrms+Nrmcms+(coupling.getRegular_global()*Integer.parseInt(session.getAttribute("regularGlobal").toString()))+(coupling.getRegular_regular()*Integer.parseInt(session.getAttribute("recursiveGlobal").toString()));
		%>
				<tr>
					<td><%=coupling.getLineNumber() %></td>
					<td><%=coupling.getLine() %></td>
					<td><%=coupling.getRecursive() %></td>
					<td><%=coupling.getRegular_regular() %></td>
					<td>0</td>
					<td><%=coupling.getRegular_recursive() %></td>
					<td>0</td>
					<td><%=coupling.getRecursive_recursive() %></td>
					<td>0</td>
					<td><%=coupling.getRecursive_regular() %></td>
					<td>0</td>
					<td><%=coupling.getRegular_global() %></td>
					<td>0</td>
					<td><%=coupling.getRegular_regular() %></td>
					<td>0</td>
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