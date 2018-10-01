<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verð</title>
	<link rel="stylesheet" type="text/css" href="/static/still.css">
</head>
<body class="center">
	<h1>Nánari upplýsingar</h1>
	<%
		for i in data['results']:
			if i ['key'] == k:
	%>
	<div class="box">
		<h3>Söluaðili: {{i['company']}}</h3>
		<h3>Staður: {{i['name']}}</h3>
		<h3>Bensin 95: {{i['bensin95']}}</h3>
		<h3>Dísel: {{i['diesel']}}</h3>
	</div>

	<div class="box">
		<h3>Latitude: {{i['geo']['lat']}}</h3>
		<h3>Longditude: {{i['geo']['lon']}}</h3>
		<a href="https://www.google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z">Staðsetning á korti</a>
		
		
	</div>
	<%
		end
		end
	%>
	<br>
	<footer>
		<a href="/">Heim</a>
	</footer>
</body>
</html>