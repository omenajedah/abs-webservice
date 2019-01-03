<?php

$DefaultFields = "*";
$Where = " WHERE 1 ";
$order = " Order By nisn ;";

if ($Fields) {
	$DefaultFields = $Fields;
}

if ($nisn)

$Where.=" AND nisn = '$nisn' ";

if ($nama_sisw)
$Where.=" AND nama_siswa = '$nama_siswa' ";

if ($jenis_kelamin)
$Where.=" AND jenis_kelamin = '$jenis_kelamin' ";

if ($id_kelas) 
$Where.=" AND id_kelas = '$id_kelas' ";



if ($OrderBy) {
	$order = " ORDER BY {$OrderBy}";
}


if ($Mode == "Regular") {
	$SQL = "SELECT $DefaultFields FROM tbl_siswa 
	join tbl_kelas on tbl_siswa.id_kelas=tbl_kelas.id_kelas 
		";

} else {
	$SQL = "SELECT COUNT(*) as rowCount FROM tbl_siswa 
	join tbl_kelas on tbl_siswa.id_kelas=tbl_kelas.id_kelas

		";
}
$SQL.=$Where.=$order;