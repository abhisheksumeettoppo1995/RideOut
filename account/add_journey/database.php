<?php

class db
{
	public $host= "localhost";
	public $user="root";
	public $pass="";
	public $db_name="rideout";
	
	public $conn;
	public $error;
	
	public function __construct()
	{
		$this->connect();
	}
	
	private function connect()
	{
		$this->conn=new mysqli($this->host,$this->user,$this->pass,$this->db_name);
		if(!$this->conn)
		{
			$this->error ="Connect fail ".$this->conn->connect_error;
		}
	}
	
	public function insert($sql)
	{
		$result=$this->conn->query($sql);
		
		if($result)
		{
		echo "<script>alert('Data has been inserted')</script>";
		}
		else
		{
			echo "<script>alert('Data insertion failed check your data')</script>";
		}
	}
	
	
	
}
?>