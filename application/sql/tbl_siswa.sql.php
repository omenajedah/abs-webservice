<?php

$DefaultFields = "*";
$Where = " WHERE 1 ";
$order = " Order By a.nisn ;";

if ($Fields) {
	$DefaultFields = $Fields;
}

if ($nisn)

$Where.=" AND a.nisn = '$nisn' ";

if ($nama_sisw)
$Where.=" AND a.nama_siswa = '$nama_siswa' ";

if ($jenis_kelamin)
$Where.=" AND a.jenis_kelamin = '$jenis_kelamin' ";

if ($id_kelas) 
$Where.=" AND a.id_kelas = '$id_kelas' ";



if ($OrderBy) {
	$order = " ORDER BY {$OrderBy}";
}


if ($Mode == "Regular") {
	$SQL = "SELECT $DefaultFields FROM tbl_siswa a
	join tbl_kelas b on a.id_kelas=b.id_kelas 
		";

} else {
	$SQL = "SELECT COUNT(*) as rowCount FROM tbl_siswa a
	join tbl_kelas b on a.id_kelas=b.id_kelas 

		";
}
$SQL.=$Where.=$order;