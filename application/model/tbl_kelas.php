<?php

class tbl_kelas extends model {
	function __construct() {
		parent::__construct();
		$this->TableName = "tbl_kelas";
		$this->SQLFile = "tbl_kelas.sql";	
	}

	function putData($parameter) {
		if ($parameter->delete)
			return $this->deleteData($parameter);

		return parent::putData($parameter);
	}

}