<?php
require("animal.php");
require("animal2.php");
// require("animal3.php");

$object = new animal("Shaun");

echo "Name :  $object->name <br>";
echo "Legs : $object->legs <br>";
echo "Cold blooded : $object->cold_blooded <br>";

$object = new animal2("Kera Sakti");

echo "Name :  $object->name <br>";
echo "Legs : $object->legs <br>";
echo "Cold blooded : $object->cold_blooded <br>";
$object->yell();

$object = new animal2("Buduk");

echo "Name :  $object->name <br>";
echo "Legs : $object->legs <br>";
echo "Cold blooded : $object->cold_blooded <br>";
$object->jump();
?>