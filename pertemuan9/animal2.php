<?php

require_once("animal.php");

class animal2 extends animal
{
    public $legs=2;

    public function yell()
    {
        echo "yell : AUOOOOOOO <br>";
    }
    public function jump()
    {
        echo "jump : HOP HOP";
    }
}

?>