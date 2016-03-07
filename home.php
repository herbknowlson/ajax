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
h2   {color:white}

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
console.log(" - home.php - start");
<?php
date_default_timezone_set('America/Chicago');
error_log(date('Y-m-d H:i:s') . " " . "- home.php - start" .  "\n", 3, "E:/xampp/php/logs/execution.log");

?>

function changeIt()
{
  $msg = "- home.php - changeIt()";
  console.log($msg);
  var i = "../../img/HPIM0407a.jpg";
  bg = "url(" + i + ") no-repeat";
  document.getElementById("heading").innerHTML=bg;
  document.body.style.background = bg;
}

<?php


  function doSelect()
  {
    error_log(date('Y-m-d H:i:s') . " " . "- home.php - doSelect()" .  "\n", 3, "E:/xampp/php/logs/execution.log");
    if ($_GET["index"] == "3") {
        date_default_timezone_set('America/Chicago');
        console.log(" - home.php - doSelect() index = 3");
    	exec("E:/xampp/htdocs/Ajax/batchIndexV03.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    	header("Location: index2.php?selection=1");
    } else {
    	exec("E:/xampp/htdocs/Ajax/batchIndexV01.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    	header("Location: index.php?selection=1");
    }
  }

  if (isset($_GET['select'])) {
    date_default_timezone_set('America/Chicago');
    error_log(date('Y-m-d H:i:s') . " - home.php - select = true" .  "\n", 3, "E:/xampp/php/logs/execution.log");
    doSelect();
   }
?>

</script>



</head>
<body link="blue" onload="changeIt();">

<h2> Source of Content</h2>
<p><a href='https://www.tumblr.com/login'>tumblr login</a></p>
<p><a href='http://www.pornhub.com/gifs/'>pornhub gifs</a></p>
<p><a href='http://www.porn.com/'>porn.com</a></p>
<p><a href='https://8ch.net/wx/catalog.html'>8ch webm2 heb</a></p>
<p><a href='https://8ch.net/trap/res/997.html'>8ch traps</a></p>
<p><a href='https://8ch.net/wx/res/2728.html'>8ch Shemale</a></p>
<p><a href='https://www.literotica.com/stories/'>Erotic Stories</a></p>
<p><a href='http://www.blondepornjpg.com/'>Erotic images</a></p>
<h2> My Images</h2>
<p><a href='home.php?select=true'>index</a></p>
<p><a href='home.php?select=true&index=3'>Webm Movies</a></p>
<h2> My Stories</h2>
<p><a href='./stories/stories.htm'>Masterbation Session</a></p>

</body>
</html>