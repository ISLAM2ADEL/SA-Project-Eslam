<?php
require_once 'dbcontroller.php';
require_once './models/hall.php';

class HallController
{
  protected $db;
  
  public function getHallByName($name)
  {
      $this->db = new dbcontroller;
      if($this->db->openConnection())
      {
        $query = "select * from halls where name='$name'";
        $result = $this->db->select($query);
        $this->db->closeConnection();
        return $result;
      }
      else
      {
        echo "Error in Database connection";
        return false;
      }
  }

  public function addHall(Hall $hall)
  {
      $this->db = new dbcontroller;
      if($this->db->openConnection())
      {
        $query = "insert into halls Values('$hall->name', '$hall->seatsNumber')";
        $result = $this->db->insert($query);
        $this->db->closeConnection();
        return $result;
      }
      else
      {
        echo "Error in Database connection";
        return false;
      }
  }
}
?>