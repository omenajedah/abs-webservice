<?php

class tbl_absen extends model {
	function __construct() {
		parent::__construct();
		$this->TableName = "tbl_absen";
		$this->SQLFile = "tbl_laporan.sql";	
	}

	function putData($parameter) {
		$parameter->tanggal_absen=date("Y-m-d");
		$parameter->waktu_absen=date("H:i:s");

		$isDataExists = $this->getTable((object) array('field'=>" COUNT(*) as total", "criteria"=>" nisn='{$parameter->nisn}' AND tanggal_absen='{$parameter->tanggal_absen}'"));

		
		if ($isDataExists) {
			return array('success'=>false, 'reason'=>'Siswa sudah absen.');
		}

		return parent::putData($parameter);
	}

	function getData($parameter) {
		$parameter->SELECTED_DAY = date("Y-m").'-01';

		$SQL = $this->load->sql($this->SQLFile, $parameter);
		return $this->db->QueryMulti($SQL);
	}

}