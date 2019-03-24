<!DOCTYPE HTML>
<?php
   include ("dbconn.php");
   ?>
<html>
	<head>
		<title>Freshers Tennis Selections 2019</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.php" class="logo"><strong>Tennis</strong> Selections</a>
								</header>

							<!-- Banner -->
								
							<section id="banner">
									<div class="content">
										<header>
											<h2>Rankings - Women</h2>
										</header>
										<div>
         <?php
            //$myInput = $_GET["myInput"];
            $sql = "SELECT Winner, COUNT(*) FROM match_formations_w WHERE Winner IS NOT Null GROUP BY Winner ORDER BY COUNT(*) DESC";
        	
            $result = $conn->query($sql);
            if($result->num_rows > 0){
            echo "<table>
            <tr>
            <th>Player</th>
            <th>Wins</th>
            </tr>";
            while($row = $result->fetch_assoc()){
            echo "<tr>";
            echo "<td>" . $row['Winner'] . "</td>";
            echo "<td>" . $row['COUNT(*)'] . "</td>";
            echo "<tr>";
            }
            echo "</table>";
            }
            else{
            echo "0 results"; 
            }
            ?>
            
            <ul class="actions">
				<li><a href="index.php" class="button big">Back</a></li>
			</ul>
      </div>
									</div>

									<!--Add Women rankings here-->

									<!-- <span class="image object">
										<img src="images/pic10.jpg" alt="" />
									</span> -->
							</section>

							

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="index.php">Homepage</a></li>
										<li>
											<span class="opener">Matches - Men</span>
											<ul>
												<li><a href="schedule_match_m.php">Schedule Match</a></li>
												<li><a href="update_result_m.php">Update Result</a></li>
												<li><a href="all_matches_m.php">All Matches</a></li>
												<li><a href="yet_to_play_m.php">Yet To Play</a></li>
												<li><a href="completed_m.php">Completed</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Matches - Women</span>
											<ul>
												<li><a href="schedule_match_w.php">Schedule Match</a></li>
												<li><a href="update_result_w.php">Update Result</a></li>
												<li><a href="all_matches_w.php">All Matches</a></li>
												<li><a href="yet_to_play_w.php">Yet To Play</a></li>
												<li><a href="completed_w.php">Completed</a></li>
											</ul>
										</li>
										<li><a href="add_player.php">Add Player</a></li>
										<li>
									</ul>
								</nav>


						</div>
					</div>


			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>