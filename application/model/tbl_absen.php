<?php

class tbl_absen extends model {
	function __construct() {
		parent::__construct();
		$this->TableName = "tbl_absen";
		$this->SQLFile = "tbl_absen.sql";	
	}

	function putData($parameter) {
		$parameter->tanggal_absen=date("Y-m-d");
		$parameter->waktu_absen=date("H:i:s");

		return parent::putData($parameter);
	}

}