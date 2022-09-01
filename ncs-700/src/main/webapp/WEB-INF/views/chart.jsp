<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages' : [ 'bar', 'corechart' ] });
		google.charts.setOnLoadCallback(drawChart);

		function drawChart() {
			//for Bar
			var data = google.visualization.arrayToDataTable([
					[ 'Project Team', 'Collaborative-Effort', 'Selfish-Motive', 'Frequent-Communication' ],
					[ 'Team A', 0.3, 0.5, 0.9 ], [ 'Team B', 0.6, 0.8, 0.3 ],
					[ 'Team C', 0.4, 0.6, 0.7 ], [ 'Team D', 0.5, 0.6, 0.6],
					[ 'Team E', 0.8, 0.6, 0.3 ], [ 'Team F', 0.5, 0.4, 0.8] ]);

			var options = {
				chart : {
					title : 'Analysis of Team Mind',
					subtitle : '',
				}
			};

			var chart = new google.charts.Bar(document.getElementById('barchart-section'));
			chart.draw(data, google.charts.Bar.convertOptions(options));
			
			//for PI
			var data = google.visualization.arrayToDataTable([
		          ['Atmosphere', 'Stress strength'],
		          ['Smoking Relationship',        8.2],
		          ['Fetch and Nice Students',    58],
		          ['Frequency of Room-Out',      11],
		          ['Compliance of Instructions', 6.5],
		          ['Sleeping without Reasons',    5.0],
		          ['Concentration of Learning',  11.3]
		        ]);

		        var options = {
		          title: 'Atmosphere of My class',
		          is3D: true,
		        };

		        var chart = new google.visualization.PieChart(document.getElementById('piechart-section'));

		        chart.draw(data, options);
		        
		        var data = google.visualization.arrayToDataTable([
			          ['소비생활', '비율'],
			          ['쇼핑',        37.7],
			          ['식비',    32],
			          ['카페,편의점',    10.1],
			          ['취미 여가',   9.2],
			          ['저축', 6.2],
			          ['교통비',  4.8]
			        ]);
			
			        var options = {
			          title: '8월 가계부',
			          backgroundColor : 'pink',
			        
			        };
			
			        var chart = new google.visualization.PieChart(document.getElementById('piechart-section2'));
			
			        chart.draw(data, options);
		}
	</script>
</head>
<body>
	<div id="barchart-section" style="width: 800px; height: 500px;"></div>
	<div id="piechart-section" style="width: 900px; height: 500px;"></div>
	<div id="barchart-section2" style="width: 800px; height: 500px;"></div>
	<div id="piechart-section2" style="width: 900px; height: 500px;">

	</div>
</body>
</html>