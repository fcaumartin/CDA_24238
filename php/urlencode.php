<?php
$parametre = "abcd)[@efgh]]]";
//            abcd%29%5B%40efgh%5D%5D%5D
$url = rawurlencode($parametre);
echo $url;


echo urldecode("abcd%29%5B%40efgh%5D%5D%5D");