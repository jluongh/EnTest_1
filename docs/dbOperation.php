<?php
 
class DbOperation
{
    private $conn;
 
    //Constructor
    function __construct()
    {
        require_once dirname(__FILE__) . '/Constants.php';
        require_once dirname(__FILE__) . '/DbConnect.php';
        // opening db connection
        $db = new DbConnect();
        $this->conn = $db->connect();
    }
 
    //Function to create a new user
    public function createUser($username, $pass, $email, $fname, $lname, $phone)
    {
        if (!$this->isUserExist($username, $email, $phone)) {
            $password = md5($pass);
            $stmt = $this->conn->prepare("INSERT INTO User (Username, Password, Email, FirstName, LastName, Phone) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("sssss", $username, $password, $email, $fname, $lname, $phone);
            if ($stmt->execute()) {
                return USER_CREATED;
            } else {
                return USER_NOT_CREATED;
            }
        } else {
            return USER_ALREADY_EXIST;
        }
    }
 
 
    private function isUserExist($username, $email, $phone)
    {
        $stmt = $this->conn->prepare("SELECT id FROM User WHERE username = ? OR email = ? OR phone = ?");
        $stmt->bind_param("sss", $username, $email, $phone);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    }
}
