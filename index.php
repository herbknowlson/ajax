
<html>
<head>
<title>DO IT!</title>
</head>
<script>


<?php

  $path = "C:/xampp/htdocs/Ajax/batch.bat ";
  $index1 = "04*";
  $index2 = "67h*";

  $cmd1 = $path . "1 " . $index1;
  $cmd2 = $path . "2 " . $index2;

  function doSelect1()
  {
    //exec($cmd1);
    exec("C:/xampp/htdocs/Ajax/batch.bat 1 04*");
    echo "Done!";
    echo $_GET['index1'];
    header("Location: Ajax.htm?selection=1");
   }

  function doSelect2()
  {
    //exec($cmd2);
    exec("C:/xampp/htdocs/Ajax/batch.bat 2 67h*");
    echo "Done!";
    echo $_GET['index1'];
    header("Location: Ajax.htm?selection=2");
   }

   if (isset($_GET['select1'])) {
     doSelect1();
   }
   if (isset($_GET['select2'])) {
	 doSelect2();
   }
?>


</script>

<body>
<h2>Home Page</div>

<form action="index.php?hello=true" method="post">
  <input type="checkbox" name="index1" value="04*"> Get horny<br>
  <input type="checkbox" name="index2" value="67 h*" checked> Hairy<br>
  <input type="checkbox" name="index3" value="600 z max"> Hard on<br>
  <input type="checkbox" name="index4" value="610 GIF" checked> Combo<br>
  <input type="submit" name="submit" value="DO IT!" onclick="doSomthing()"/>
</form>

<a href='index.php?select1=true'>Select 1</a>
<a href='index.php?select2=true'>Select 2</a>

</html>

</body>
</html>