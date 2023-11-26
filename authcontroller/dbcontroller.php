<?php 

    class dbcontroller {
        public $server_name = "localhost";
        public $username = "root";
        public $password = "";
        public $database = "cinema"; // change database 
        public $conn;


        // Open Connection
        public function openConnection() {
            $this -> conn = new mysqli($this -> server_name, $this -> username, $this -> password, $this -> database); // Create connection
            if ($this -> conn -> connect_error) {
                echo "Error in Connection : " . $this -> conn -> connect_error;
                return false;
            } else {
                return true;
            }
        }

        // Close Connection
        public function closeConnection() {
            if ($this -> conn) {
                $this -> conn -> close();
            } else {
                echo "Connection Isn't Opened";
            }
        }

        // Selected Query
        public function select($qry) {
            $result = $this -> conn -> query($qry);
            if (!$result) {
                echo "Error : " . mysqli_error($this -> conn);
                return false;
            } else {
                // $result -> fetch_assoc(); // 1 D Array -> First Column Only 
                return $result -> fetch_all(MYSQLI_ASSOC); // 2 D Array 
            }
        }
        

        // Inserted Query
        public function insert($qry){
            if (!$this->conn->query($qry)) {
                throw new Exception("Error: " . $this->conn->error);
            } else {
                return true;
            }
        }


        // Updated Query
        public function update($qry){
            if (!$this->conn->query($qry)) {
                throw new Exception("Error: " . $this->conn->error);
            } else {
                return true;
            }
        }

        // Deleted Query
        public function delete($qry){
            if (!$this->conn->query($qry)) {
                throw new Exception("Error: " . $this->conn->error);
            } else {
                return true;
            }
        }
        
    }