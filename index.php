
<html>
<head>
<title>INDEX</title>
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
//font-family:"Comic Sans MS";
font-family:fantasy;
font-size:18pt;
color: black;
opacity: 0.7;
//background-color:white;
}

</style>


<script>
console.log(" - index.php - start");
<?php
date_default_timezone_set('America/Chicago');
error_log(date('Y-m-d H:i:s') . " - index.php - start" .  "\n", 3, "E:/xampp/php/logs/execution.log");
?>

function ChangeIt()
{
  console.log("index.php - ChangeIt()");
  var r = Math.floor(Math.random() * 40) + 1;
  var i = "../../img/bgimage" + r + ".jpg";
  //var i = "../../img/HPIM0407a.JPG"
  bg = "url(" + i + ") no-repeat";
  document.getElementById("heading").innerHTML=bg;
  document.body.style.background = bg;

  var xmlhttp;
  xmlhttp=new XMLHttpRequest();
  xmlhttp.open("GET","indexNames.txt",false);
  xmlhttp.send();
  document.getElementById("myIndex").innerHTML=xmlhttp.responseText;
}

<?php


  function doSelect()
  {

    $msg = "- index.php - index2 = " . $_GET["index2"];
    date_default_timezone_set('America/Chicago');
    error_log(date('Y-m-d H:i:s') . " " . $msg .  "\n", 3, "E:/xampp/php/logs/execution.log");
    exec("E:/xampp/htdocs/Ajax/batchImageV02.bat " . $_GET["index1"] . " " . $_GET["index2"]);
    header("Location: Ajax.htm?selection=1");
   }

   if (isset($_GET['select'])) {
     doSelect();
   }
?>
</script>

</head>
<body onload="ChangeIt();">
<p2>
<table style=width:90% CLASS=boldtable>
<tr>
    <td id="myIndex">Let AJAX change this page</td>

</tr>
</table>
</p2>

</body>
</html>