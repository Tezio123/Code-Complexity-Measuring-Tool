

<%--  	
		Samarakoon S.M.T.N.S.B
		ITPM 2020 June Intake
		IT17088374
--%>





<%@page import="pac_service.*"%>
<%@page import="pac_model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Inheritance</title>

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
	<h1>Complexity Of Inheritance</h1>
	<table id="customers">
	<tr>
	<thead>
		<th>Count</th>
		<th>Class Name</th>
		<th>No of direct inheritances</th>
		<th>No of indirect inheritances</th>
		<th>Total inheritances</th>
		<th>Ci</th>
	</tr>
	</thead>
	<tbody>
		<%
			ServiceInheritance test4 = new ServiceInheritance();
				ArrayList<ModelInheritance> arrayList4 = test4.inheritance(session.getAttribute("test_code").toString());
				
				for (ModelInheritance inheritance : arrayList4) {
			int total = inheritance.getDirect()+inheritance.getIndirect();
			
			int Ci=total;
			if(Ci==0){
				Ci=Integer.parseInt(session.getAttribute("Inheritance").toString());
			}else if(Ci==1){
				                Ci=Integer.parseInt(session.getAttribute("Inheritance1").toString());
				            }else if(Ci==2){
				                Ci=Integer.parseInt(session.getAttribute("Inheritance2").toString());
				            }else if(Ci==3){
				                Ci=Integer.parseInt(session.getAttribute("Inheritance3").toString());
				            }else if(Ci>4){
				                Ci=Integer.parseInt(session.getAttribute("Inheritance4").toString());
				            }
		%>
			<tr>
				<td><%=inheritance.getLineNumber() %></td>
				<td><%=inheritance.getClassName() %></td>
				<td><%=inheritance.getDirect() %></td>
				<td><%=inheritance.getIndirect() %></td>
				<td><%=total %></td>
				<td><%=Ci %></td>
			</tr>
			<% 
		}	
	%>
	</tbody>
	</table>
	</center>
</body>
</html>