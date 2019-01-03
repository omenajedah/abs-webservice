<?php

$DefaultFields = " a.`nisn`, a.`nama_siswa`, a.`jenis_kelamin`, b.`id_kelas`, b.`nama_kelas`, IFNULL(c.tipe_absen, -1) as tipe_absen ";
$Where = " WHERE 1 ";
$order = " Order By a.nisn ;";

if ($Fields) {
	$DefaultFields = $Fields;
}

if (!$all)
	$Where.=" AND c.`tipe_absen` IS NULL ";



if ($OrderBy) {
	$order = " ORDER BY {$OrderBy}";
}


if ($Mode == "Regular") {
	$SQL = "SELECT $DefaultFields FROM tbl_siswa a
			JOIN tbl_kelas b ON a.id_kelas=b.id_kelas
			LEFT JOIN tbl_absen c ON a.`nisn` = c.`nisn` AND c.`tanggal_absen` = CURDATE()
		";

} else {
	$SQL = "SELECT COUNT(*) as rowCount FROM tbl_siswa a
			JOIN tbl_kelas b ON a.id_kelas=b.id_kelas
			LEFT JOIN tbl_absen c ON a.`nisn` = c.`nisn` AND c.`tanggal_absen` = CURDATE()
		";
}
$SQL.=$Where.=$order;