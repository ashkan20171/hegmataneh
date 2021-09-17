<?php
include '../object/main.php';
$security=new security;
$connect=new connect;
if(isset($_POST['register']))
{
	if($_POST['name']=='' || $_POST['family']=='' || $_POST['username']=='' || $_POST['password']=='' || $_POST['email']=='')
	{
		$security->Redirect("../register","empty=1920");
	}
	else{
		$name=$security->Check_Post($_POST['name']);
		$family=$security->Check_Post($_POST['family']);
		$username=$security->Check_Post($_POST['username']);
		$password=$security->Check_Post($_POST['password']);
		$email=$security->Check_Post($_POST['email']);
		if(!preg_match("/[a-zA-Z0-9._-]+@[a-zA-Z0-9\.-]+\.[a-zA-Z\.]+/",$email))
		{
			$security->Redirect("../register","email=2901");
		}
		else{
			$sql2="SELECT * FROM `tbl_user` WHERE username='".$username."' or 		            email='".$email."'";
			$check_user=$connect->query($sql2);
			if(mysql_num_rows($check_user)>=1)
			{
				$security->Redirect("../register","exist=1010");
			}
			else{
			$sql="INSERT INTO `tbl_user` (`name`, `family`, `username`, `password`, `email`, `level`) VALUES ('".$name."', '".$family."', '".$username."', '".$password."', '".$email."', '2')";
			$result = $connect->query($sql);
			if($result)
			{
				$security->Redirect("../register","success=1010");
			}
			else{
				$security->Redirect("../register","error=1202");
			}
			}
		}
	}
}else{
	$security->Redirect("../register");
}
?>