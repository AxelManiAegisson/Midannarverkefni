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