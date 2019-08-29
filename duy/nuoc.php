<!DOCTYPE html>
<html>
<title>NguyenDuongDuy</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.sp{
    height: 350px;
}
</style>
<body>
<?php
require_once './functions.php';
//load items
$query = "SELECT iId, iName, iDescription, iPrice, iStatus, iSize, iImage FROM Item where catalogueId='15'";
$result = queryMysql($query);
$error = $msg = "";
if (!$result){
    $error = "Couldn't load data, please try again.";
}
//load catalogue
$query1 = "SELECT cId, cName, cDescription from Catalogue";
$result1 = queryMysql($query1);
$error1 = $msg1 = "";
if (!$result1){
    $error1 = "Couldn't load data, please try again.";
}
?>


<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Đóng Thực Đơn</a>
  <a href="index.php" onclick="w3_close()" class="w3-bar-item w3-button">Thức Ăn, Đồ Uống</a>
  <a href="" onclick="w3_close()" class="w3-bar-item w3-button">Đồ Ăn Chính</a>
  <a href="" onclick="w3_close()" class="w3-bar-item w3-button">Nước</a>
  

  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">Đôi Nét Ẩm Thực Việt</a>
  
  
  
</nav>


<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:2000px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-center w3-padding-16">Ẩm Thực Việt Nam</div>
    <div style="margin-top:-70px;" class="w3-button w3-padding-16 w3-right" ><a href="./index2.php">Admin</a> </div>
  </div>
</div>
  

    <div>
   
<?php
     
     while ($row = mysqli_fetch_array($result)) {
        $iId = $row[0];
        $iName = $row[1];
        $iDescription = $row[2];
        $iPrice = $row[3];
        $iStatus = $row[4];
        $iSize = $row[5];
        $iImage = $row[6];
        
        echo "<div class='sp w3-quarter w3-card w3-center ' ><div class='w3-white w3-padding-large'>$iStatus</div><div ><img onclick=\"document.getElementById('$iName').style.display='block'\" id='testimg' src='./images/item/". $iImage . "' width='70%'></div><div class='name'><h3>$iName</h3></div><h3>$$iPrice</h3></div>"
                . "<!--SHOW MORE INFORMATION-->
  <div id='$iName' class='w3-modal'>
      <div class='w3-modal-content w3-animate-top w3-card-4'>
        <div class='w3-container w3-red w3-center w3-padding-20'> 
          <span onclick=\"document.getElementById('$iName').style.display='none';\"
         class='w3-button w3-red w3-xlarge w3-display-topright'>×</span>
          <h2>$iName</h2>
        </div>
        <div class='w3-container w3-row'>
          <div class='w3-half'>
              <img src='./images/item/". $iImage . "' width='70%'>
          </div>
          <div class='w3-half w3-left'>
              <h3>$$iPrice</h3>
              <p>$iDescription.</p>
              <h4>$iSize</h4>                           
          </div>                                                    
        </div>
        <button class='w3-button w3-red w3-section' onclick=\"document.getElementById('$iName').style.display='none';\">Close <i class='fa fa-remove'></i></button>
      </div>
    </div>";                                                                                       
    }
?>

        
    </div>

 

   <hr id="about">
  <div class="w3-container w3-padding-32 w3-center">  
    <h3>Ẩm thực Việt Nam</h3><br>
      <p>Ẩm thực Việt Nam đặc trưng với sự trung dung trong cách pha trộn nguyên liệu không quá cay, quá ngọt hay quá béo. Các nguyên liệu phụ (gia vị) để chế biến món ăn Việt Nam vô cùng phong phú,ẩm thực Việt Nam chú trọng ăn ngon tuy đôi khi không đặt mục tiêu hàng đầu là ăn bổ. Bởi vậy trong hệ thống ẩm thực người Việt ít có những món hết sức cầu kỳ, hầm nhừ ninh kỹ như ẩm thực Trung Hoa, cũng không thiên về bày biện có tính thẩm mỹ cao độ như ẩm thực Nhật Bản, mà thiên về phối trộn gia vị một cách tinh tế để món ăn được ngon,hoặc sử dụng những nguyên liệu dai, giòn thưởng thức rất thú vị dù không thực sự bổ béo. </p>
    </div>
  </div>
  <hr>
  

<script>

function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

