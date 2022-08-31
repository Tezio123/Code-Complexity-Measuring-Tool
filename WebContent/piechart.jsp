

<%--  	
		
		ITPM 2020 June Intake
		ITPM_WE_66
		
--%>

<!DOCTYPE html>
<html lang="en-US">
<body>

<style>


.button {
  background-color: blue; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

body {
background: #1f2e2e;
}
</style>

<h1 style="color:white">Code Complexity of Measuring Tool</h1>

<div id="piechart"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script>
function openWin() {
  window.open("FinalResult.jsp");
}
</script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Precentage of Task'],
  ['Inheritance', 8],
  ['Coupling', 2],
  ['Size', 4],
  ['Methode', 2],
  ['Control Structure', 8],
  ['Variables',8]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Complexity of the Code', 'width':1450, 'height':450};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>


	<form>
  <input type="button" class="button" value="Return to Result Page" onclick="openWin()">
</form>

</body>
</html>
