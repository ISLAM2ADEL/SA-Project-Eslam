<?php
  require_once 'dbcontroller.php';
  require_once 'models/user.php';

  class UserController
  {
    protected $db;

    public function getAllUsers()
    {
      $this->db = new dbcontroller;
      
      if($this->db->openConnection())
      {
        $query = "select * from users where id != 1";
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
    public function deleteUserById($id)
    {
      $this->db = new dbcontroller;

      if($this->db->openConnection())
      {
        $query = "Delete From users Where id='$id'";
        $result = $this->db->delete($query);
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