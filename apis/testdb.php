<html>
	<head>
		<title>PHP 测试</title>
	</head>
	<body>
		<?php echo '<p>Hello World 888</p>'; ?>

		<?php
			// 数据库信息
			$SERVER = 'rm-m5e85ld74c05t03o7qo.mysql.rds.aliyuncs.com:3306'; // MySQL服务器地址
			$USERNAME = 'treason258'; // MySQL用户名
			$PASSWORD = 'xiaoyaA258'; // MySQL密码
			$DATABASE = 'treason'; // 数据库名称

			// // MySQL连接
			// echo "<p>MySQL连接开始...";
			// $conn = new mysqli($SERVER, $USERNAME, $PASSWORD);
			// if ($conn->connect_error) {
			//     echo("<p>MySQL连接失败：".$conn->connect_error);
			// } else {
			// 	echo "<p>MySQL连接成功！";
			// }

			// // MySQLi连接
			// echo "<p>MySQLi连接开始...";
			// $conn = mysqli_connect($SERVER, $USERNAME, $PASSWORD);
			// if ($conn) {
			// 	echo "<p>MySQLi连接成功！";
			// } else {
			// 	echo "<p>MySQLi连接失败：".mysqli_connect_error();
			// }
			// mysqli_close($conn);

			// PDO连接
			echo "<p>";
			echo "<p>PDO连接开始...";

			class TableRows extends RecursiveIteratorIterator {
				function __construct($it) {
			 		parent::__construct($it, self::LEAVES_ONLY);
			 	}

			 	function current() {
					return "<td style='width:150px;border:1px solid black;'>" . parent::current() . "</td>";
				}

				function beginChildren() {
					echo "<tr>";
				}
			 
				function endChildren() {
					echo "</tr>" . "\n";
				}
			}

			try {
				$conn = new PDO("mysql:host=$SERVER;dbname=$DATABASE;", $USERNAME, $PASSWORD);
				echo "<p>PDO连接成功！";

				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$stmt = $conn->prepare("select * from timeline;"); 
    			$stmt->execute();

    			// 设置结果集为关联数组
    			echo "<table style='border: solid 1px black;'>";
				echo "<tr><th>id</th><th>date_start</th><th>date_end</th><th>type</th><th>content</th><th>comment1</th><th>comment2</th></tr>";
				$result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
				foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
					echo $v;
				}
				echo "</table>";
			} catch(PDOException $e) {
				echo "<p>PDO连接失败：".$e->getMessage();
			}
		?>
	</body>
</html>