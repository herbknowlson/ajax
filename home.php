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
console.log("Got here - home - start");
<?php
error_log(date('Y-m-d H:i:s') . " " . "Got to HOME page " .  "\n", 3, "C:/xampp/php/logs/execution.log");
?>

function changeIt()
{
  console.log("Got here - home - changeIt()");
  var i = "../../img/HPIM0407a.jpg";
  bg = "url(" + i + ") no-repeat";
  document.getElementById("heading").innerHTML=bg;
  document.body.style.background = bg;
}

<?php


  function doSelect()
  {
    $msg = "Got here - home - doSelect()";
    error_log(date('Y-m-d H:i:s') . " " . $msg .  "\n", 3, "C:/xampp/php/logs/execution.log");
    if ($_GET["index"] == "3") {
        console.log("Got here - home - doSelect() index = 3");
    	exec("C:/xampp/htdocs/Ajax/batchIndexV03.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    	header("Location: index2.php?selection=1");
    } else {
    	exec("C:/xampp/htdocs/Ajax/batchIndexV01.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    	header("Location: index.php?selection=1");
    }
  }

  if (isset($_GET['select'])) {
    $msg = "Got here - home - select = true";
    error_log(date('Y-m-d H:i:s') . " " . $msg .  "\n", 3, "C:/xampp/php/logs/execution.log");
    doSelect();
   }
?>

</script>



</head>
<body link="blue" onload="changeIt();">

<h2> Source of Content</h2>
<p><a href='https://www.tumblr.com/login'>tumblr login</a></p>
<p><a href='http://www.pornhub.com/gifs/'>pornhub gifs</a></p
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