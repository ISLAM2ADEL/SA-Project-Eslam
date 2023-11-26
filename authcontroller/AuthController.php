<?php 

require_once 'dbController.php';
class AuthController
{
    protected $db;

    //1. Open connection.
    //2. Run query & logic.
    //3. Close connection
    public function login($user,$password)
    {
        $this->db=new DBController;
        if($this->db->openConnection())
        {
            $query="select * from users where username='$user' and password='$password'";
            $stmt=$this->db->select($query);
            if($stmt===false)
            {
                return 0;
            }
            else
            {
                if(count($stmt)==0)
                {
                    return 0;
                }
                else if($stmt[0]['username']==='admin')
                {
                    $this->db->closeConnection();
                    return 2;
                }
                else{
                    $this->db->closeConnection();
                    return 1;
                }
                
            }
        }
        else
        {
            echo "Error in Database Connection";
            return false;
        }
    }
    public function register($name,$password,$phone)
    {
        $this->db=new DBController;
        if($this->db->openConnection())
        {
            $query="insert into users (username,password,telephone) values ('$name','$password','$phone')";
            try{$stmt=$this->db->insert($query);
            return true;}
            catch(Exception $e){
                return false;
            }
            
        }
        else
        {
            echo "Error in Database Connection";
            return false;
        }
    }
    

public function admin($name,$des,$cat,$hall,$price,$date,$time,$image,$link){
    
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        // Assuming $date is a string representing the date in a specific format (e.g., 'Y-m-d')
        $dateFormatted = date('Y-m-d H:i:s', strtotime($date)); // Format it to 'Y-m-d H:i:s'
        $sql1="select * from `admin` where time='$time'and Hname='$hall' and date='$dateFormatted'";
        $stmt1 = $this->db->select($sql1);
        if ($stmt1 == null) {
            $sql = "insert into admin (name,description,category,Hname,price,date,time,image,link) values ('$name','$des','$cat','$hall','$price','$dateFormatted','$time','$image','$link')";
            try{$stmt = $this->db->insert($sql);
                return true;}
                catch(Exception $e){
                    return false;
                }
            }
        else {
            return false;
        }
    }
}

public function timeTicket( $ref){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql = "select date from ticket where ticket_no = '$ref'";
        $stmt = $this->db->select($sql);
        $var= $stmt[0]["date"];
        $date = new DateTime('now');
        if ($date->format('Y-m-d') >= $var) {
            
            return false;
        } else {
            return true ;
        }
}
else {
    echo "connection false" ;
}
}
public function sendReason(refund $ref){
    $this->db= new dbcontroller ;
    $date = new DateTime('now');
    if($this->db->openConnection()){
        
        $sql2 = "insert into refund (ticket_no, reosn, amount, date) VALUES ('{$ref->getTicket_no()}', '{$ref->getReason()}', 100, '".$date->format('Y-m-d H:i:s')."')";
        $this->db->insert($sql2);
}
}
public function SelectHall(&$num){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql1="select COUNT(*) from halls";
        $res= $this->db->select($sql1);
        $num = $res[0]["COUNT(*)"];
        $sql2= "select name from halls";
        return $this->db->select($sql2);
}
}
public function Selectuser(&$num,$header){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        if($header=='movies.php'){
            $newheader=1;
        }
        else if($header=='shows.php'){
            $newheader=2;
        }
        else if($header=='plays.php'){
            $newheader=3;
        }
        else{
            $newheader=4;
        }
        $sql1="select COUNT(*) from admin where category='$newheader'";
        $res= $this->db->select($sql1);
        $num = $res[0]["COUNT(*)"];
        $sql2= "select `name`,`description`,`Hname`,`time`,`price`,`date`,`image`,`link` from `admin` where category='$newheader'";
        return $this->db->select($sql2);
}
}
public function Showtrains(&$number1,&$number2,$result1,$result2){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql1="select name from station WHERE no BETWEEN 1 and 3";
        $res= $this->db->select($sql1);
        $num = $res[0]["COUNT(*)"];
        $sql2= "select name from station";

        return $this->db->select($sql2);
}
}
public function insertTicket($number,$src,$dest,$start,$end,$Prc,$pas,$date){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql = "insert into ticket (`trip_no`,`source`,`destination`,`start`,`end`, `date`,`price`,`passangers`) VALUES ('$number','$src','$dest','$start','$end','$date','$Prc','$pas')";
        $this->db->insert($sql);

}
}
public function LiveTr1($live,&$source,&$destination,&$trip,&$status){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql="select `trip_no`, `source`, `distination`, `start`,`end` from `trip` WHERE trip_no = '$live' ";
        
        $res=$this->db->select($sql);

        $trip = $res[0]["trip_no"];
        $source = $res[0]["source"];
        $destination = $res[0]["distination"];
        $time1 =$res[0]["start"];
        $end =$res[0]["end"];
        $time2 = date('H:i:s');
        $timestamp1 = strtotime($time1); // convert the first time value to a Unix timestamp
        $timestamp2 = strtotime($time2); // convert the second time value to a Unix timestamp
        $timestamp3 = strtotime($end);
        if ($timestamp1 < $timestamp2 && $timestamp3>$timestamp2) {
            $status="starting";
        } else if ($timestamp1 < $timestamp2 && $timestamp3<$timestamp2) {
            $status="finished";
        } else {
            $status="pending";
        }
       
        
}
}
public function LiveTr2($source,$destination,&$next){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql1="select piriority from station where name = '$source'";
        
        $res1=$this->db->select($sql1);

        $pr1 = $res1[0]["piriority"];
        $sql1="select piriority from station where name = '$destination'";
        $res2=$this->db->select($sql1);
        $pr2 = $res2[0]["piriority"];

        if($pr1<$pr2){
            $pr1++;
            $sql3 = "select `name` FROM `station` WHERE `piriority` = '$pr1'";
        }
        else{
            $pr2++;
            $sql3 = "select `name` FROM `station` WHERE `piriority` = '$pr2'";
        }
        $res3=$this->db->select($sql3);
        $next = $res3[0]["name"];
}
}
public function NoSt($live,&$rowNum){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql2 = "select COUNT(*) FROM `trip` WHERE source = '$live' or distination = '$live' ";
        $res2= $this->db->select($sql2);
        $rowNum=$res2[0]["COUNT(*)"];
        
        
}
}
public function LiveSt($st,$number,$source,$destination,$start,$end,$name){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql3 = "select `trip`.`train_id`, `trip`.`source`, `trip`.`distination`, `trip`.`start`, `trip`.`end`, `train`.`name`FROM `trip`JOIN `train` ON `trip`.`train_id` = `train`.`id`WHERE `trip`.`source` = '$st' OR `trip`.`distination` = '$st'";
        return $this->db->select($sql3);
        
}
}
public function selectStations($src,$des,$date){
    $sql="select `trip_no`, `source`, `distination`, `start`, `end`, `price`FROM `trip` WHERE `source` = '$src' AND `distination` = '$des' AND `date` = '$date'";
        


    return ($this->db->select($sql));
    echo "sadassd";
}
public function Number($src,$des,$date,&$rowNum){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql2 = "select COUNT(*) FROM `trip` WHERE source = '$src' And distination = '$des' And `date`= '$date' ";
        $res2= $this->db->select($sql2);
        $rowNum=$res2[0]["COUNT(*)"];
}
}
public function insertDel( $del1,$del2,$del3,$date){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql = "insert INTO `delivery_ticket` (`source`, `destination`,`description`,`date`) VALUES ('$del1', '$del2','$del3' ,'$date')";
        $this->db->insert($sql);

}
}
public function insertTick( $del1,$del2,$del3,$del4){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql2 = "select `source` , `distination` from trip where `trip_no` =5";
        $result=$this->db->select($sql2);
        $del5=$result[0]["source"];
        $del6=$result[0]["distination"];
        $sql = "insert into `ticket` (`trip_no`,`start`,`end`, `source`, `destination`,`price`) VALUES ('$del1', '$del2','$del3','$del5','$del6' ,'$del4')";
        $this->db->insert($sql);

}
}
public function my_ticket($user){
    $this->db= new dbcontroller ;
    if($this->db->openConnection()){
        $sql = "select ticket.id,ticket.ticket_num,admin.name,admin.description,admin.Hname,admin.price,admin.time,admin.image from ticket join admin on ticket.movie_id=admin.id where ticket.users_id=$user;";
       try{
        $stmt = $this->db->select($sql);
        return $stmt;
        }
        catch(Exception $e){
            echo "fsfdsdfsdf";
            return $ar[1][2] ;
        }
        
}
else {
    echo "connection false" ;
}
}
public function del_tic ($ticket_id){
    $this->db= new dbcontroller ;
   
    if($this->db->openConnection()){
        $sql = "delete from `ticket` where `id`=$ticket_id";
        try{
          $stmt=$this->db->delete($sql);
        }catch (Exception $e){
            
echo "dfsfsdfsdf";
        }

}
}
}
?>