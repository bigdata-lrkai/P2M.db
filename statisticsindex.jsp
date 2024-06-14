<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<style>
.cart-thank__box {
  margin-top: 50px;
  height: 500px;
  margin-left: 5.5%;
  border-radius: 12px;
  background-color: white;
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
  transition: all 0.1s ease; /* 增加过渡时间以获得更柔和效果 */
  color:#4a7cbb;
}

.cart-thank__box:hover {
  box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3); /* 边缘阴影变为柔和的蓝色 */
  border: 2px solid #6495ED; /* 明确边框颜色为蓝色 */
}
.list-text{
    font-size:16px;
    font-weight: bold;
    line-height: 30px;
}
.ht_btn::before {
    background: red;  
}
</style>
</head>
<body>
<div id="wrapper">
<div class="loader-mask">
  <div class="loader">
      <div></div>
      <div></div>
  </div>
</div>
	<!-- start header -->
<%@include file="header.jsp" %>
<section id="inner-headline">
    <div style="background-image: url('img/breadcrumb-gradient-bg.png');height: 250px;display: block;">
        <div class="container">
            <div class="row justify-content-center" style="margin-top: 90px;">
                 <div class="text-center row">
                        <ul class="flx-align gap-2 mb-2 justify-content-center">
                            <a href="index.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Home</a>
                            <span>></span>
                            <span style="font-size:16px;">Statistics</span>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Statistics for scRNA-seq Data Or Bulk Data</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
       <div class="container">
        <div style="margin-left: 20px;margin-top: 50px;margin-bottom: 50px;width: 100%;background-color: hsl(210 25% 97%); border-radius: 12px;height: 600px;">
                <div class="row gy-4">
                    <div class="cart-thank__box col-lg-5">
                        <div>
                            <h3  style="text-align: center;">scRNA-seq Data Statistics</h3>
                            <h3  style="margin-top: 60px;margin-left: 10px;">Includes:</h3>
                            <ul>
                                <li>
                                    <span class="list-text">Cell Number Distribution</span>
                                </li>
                                <li>
                                    <span class="list-text">Cell Type Distribution</span>
                                </li>
                                <li>
                                    <span class="list-text">Frequency of DEGs</span>
                                </li>
                                <li>
                                    <span class="list-text">Frequency of Activated Pathways</span>
                                </li>
                            </ul>
                            <div style="margin-top:120px;margin-left: 145px;">
                                <a href="statistics.jsp" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;"> 
                                    Go to Page
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="cart-thank__box col-lg-5">
                        <div>
                            <h3  style="text-align: center;">Bulk Data Statistics</h3>
                            <h3 style="margin-top: 60px;margin-left: 10px;">Includes:</h3>
                            <ul>
                                <li>
                                    <span class="list-text">Sample Organizational Site Number Distribution</span>
                                </li>
                                <li>
                                    <span class="list-text">Sample Immune Cell Distribution</span>
                                </li>
                                <li>
                                    <span class="list-text">Frequency of DEGs</span>
                                </li>
                                <li>
                                    <span class="list-text">Frequency of Activated Pathways</span>
                                </li>
                            </ul>
                            <div style="margin-top:120px;margin-left: 145px;">
                                <a href="statistics_bulk.jsp" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;"> 
                                    Go to Page
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
            <%@include file="footer.jsp" %>
<script>
    $(document).ready(function() {
    $('#statistics').addClass('active');
});
</script>
</div>
</body>
</html>