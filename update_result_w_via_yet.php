<!DOCTYPE HTML>
<?php
   $id = $_GET['id'];
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
											<h2>Update Result</h2>
										</header>

										<div>
<?php
//Get records from database
$sql = "SELECT * FROM match_formations_w WHERE Match_ID = '$id'";
// die($sql);
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
$row = $result->fetch_assoc();
}
?>
											<form  method="post">
         <div>
            <label>Match ID</label>
         </div>
         <input type="text" value="<?php echo $row['Match_ID']?>" disabled>
         <div>
            <label>Player 1</label>
         </div>
         <input type="text" name='Player_1' value="<?php echo $row['Player_1']?>" disabled>
         <div>
            <label>Player 2</label>
         </div>
         <input type="text" name='Player_2' value="<?php echo $row['Player_2']?>" disabled>
      
       <div>
            <label>Player 1 Points</label>
         </div>
         <div>
            <input type="text" name="Player_1_P" required>
         </div>
         <div>
            <label>Player 2 Points</label>
         </div>
         <div>
            <input type="text" name="Player_2_P" required>
         </div>
         
         <div>
            <label>Winner</label>
         </div>

      <?php
      echo "<select name='Winner'>";
      echo "<option value='" . $row['Player_1'] . "'>" . $row['Player_1'] . "</option>";
      echo "<option value='" . $row['Player_2'] . "'>" . $row['Player_2'] . "</option>";
      echo "</select>";

   ?>
   		 <br>
         <input type="button" onclick="history.back();" value="Back">
         <input type="reset">
         <input type="submit" name="submit_match" value="Confirm">

      </form>


      <?php
         //Insert to database
            $m_p_1 = isset($_POST['Player_1']) ? $_POST['Player_1'] : '';
            $m_p_2 = isset($_POST['Player_2']) ? $_POST['Player_2'] : '';
            $p_p_1 = isset($_POST['Player_1_P']) ? $_POST['Player_1_P'] : '';
            $p_p_2 = isset($_POST['Player_2_P']) ? $_POST['Player_2_P'] : '';
            $winner = isset($_POST['Winner']) ? $_POST['Winner'] : '';
      
       if ($_SERVER['REQUEST_METHOD'] === 'POST') {
             if (isset($_POST['submit_match'])) {
         
            $sql_u = "UPDATE match_formations_w SET P_1_Score = '$p_p_1', P_2_Score = '$p_p_2', Winner = '$winner' WHERE Match_ID = '$id'";

            echo $sql_u;
            echo "Hello : ".$m_p_2;
         
            $result_i = $conn->query($sql_u);
         
         
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