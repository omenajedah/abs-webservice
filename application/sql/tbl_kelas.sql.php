<?php

$DefaultFields = "*";
$Where = " WHERE 1 ";
$order = " Order By id_kelas ;";

if ($Fields) {
	$DefaultFields = $Fields;
}

if ($id_kelas) {
	$Where.=" AND id_kelas = '$id_kelas' ";
}

if ($nama_kelas) {
	$Where.=" AND nama_kelas = '$nama_kelas' ";
}

if ($OrderBy) {
	$order = " ORDER BY {$OrderBy}";
}


if ($Mode == "Regular") {
	$SQL = "SELECT $DefaultFields FROM tbl_kelas
		";

} else {
	$SQL = "SELECT COUNT(*) as rowCount FROM tbl_kelas
		";
}

$SQL.=$Where.=$order;
