<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Fyrirtæki</title>
	<link rel="stylesheet" type="text/css" href="/static/still.css">
</head>
<body class="center">
	<h1>Bensínstöðvar</h1>
	<br>

	<table class="box">
	<tr>
		<th>Fyrirtæki</th>
		<th>Staður</th>
	</tr>
	<%
		cnt = 0
		for i in data['results']:
			if i ['company'] == co:
			cnt +=1
	%>
		<tr>
			<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
			<td>{{i['name']}}</td>				
		</tr>
	<%
		end
		end
	%>
	</table>
	<h3>Fjöldi stöðva {{cnt}}</h3>
	<footer>
		<a href="/">Heim</a>
	</footer>
</body>
</html>