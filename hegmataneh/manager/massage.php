<?php
include '../object/main.php';
$security=new security;
$connect = new connect;
$security->check_manage();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>لیست پیام های کاربران</title>
<style type="text/css">
body p {
	color: #FFF;
}
manager_fm {
	color: #FFF;
}
.v {
	color: #FFF;
	font-weight: bold;
}
.ve {
	color: #FFF;
	font-weight: bold;
}
body p {
	font-weight: bold;
	color: #009;
}
veww {
	font-weight: bold;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.font_news {
	color: #FFF;
}
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td height="33" colspan="2" align="center"><p>
	<?php echo $_SESSION['manage_name']; ?> به پنل مدیریت خود خوش آمدید</p></td>
  </tr>
  <tr>
    <td width="77%" align="center" bgcolor="#000099" class="ve">لیست کلیه پیام های دریافتی</td>
    <td width="23%" align="center" bgcolor="#000099" class="v">دسترسی های سریع </td>
  </tr>
  <tr>
    <td rowspan="16" align="center" valign="top"><p>&nbsp;</p>
      <table width="621" border="0" cellspacing="1" cellpadding="1">
        <tr class="font_news">
          <td width="106" align="center" bgcolor="#000099">عملیات</td>
          <td width="248" align="center" bgcolor="#000099">ایمیل</td>
          <td width="257" align="center" bgcolor="#000099"> نام </td>
        </tr>
        <?php
		$counter=10;
		$page =$security->Check_Get(@$_GET['page']);
		if($page=='') $page=1;
		$start=($page-1)*$counter;
		$result = $connect->query("SELECT * FROM `tbl_contact` ORDER BY `id` DESC 
		LIMIT ".$start.",".$counter." ");
       	while($rows=mysql_fetch_assoc($result))
		{
	    echo"<tr>
          <td align='center'>
		  <a href=check/msg_del.php?id=$rows[id]> حذف </a>
		  <a href=massage_detail.php?id=$rows[id]>اطلاعات</a></td>
          <td align='center'>".$rows['email']."</td>
          <td align='center'>".$rows['name']."</td>
        </tr>";
		}
		?>
      </table>
       <?php
	 $sql="SELECT * FROM `tbl_contact`";
	 $query=$connect->query($sql);
	 $number=mysql_num_rows($query);
	 $number=ceil($number/$counter);
	 if($page>0 && $page<$number) 
	 {
		 echo " <a href=?page=".($page+1)."> بعدی </a> ";
	 }
	 if($page>1 && $page<=$number)
	 {
		 echo " <a href=?page=".($page-1)."> قبلی </a> ";
	 }
	 echo "<br/>صفحه فعلی:".$page;
     ?>
      <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <?php
	$security->Covering("inc_temp/menu");
	?>
  </tr>
</table>
</body>
</html>