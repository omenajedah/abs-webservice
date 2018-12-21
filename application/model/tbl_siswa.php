<?php

class tbl_siswa extends model {
	function __construct() {
		parent::__construct();
		$this->TableName = "tbl_siswa";
		$this->SQLFile = 'tbl_siswa.sql';
	}

}