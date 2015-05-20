
<html>
<head>
<title>HOME</title>
<h1 id="heading"></h1>

<style>
h1 {
    color:black;
    font-family:verdana;
    font-size:75%;
    opacity: 0.4;
}

.boldtable
{
font-family:fantasy;
font-size:18pt;
color: black;
opacity: 0.4;
background-color:white;
}
</style>


<script>
<?php
error_log(date('Y-m-d H:i:s') . " " . "Got to HOME page " .  "\n", 3, "C:/xampp/php/logs/execution.log");
?>

function ChangeIt()
{
  var i = "../../img/HPIM0407a.jpg";
  bg = "url(" + i + ") no-repeat";
  document.getElementById("heading").innerHTML=bg;
  document.body.style.background = bg;
}

<?php


  function doSelect()
  {
    error_log(date('Y-m-d H:i:s') . " " . $msg .  "\n", 3, "C:/xampp/php/logs/execution.log");
    exec("C:/xampp/htdocs/Ajax/batchIndexV01.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    header("Location: index.php?selection=1");
  }

  if (isset($_GET['select'])) {
    doSelect();
   }
?>

</script>



</head>
<body onload="ChangeIt();">


<p><a href='https://www.tumblr.com/login'>tumblr login</a></p>
<p><a href='http://www.pornhub.com/'>pornhub login</a></p>
<p><a href='home.php?select=true'>index</a></p>




</body>
</html>