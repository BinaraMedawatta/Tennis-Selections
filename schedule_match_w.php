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
											<h2>Schedule Match</h2>
										</header>

										<div>
											<form  method="post">

      <div>
            <label>Player 1</label>
         </div>

      <?php
      $sql = "SELECT Name FROM players WHERE Gender = 'Female'";
      $result = $conn->query($sql);

      echo "<select name='Player_1'>";
      while ($row = $result->fetch_assoc()) {
         echo "<option value='" . $row['Name'] . "'>" . $row['Name'] . "</option>";
      }
      echo "</select>";

   ?>

      <div>
            <label>Player 2</label>
         </div>

      <?php
      $sql = "SELECT Name FROM players WHERE Gender = 'Female'";
      $result = $conn->query($sql);

      echo "<select name='Player_2'>";
      while ($row = $result->fetch_assoc()) {
         echo "<option value='" . $row['Name'] . "'>" . $row['Name'] . "</option>";
      }
      echo "</select>";

   ?>





         <!-- <div>
            <label>Player 1</label>
         </div>
         <div>
            <input type="text" name="Player_1" maxlength="50" size="20" required>
         </div>
         <div>
            <label>Player 2</label>
         </div>
         <div>
            <input type="text" name="Player_2" maxlength="10" size="20" required>
         </div> -->
         <!--<input type="button" onclick="history.back();" value="Back">-->
         <br>
         <input type="reset">
         <input type="submit" name="submit" value="Confirm">
      </form>
      <?php
         //Insert to database
				$p_1 = isset($_POST['Player_1']) ? $_POST['Player_1'] : '';
				$p_2 = isset($_POST['Player_2']) ? $_POST['Player_2'] : '';
        
		
		 if ($_SERVER['REQUEST_METHOD'] === 'POST') {
             if (isset($_POST['submit'])) {
         
				$sql_i = "INSERT INTO match_formations_w(Player_1, Player_2) VALUES('$p_1', '$p_2')";
				echo $sql_i;
         
				$result_i = $conn->query($sql_i);
         
         
         //$("#data_Table").load("index.php #data_Table");
                 // header("Location: index.php");
             }
         }
         ?>
      </div>
										
										
									</div>
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