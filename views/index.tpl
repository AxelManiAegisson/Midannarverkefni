<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Petrol.is</title>
	<link rel="stylesheet" type="text/css" href="/static/still.css">
</head>
<header>
	<div class="row">
	  	<div class="column">
	    	<img src="static/ao.jpg" alt="Atlands Olía" style="width:100%">
	  	</div>
		<div class="column">
		    <img src="static/costco.jpg" alt="Costco Bensín" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/daelan.jpg" alt="Dælan" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/n1.jpg" alt="N1" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/ob.jpg" alt="'ÓB" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/olis.jpg" alt="Olís" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/orkan.jpg" alt="Orkan" style="width:100%">
	  	</div>
	  	<div class="column">
	    	<img src="static/orkanx.jpg" alt="OrkanX" style="width:100%">
	  	</div>
	</div>
</header>
<body>


	<%
	import json
	with open("petrol.json","r", encoding="utf-8") as skra:
		data = json.load(skra)
	%>
		<section>
			<h2>Yfirlit söluaðila.</h2>
			<div class="wrapper">
			<% 
				le = len(data['results'])
				for i in range(le -1):
				if (data['results'][i]['company'] != data['results'][i+1]['company']):
			%>
				<div class="box">
					<a href="/company/{{data['results'][i]['company']}}"> {{data['results'][i]['company']}}</a>
				</div>
				<% end
			%>
			</div>
		</section>
</body>
</html>