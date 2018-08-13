<!DOCTYPE>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- propoer style for mobile devices -->
	<title>The Event Browser</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><i class="fas fa-h-square"></i></span> Home</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-nav-demo">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Sign Up <i class="fas fa-user"></i></a></li>
					<li><a href="#">Login <i class="fas fa-user-plus"></i></a></li>
				</ul>
			</div>		
		</div>
	</nav>
	<div class="container-fluid">
		<div class="jumbotron">
			<h1><i class="fas fa-hand-peace"></i></span> The Event Browser</h1>
			<p>A bunch of events all around you </p>
		</div>
	</div>
	<hr>
		<div class="container" id="cont">
			<div class="row">
				<div class="row">
			<div class="col-lg-12">
				<div id="custom-search-input">
					<div class="input-group col-lg-12">
						<input type="text" class="form-control input-lg" placeholder="Search Your Event" />
							<span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
					</div>
				</div>
			</div>
		</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image1"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Pierwszy</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image2"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Drugi</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image3"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Trzeci</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image4"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Czwarty</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image5"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Piąty</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6">
				<div class="thumbnail">
					<div class="row">
						<div class="col-lg-6">
							<div class="image image6"></div>
						</div>
						<div class="col-lg-6">
							<div>Data:</div>
							<h2>Event Szósty</h2>
							<div>Organizator:</div>
							<div>Grupa:</div>
							<div>Miejsce:</div>
						</div>
					</div>
				</div>
			</div>
		</div> 
	</div>
	
	<hr>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>