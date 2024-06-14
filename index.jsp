<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>P2M.db</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="P2M.db is a comprehensive database dedicated to storing primary and metastatic cancer data obtained from both single-cell and bulk transcriptome sequencing." />
<!-- css -->
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="css/flexslider.css" rel="stylesheet" /> 
<link href="css/style.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
<style>
.cart_box {
  border-radius: 12px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
}
.cart_box:hover {
  /*box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3);*/
  border: 2px solid #6495ED;
}
/*.icon-container {
    position: relative;
    width: 90px;
    height: 90px;
    display: inline-block;
    border: 5px solid #CCCCCC;  设置边框颜色和宽度 
    border-radius: 50%;  保持方形边框 
    overflow: hidden;  隐藏超出边框的内容 
}*/
</style>
</head>
<body>
 <div class="loader-mask">
  <div class="loader">
      <div></div>
      <div></div>
  </div>
</div>
    
<div id="wrapper" class="home-page">
	<!-- start header -->
    <%@include file="header.jsp" %>
	<!-- end header -->
	<section id="banner">
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
             <li>
                <img src="img/slides/1.jpg" style="height:530px;" alt="" />
		<div class="container">
		<div class="row">
		<div class="col-lg-12">
                <div class="flex-caption">
                <h1 style="color:white;font-size:50px;">P2M.db</h1> 
                <h5 style="color:white;">P2M.db is a comprehensive database dedicated to storing primary and metastatic cancer data obtained from both single-cell and bulk transcriptome sequencing.
                </h5>  
                </div>
		</div>
                </div>
                </div>
            </li>
            <li>
                <img src="img/slides/2.jpg" style="height:530px;" alt="" />
                <div class="container">
                <div class="row">
		<div class="col-lg-12">
                <div class="flex-caption">
                <h1 style="color:white;font-size:50px;">P2M.db</h1> 
                <h5 style="color:white;">P2M.db is a comprehensive database dedicated to storing primary and metastatic cancer data obtained from both single-cell and bulk transcriptome sequencing.</h5>
                </div>
                </div>
                </div>
                </div>
            </li>
            </ul>
        </div>
	<!-- end slider -->
	</section>
	<section style="margin-top:0px;">
	<div class="container">
		<div class="row"  style="width:105%;">
			<div class="col-lg-12">
				<div>
                                    <h3 style="line-height: 3.2rem;font-size: 2.3rem;color:#3a699a;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        The P2M.db includes data for 47 types of metastatic cancers, spanning 29 primary tissues such as breast, colon, stomach,and pancreas, as well as 18 metastatic tissues including the liver, lymph node, lung, and brain, et al. Specifically, the scRNA-seq data span 40 research projects, comprising 1,920,773 cells across 68 cell types. The bulk data, sourced from databases including GEO and TCGA, comprises a total of 11,578 samples from 81 research projects. Moreover, the P2M.db is equipped with 13 online analysis tools aimed at characterizing differences between metastatic and primary tumors, allowing users to browse and download analysis results.
                                    </h3>
                                </div>
			</div>
		</div>
	</div>
	</section>

                
	<section style="margin-top:20px;">
	<div class="container" style="margin-bottom:50px;">
		<div class="row">
                    	<div class="col-lg-12">
				<div>
                                    <h1>Statistics</h1>
                                </div>
			</div>
                            <div style="margin-top:100px">
                                <div style="margin-left:40px;position: relative;width: 80%;margin-left: 12%;margin-top: 20px;margin-bottom: 50px;">
                                                <div style="padding-top:30px;">
                                                <img class="human_auto" onclick="tissueCellChange('a0');" src="img/body/humanbody.png" style="display:block;width:100%;height:700px;">
                                                </div>
                                <!--eye-->
                                          <div style="position: absolute;top:0%;left:68%;">
                                                    <div class="container-flex">
                                                        <div id="eye" class="tissueImages icon-container" style="display:block;margin-right: 10px;">
                                                         <svg t="1717657298294" class="icon" style="margin-left:0px;" viewBox="0 0 1761 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="22316" width="80" height="80"><path d="M620.62592 72.33536l66.7648 77.66016a330.87488 330.87488 0 0 0-115.42528 251.82208c0 182.8864 147.456 331.07968 329.19552 331.07968 181.73952 0 329.1136-148.15232 329.1136-331.07968a330.9568 330.9568 0 0 0-99.69664-237.44512l-8.8064-8.27392 68.89472-75.776a433.3568 433.3568 0 0 1 142.00832 321.49504c0 239.37024-193.08544 433.47968-431.5136 433.47968-238.3872 0-431.59552-194.1504-431.59552-433.47968 0-123.78112 51.97824-239.16544 141.02528-320.55296l10.0352-8.92928z" fill="#bfbfbf" p-id="22317"></path><path d="M886.53824 176.98816a51.2 51.2 0 1 1 0 102.4 109.73184 109.73184 0 1 0 109.44512 116.69504l0.2048-6.9632a51.2 51.2 0 1 1 102.4 0 212.09088 212.09088 0 1 1-212.04992-212.13184z" fill="#bfbfbf" p-id="22318"></path><path d="M886.49728 30.72c-206.97088 0-409.1904 84.21376-599.2448 223.72352a1628.81536 1628.81536 0 0 0-218.07104 192.75776l-19.49696 21.34016c-2.99008 3.35872-5.3248 6.02112-6.92224 7.9872a51.2 51.2 0 0 0-0.8192 64.96256l6.88128 8.35584c2.94912 3.4816 6.5536 7.74144 10.81344 12.61568 13.96736 16.01536 30.22848 33.792 48.66048 52.92032a1653.51424 1653.51424 0 0 0 177.9712 159.70304c190.13632 146.96448 392.68352 235.76576 600.22784 235.76576 207.2576 0 409.6-86.50752 599.69536-229.7856a1640.6528 1640.6528 0 0 0 218.07104-197.75488l8.6016-9.58464c8.56064-9.54368 14.49984-16.50688 17.77664-20.48a51.2 51.2 0 0 0 0-64.96256l-10.07616-11.79648-7.65952-8.68352c-13.96736-15.60576-30.22848-32.9728-48.70144-51.6096a1640.6528 1640.6528 0 0 0-178.01216-155.72992C1296.13824 117.22752 1093.75488 30.72 886.49728 30.72z m0 102.4c181.53472 0 364.17536 78.06976 538.09152 209.1008a1539.11296 1539.11296 0 0 1 166.87104 145.98144l10.0352 10.24 9.54368 9.95328 11.59168 12.36992-2.58048 2.78528a1539.11296 1539.11296 0 0 1-195.46112 175.7184c-173.91616 131.072-356.5568 209.18272-538.09152 209.18272-181.248 0-363.76576-80.03584-537.6-214.38464a1551.9744 1551.9744 0 0 1-166.912-149.79072l-10.0352-10.52672-9.58464-10.19904-12.04224-13.18912 2.12992-2.21184a1527.23456 1527.23456 0 0 1 195.3792-171.2128c174.03904-127.71328 356.84352-203.81696 538.624-203.81696z" fill="#bfbfbf" p-id="22319"></path>
                                                        </svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 0px;">
                                                                        <div>
                                                                            <h4>Eyes</h4>
                                                                            <p>Primary(51)<br></p>
                                                                            <p>Metastasis(2)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
<!--                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -90px;width:320px;left:104px;"
                                                        id="a16">-->
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -95px;width:320px;left:95px;"
                                                        id="a16">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Ocular melanomas</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):51</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):2</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                            <!--Head and Neck-->
                                                <div style="position: absolute;top:13%;left:73%;">
                                                    <div class="container-flex">
                                                        <div id="head" class="tissueImages icon-container" style="display:block;margin-right: 10px;">
                                                            <svg t="1717657339264" class="icon" style="margin-left:-5px;margin-top: -5px;"  viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="23706" width="90" height="90"><path d="M843.9 407.2c5.5 2.4 10.8 5.6 15.7 9.6 10.4 8.5 19.4 20.6 25.7 36.5 15.3 38.4 13.4 67.4 0.5 90.5-7.6 13.7-19 24.7-32.8 34 3.1 2.8 5.9 5.9 8.5 9.3 0.4 0.4 0.8 0.9 1.1 1.4 1.6 2.2 3.1 4.5 4.6 7 8.4 14.4 7.8 35.9 2 56.9-5.9 21.3-17.4 43.5-30 56.5-27.8 28.8-60.8 48.4-97 54.8-10.3 1.8-20.9 2.6-31.6 2.1l7.2 36.4c2 9.6-4.2 19.1-13.8 21.2l-29.5 6.4c-5.9 1.3-12.4-0.5-16.9-5.2l-86.6-92c-15 4.6-29.1 5.8-41.7 2.3-10.7-3-19.7-8.9-26.9-18.3-9 6.7-18.2 11-30.8 11.8-26.8 1.9-51.6-0.9-73.1-7.6-22.8-7.1-42.1-18.7-56.3-33.9-12.5-13.4-17.1-26.5-20.6-41.8-9.2 3.6-19 6.7-29 8.9-15.8 3.4-32.2 4.6-47.7 2.1-7.6-1.3-14.9-3.5-21.8-6.6-13.7-6.3-25.4-16.1-33-28.2-3.1-5-5.6-10.4-7.3-16.1-22.4-14.5-37.1-34.4-45.6-56.8-8.3-21.9-10.6-46-8.1-69.3 2.5-23 9.5-45.4 19.9-64.2 11-20 25.9-36.2 43.2-45.3 14.5-37.9 37.4-64.8 66.6-83.5 28.7-18.4 63-28.4 100.9-33.2 15.9-11.7 35.4-21.3 58-27.9 42.3-12.3 95.7-13.9 156.1 2.6 10.6 2.9 20.7 5.5 30.9 8.1 59.4 15.3 117.7 30.3 167.2 72.8 1.7 1.5 4.4 3.8 7.2 6.1 25.3 21.1 51.6 43.3 64.8 92.6zM791.8 453c-6.2 7.7-17.6 8.9-25.2 2.6-7.7-6.3-8.9-17.6-2.6-25.2 9.1-11.2 20-19.2 31.5-23.8 3.1-1.3 6.3-2.2 9.5-3-11.5-30.2-30.6-46.3-49.2-61.9-2.1-1.8-4.2-3.6-7.3-6.2-43.3-37.2-97.6-51.2-152.7-65.4-10.6-2.7-21.2-5.5-31.4-8.2-53.5-14.6-100.2-13.4-136.7-2.8-17.9 5.2-33.2 12.5-45.5 21.3-1.9 2.6-4.6 4.7-7.6 5.9-11.7 9.9-19.8 21.1-23.9 32.6-3.3 9.4-13.6 14.3-22.9 11-9.4-3.3-14.3-13.6-11-22.9 1.2-3.4 2.6-6.8 4.3-10.1-15.7 4.6-30.1 10.9-42.9 19.1-17.5 11.2-32.2 26.3-43.3 46.5l1 0.1c9.8 1.6 16.5 10.7 14.9 20.5-1.6 9.8-10.7 16.5-20.6 14.9-3.2-0.5-6.5-0.6-9.7-0.4-2.8 0.2-5.3 0.7-7.5 1.6-12.4 4.7-23.8 16.7-32.5 32.5-8.1 14.7-13.7 32.4-15.7 50.6-1.9 18-0.3 36.3 6 52.8 3.5 9.1 8.4 17.7 15 25.2l0.9-2.1c4.1-9 14.8-13 23.8-8.9s13 14.8 8.9 23.8c-1.4 3.1-2.4 6.2-2.9 9.1-0.3 2-0.4 4.1-0.3 6 0.5 1.7 0.8 3.4 0.8 5.2 0.7 2.9 1.9 5.7 3.5 8.2 3.9 6.2 10.1 11.3 17.5 14.7 3.9 1.8 8.2 3.1 12.6 3.8 10.6 1.7 22.5 0.8 34.4-1.8 15-3.3 29.4-9 40.9-15.1 8.7-4.7 19.6-1.4 24.3 7.4 0.8 1.4 1.3 2.9 1.6 4.4h0.1c0.8 3.7 1.7 7.7 2.5 11.6 3.1 14.7 5.6 26.4 14 35.4 9.9 10.5 23.9 18.8 40.8 24.1 17.4 5.4 37.7 7.6 60 6.1 7.9-0.6 15.3-7.3 26.3-17.3l0.5-0.5c7.4-6.7 18.7-6.1 25.4 1.2 1.9 2.1 3.2 4.5 3.9 7 3.3 10.5 8 15.8 13.6 17.4 7.4 2.1 18-0.2 30.5-5.2 7.1-2.8 14.9-0.8 19.8 4.4l87.6 93 2.3-0.5-6.5-32.5c-12.2-3.5-24.5-8.6-36.9-15.3-8.8-4.7-12-15.6-7.3-24.3 4.7-8.7 15.6-12 24.3-7.3 29.2 15.8 57.3 20.2 83.2 15.6 28.4-5 54.7-20.8 77.3-44.2 8.6-8.9 16.8-25.1 21.2-41.1 3.5-12.5 4.6-23.9 1.5-29.3-0.8-1.3-1.6-2.5-2.5-3.7l-0.6-0.9c-5-6.4-11.9-10.9-20.3-13.9-1.1-0.3-2.3-0.6-3.3-1.1-17.9-5.2-41.5-4-66.6 1.1-43.6 8.8-90.7 29.1-123.8 48.2-9.4 5.4-17.3 10.5-23.4 15.1-7.9 5.9-19.2 4.2-25-3.8-5.9-8-4.2-19.2 3.8-25 7.7-5.7 16.7-11.6 26.7-17.3 35.7-20.7 86.9-42.7 134.8-52.3 28.4-5.7 55.8-7 79.1-1.4 17.8-8.7 32.2-18.9 39.6-32.1 7.8-13.9 8.3-32.8-2.4-59.7-3.9-9.8-9.1-17.1-15-21.8-3.5-2.9-7.3-4.8-11.1-5.9-0.7-0.1-1.4-0.3-2.1-0.5-0.2 0-0.4-0.1-0.7-0.1-4.7-0.7-9.6-0.1-14.4 1.8-5.9 2.3-11.7 6.7-16.9 13z" fill="#bfbfbf" p-id="23707"></path><path d="M575.6 506.6c-14.1 6.9-24.6-14.6-10.5-21.5 7.7-3.8 15.1-6.1 22.2-7.1 5.5-45.1 43.5-71 87.7-67.3 13.3-34 54.9-44.3 88.9-26.1 13.9 7.4 2.6 28.5-11.3 21.1-16-8.6-36.1-8.5-48.3 3.2-13.7 13.1-10.4 33.4-1.4 50.2 7.4 13.9-13.7 25.1-21.1 11.3-6.8-12.8-10.1-24.9-10.6-35.9-30.2-2.1-55.5 14.4-60 45.7 12.2 4.2 22.8 13 32 26.6 8.8 13.1-11.1 26.4-19.9 13.3-12.8-19-27.2-23.5-47.7-13.5z m-164 65.6c7.9 5.5 16.2 10 24.8 13.3-2.1 20.2-12.1 35.9-27.8 48.5-5.2 4.1-6 11.7-1.9 16.8 4.1 5.2 11.6 6 16.8 1.9 7.1-5.6 13.1-11.7 18.1-18.2 13-3.1 26.2-3.4 37.3-0.8 9.9 2.3 17.9 6.9 21.5 13.8 7.4 14 28.5 2.8 21.2-11.2-12-22.7-40.7-29.7-65.8-28.1 1.9-5.7 3.3-11.5 4.1-17.6 25.9 1.6 46.8-11.6 60.7-35.9 9.3 7.5 16.3 17.6 19.8 27.9 5.1 14.9 27.8 7.2 22.7-7.8-11.8-34.4-47.6-61.5-87.1-55.8-15.6 2.3-12.2 26 3.5 23.7 6.9-1 13.5-0.6 19.7 1-18.4 31.5-47.3 26.8-74.1 8.4-5.5-3.7-12.9-2.3-16.7 3.1-3.7 5.8-2.3 13.3 3.2 17zM724 468.6c21.4 24 20.9 40.3-6.3 57.4-13.3 8.4-0.6 28.6 12.8 20.3 13.2-8.3 22-17.2 27.2-26.7 9.2 1.7 17.9 5.2 22.1 13.5 6.8 13.4 27.2 4.2 21.8-9.7 7.3-14.7 17.5-23.5 34-22.5 15.8 0.9 17.1-23 1.4-23.9-22.7-1.3-40.4 8.9-52.2 27.6-6.4-4-13.7-6.7-21.6-8.2-0.6-14.6-8.3-29.2-21.2-43.6-10.6-11.9-28.5 4-18 15.8z m-116.9 91.2c-6.1-2.5-9.1-9.5-6.6-15.6s9.5-9.1 15.6-6.6c8.5 3.5 15.2 8.3 21 15 10.3 11.9-7.8 27.6-18.1 15.7-3.1-3.6-7.4-6.7-11.9-8.5zM274 498.6c16.3 23.8 47.2 26.6 74.9 26.1-8.8 12-16.1 25.4-20.7 41-4.4 15.1 18.6 21.8 23 6.7 2.7-9.3 6.6-17.4 10.8-24.3 15-24.7 41.5-51.9 73.5-35.5 5.7 3 12.8 0.8 15.9-4.7 8.4-13 17-20.8 25.8-24.4 8.3-3.4 17.3-3.2 26.7-0.3 5.3 1.6 11-0.6 13.7-5.2 13.3-21 36.5-34.5 59.1-43.5 4.1-1.6 6.7-5.2 7.4-9.1 0.8-4.4 14.9-16.2 20.6-22.7 10.5-12.1 22.1-24.7 21.8-52 22.4 6.5 45.6 0.3 69.1-16.4 5.4-3.8 6.7-11.3 2.8-16.7-3.8-5.4-11.3-6.6-16.7-2.8-29.7 21.1-53 18.9-74.8-5.1-10.7-11.7-28.4 4.5-17.7 16.1 3.9 4.3 7.9 8.1 12.1 11.4 4.4 28.1-5.1 38.9-13.3 48.4l-10.3 10.6c-6.3 6-11.9 11.3-15 18.4-7.6 3.2-15 6.8-21.9 10.8-10.7-27.2-27.4-45.5-62.6-44.1-15.8 0.6-14.9 24.5 0.8 23.9 26.1-1 33.9 13.3 41.4 34.3-6.6 5.5-12.6 11.7-18 18.7-26.6-5.1-48.5 6.2-65.7 29-11.6-4-22.5-4.3-32.6-2.4 6.4-15 10.4-30.7 8.3-45.5-2.3-15.6-26-12.2-23.7 3.4 2.5 17.6-9.6 40.7-18.9 57.2-23.4 1.5-62.8 4.6-76-14.7-8.9-13.1-28.7 0.4-19.8 13.4z m-51.5-17.8c4.1-5.2 11.6-6.2 16.8-2.2 5.3 4 6.2 11.6 2.2 16.8-10 12.9 6.6 47.6 33.5 34.7 14.2-6.8 24.5 14.8 10.3 21.6-49.7 23.7-88.3-38-62.8-70.9z m30.9-36.2c-7 16.1-38.5 3.3-13-22.6 19.2-19.5 56.3-23.9 76.9-3.6 11.2 11.1-5.6 28.1-16.8 17.1-12.5-12.5-40.6-5.5-47.1 9.1z m171.5-75.2c-2 3.9-3.6 8.2-5 13-4.3 15.2 18.8 21.7 23.1 6.5 5.5-19.5 21.6-28.4 34.4-35.4 13.1-7.2 26.6-9.1 39.8-2.5 9.6 4.8 20.1-4.6 16.6-14.7-5.7-16 3.6-31.2 14-42.9 10.5-11.8-7.4-27.7-17.9-15.9-11.3 12.7-20.8 28.4-21.7 46-12.3-1.6-24.6 0.6-36.2 5.9-7.4-19.1-23-31.6-43.8-38.7-14.9-5.1-22.6 17.6-7.7 22.7 15.3 5.2 26.1 13.6 30.3 28-3.9 2.6-7.7 5.5-11.4 8.9-41.9-30.8-123.5 21-97.3 77 6.7 14.3 28.3 4.1 21.7-10.1-15.2-32.3 37.4-64 61.1-47.8zM681.2 666c-4 5.2-11.6 6.2-16.8 2.2-15.1-11.6 8.4-35.9 36.1-31.6 3.2 0.5 6.3 1.3 9.4 2.4 20.4-26 61.1-36.4 84.2-12.9 11 11.2-6 28-17.1 16.8-11.9-12.1-35.1-4.2-46.8 9 23 23.3 10.2 55-6.8 46.9-6-2.8-8.5-10-5.6-15.9 6.1-12.5-24.1-33.1-36.6-16.9z" fill="#bfbfbf" p-id="23708"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: -5px;width: 300px;">
                                                                        <div>
                                                                            <h4>Head and Neck</h4>
                                                                            <p>Primary(464)<br></p>
                                                                            <p>Metastasis(104)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
<!--                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -342px;width:320px;left:105px;"
                                                        id="a1">-->
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -342px;width:320px;left:90px;"
                                                        id="a1">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Head and Neck Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):1</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Head and Neck Squamous Cell Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):42</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):23</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Hypopharygeal squamous cell carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):5</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):5</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Salivary Adenoid Cystic Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):3</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Medulloblastoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;font-size:14px;">--Primary(Bulk):9</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Brain metastasis(Bulk):13</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Oral Squamous Cell Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;font-size:14px;">--Primary(Bulk):22</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):5</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Thyroid Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):8</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):9</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):376</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Brain metastasis(Bulk):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Bulk):32</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined(Bulk):11</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Breast-->
                                                <div style="position: absolute;top:26%;left:80%;">
                                                    <div class="container-flex">
                                                        <div id="breast" class="tissueImages icon-container" style="display:block;margin-right: 10px;">
                                                           <svg t="1717657386800" class="icon" style="margin-top:5px;margin-left: 5px;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="24935" width="70" height="70"><path d="M877.1674 945.729958a37.064427 37.064427 0 0 1-50.138523-15.274268 1488.373692 1488.373692 0 0 1-56.739038-119.824723C710.123611 920.301053 588.606448 998.576384 461.842723 998.576384c-165.139794 0-304.089085-116.905265-330.36421-278.025515l-35.625853-116.059045a76.159782 76.159782 0 0 1 21.578605-78.275331l299.731052-251.623457c28.856095-25.048106 72.521037-62.958753 111.701014-145.761361C561.31586 60.245561 608.450303 25.423616 668.870396 25.423616c80.856302 0 146.60758 64.989681 146.60758 144.872829l-0.169244 7.531357 0.169244 371.363558c-0.042311 77.767599-1.100086 112.166434-4.104166 136.283699 0.592354 50.984743 49.461547 150.669435 81.321723 211.554949a36.048963 36.048963 0 0 1-15.528133 48.69995zM741.602988 170.296445a72.351793 72.351793 0 0 0-72.732592-71.886371c-20.52083 0-47.303687 6.981313-73.028768 61.350935-45.780491 96.638301-98.457674 142.33417-129.894739 169.66707l-10.366193 9.096862-289.026372 242.188107 36.810561 123.54809c21.536294 130.233227 129.810117 221.328788 258.477838 221.328788 135.310546 0 244.684455-109.373909 268.378609-210.708729l2.200171-9.266107c6.812069-28.390674 9.054552-37.910647 9.181485-156.466041V170.296445zM647.461035 718.393009H395.879889a36.725939 36.725939 0 0 1-36.979805-36.472074c0-20.182342 16.543597-36.514384 36.979805-36.514384h95.919015a34.271902 34.271902 0 0 1 7.065935-10.493125l86.187486-85.129712a37.233671 37.233671 0 0 1 52.254073 0 36.133585 36.133585 0 0 1 0 51.577097l-44.595784 44.04574H647.461035c20.436208 0 36.979805 16.332042 36.979806 36.514384a36.725939 36.725939 0 0 1-36.979806 36.472074z m-329.729544-98.753851a37.233671 37.233671 0 0 1-52.042518-4.654209 36.218207 36.218207 0 0 1 4.69652-51.407852l193.234291-159.173944a37.233671 37.233671 0 0 1 52.042518 4.654209 36.175896 36.175896 0 0 1-4.69652 51.365541l-193.234291 159.216255z m-30.421602 103.83117a37.106738 37.106738 0 0 1 48.446084 19.336122l2.919458 6.473581c27.544454 56.739037 92.32258 87.20295 154.392802 72.351793a136.241388 136.241388 0 0 0 66.25901-37.826025 37.318293 37.318293 0 0 1 52.211762-1.269329 36.133585 36.133585 0 0 1 1.26933 51.577096 209.777888 209.777888 0 0 1-151.177167 64.228083c-79.163862 0-154.30818-44.765027-189.637857-117.582241l-4.27341-9.39304a36.387451 36.387451 0 0 1 19.589988-47.89604z" fill="#bfbfbf" p-id="24936"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: -5px;">
                                                                        <div>
                                                                            <h4>Breast</h4>
                                                                            <p>Primary(1575)<br></p>
                                                                            <p>Metastasis(330)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
<!--                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -185px;width:320px;left:105px;"
                                                        id="a2">-->
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -185px;width:320px;left:75px;"
                                                        id="a2">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Breast Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):32</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lung metastasis(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):23&nbsp;</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):1543</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Bone metastasis(Bulk):79</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Brain metastasis(Bulk):58</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Liver metastasis(Bulk):27</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lung metastasis(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Bulk):91</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Skin metastasis(Bulk):24</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):24</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Kidney-->
                                                <div style="position: absolute;top:39%;left:85%;">
                                                    <div class="container-flex">
                                                        <div id="kidney" class="tissueImages icon-container" style="display:block;margin-right: 10px;margin-top: 5px;">
                                                            <svg t="1717657434528" class="icon" style="margin-left:3px;margin-top:5px"viewBox="0 0 1325 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="26164" width="75" height="75"><path d="M482.936471 411.196235c138.360471 70.294588 179.380706 137.758118 180.976941 227.568941l0.060235 6.445177V994.183529h-75.294118V644.999529c0.150588-63.608471-22.979765-105.652706-130.650353-161.942588l-9.185882-4.72847 34.093177-67.132236z" fill="#bfbfbf" p-id="26165"></path><path d="M448.783059 490.767059a37.647059 37.647059 0 0 1-2.891294 75.264c-28.099765-1.084235-52.434824 4.487529-73.005177 14.336-8.011294 3.855059-13.854118 7.499294-17.287529 10.029176l-2.650353 2.108236a37.647059 37.647059 0 0 1-50.597647-55.717647c7.529412-6.896941 20.239059-15.781647 37.948235-24.274824a226.063059 226.063059 0 0 1 98.364235-21.925647l10.11953 0.180706z" fill="#bfbfbf" p-id="26166"></path><path d="M222.238118 42.586353c83.124706-46.682353 185.223529-47.224471 245.338353-12.649412 45.176471 25.961412 74.511059 58.970353 88.18447 97.490824 16.956235 47.646118 8.704 96.376471-14.305882 142.45647a234.465882 234.465882 0 0 1-20.419765 34.032941l-10.842353 14.366118a37.647059 37.647059 0 0 1-62.58447-41.652706l2.288941-3.403294 9.246117-12.348235c3.312941-4.126118 9.035294-12.830118 14.938353-24.636235 14.727529-29.455059 19.666824-58.548706 10.752-83.606589-7.378824-20.781176-24.485647-40.056471-54.784-57.434353-36.864-21.172706-110.682353-20.781176-170.947764 13.040942-84.931765 47.706353-142.968471 153.419294-157.515294 328.463058-16.745412 201.728 88.395294 387.975529 281.298823 387.97553 94.960941 0 152.335059-103.574588 84.028235-197.872941l-3.915294-5.240471c-2.499765-3.222588-5.12-6.746353-7.830588-10.511059l-7.378824-10.541176-3.312941-4.818824a952.048941 952.048941 0 0 1-13.040941-19.877647l-10.571294-16.865882-13.522824-22.40753 6.083765-16.805647c18.191059-50.416941 15.751529-86.588235 2.288941-112.037647a49.212235 49.212235 0 0 0-6.836706-10.450823 125.259294 125.259294 0 0 0-22.678588-16.323765 140.649412 140.649412 0 0 0-68.246588-18.130824l-6.445176 0.180706a37.647059 37.647059 0 1 1-7.318589-74.932706l4.005647-0.301176a212.178824 212.178824 0 0 1 151.190589 53.699765c6.806588 6.144 15.149176 16.384 22.889411 31.021176 21.293176 40.297412 26.473412 92.069647 8.161883 153.961412l-0.39153 1.204706 10.842353 16.896 8.944941 13.342117 2.861177 4.156236c2.409412 3.403294 4.638118 6.535529 6.746353 9.366588l3.072 4.005647c113.784471 146.492235 18.070588 324.577882-139.625412 324.577882-246.663529 0-376.259765-229.556706-356.291765-469.504 16.444235-198.324706 87.04-326.866824 195.644236-387.885176z" fill="#bfbfbf" p-id="26167"></path><path d="M294.309647 112.941176a37.647059 37.647059 0 1 1 26.322824 70.505412 116.434824 116.434824 0 0 0-15.36 6.987294C281.298824 203.655529 260.517647 225.882353 243.440941 257.295059a37.647059 37.647059 0 1 1-66.16847-35.990588c23.642353-43.459765 54.392471-76.257882 91.798588-96.858353 8.161882-4.457412 16.564706-8.282353 25.268706-11.535059zM842.24 411.196235l34.093176 67.162353c-112.429176 57.072941-138.601412 98.936471-139.776 161.400471l-0.030117 354.484706h-75.294118v-349.06353c-0.271059-90.834824 37.526588-158.810353 171.279059-228.954353l9.728-5.029647z" fill="#bfbfbf" p-id="26168"></path><path d="M876.393412 490.767059c40.96-1.566118 77.312 6.776471 108.483764 21.744941 17.709176 8.493176 30.418824 17.377882 37.948236 24.244706a37.647059 37.647059 0 0 1-47.405177 58.337882l-5.842823-4.698353a113.724235 113.724235 0 0 0-17.28753-10.029176c-20.570353-9.848471-44.875294-15.420235-73.005176-14.336a37.647059 37.647059 0 1 1-2.891294-75.264z" fill="#bfbfbf" p-id="26169"></path><path d="M857.6 29.936941c60.114824-34.575059 162.213647-34.032941 245.338353 12.649412 108.634353 61.018353 179.2 189.560471 195.674353 387.885176 19.937882 239.947294-109.658353 469.534118-356.321882 469.534118-155.527529 0-250.759529-173.176471-144.26353-318.464l4.638118-6.113882c1.957647-2.529882 4.065882-5.360941 6.324706-8.523294l6.354823-9.035295 8.944941-13.342117 10.812236-16.896-0.361412-1.204706c-17.377882-58.789647-13.552941-108.483765 5.12-147.817412l3.041882-6.113882c7.740235-14.667294 16.082824-24.907294 22.799059-31.021177a200.493176 200.493176 0 0 1 36.261647-26.112c37.315765-21.082353 75.294118-28.310588 107.670588-27.858823l11.354353 0.542117a37.647059 37.647059 0 0 1-3.463529 75.113412l-4.457412-0.210823a139.595294 139.595294 0 0 0-74.089412 17.980235c-8.071529 4.517647-15.661176 9.968941-22.738823 16.384l-1.264941 1.505882a65.987765 65.987765 0 0 0-5.51153 8.884706c-12.709647 24.033882-15.600941 57.645176-0.542117 103.755294l2.831058 8.282353 6.083765 16.805647-15.48047 25.6-2.168471 3.493647c-4.276706 6.806588-8.613647 13.613176-12.950588 20.239059l-9.848471 14.667294-3.222588 4.668236c-2.831059 4.035765-5.541647 7.800471-8.161882 11.324235l-3.855059 5.059765c-74.330353 95.653647-16.564706 203.083294 80.112941 203.083294 192.933647 0 298.074353-186.247529 281.298823-387.97553-14.516706-175.043765-72.583529-280.756706-157.515294-328.463058-60.235294-33.852235-134.053647-34.213647-170.917647-13.040942-30.298353 17.408-47.405176 36.683294-54.784 57.434353-8.914824 25.057882-3.975529 54.151529 10.752 83.606589 5.029647 10.119529 9.999059 17.950118 13.793883 23.130352l10.390588 13.854118a37.647059 37.647059 0 0 1-57.675294 48.218353l-2.650353-3.162353-7.890824-10.571294a222.509176 222.509176 0 0 1-23.341176-37.827765c-23.009882-46.08-31.262118-94.810353-14.305883-142.45647C783.058824 88.907294 812.393412 55.898353 857.6 29.936941z" fill="#bfbfbf" p-id="26170"></path><path d="M982.437647 135.107765a37.647059 37.647059 0 0 1 48.368941-22.196706c8.643765 3.192471 17.106824 7.047529 25.359059 11.595294 37.345882 20.540235 68.096 53.308235 91.768471 96.798118a37.647059 37.647059 0 1 1-66.138353 35.990588c-17.136941-31.442824-37.918118-53.609412-61.891765-66.800941a114.326588 114.326588 0 0 0-15.269647-6.987294 37.647059 37.647059 0 0 1-22.226824-48.399059z" fill="#bfbfbf" p-id="26171"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                                        <div>
                                                                            <h4>Kidney</h4>
                                                                            <p>Primary(703)<br></p>
                                                                            <p>Metastasis(180)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -165px;width:320px;left:95px;"
                                                        id="a3">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Neuroblastoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):4</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Bone marrow metastasis(Single Cell):6</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Renal Cell Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):699</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Adrenal Gland metastasis(Bulk):14</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Chest Wall metastasis(Bulk):6</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Liver metastasis(Bulk):24</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lung metastasis(Bulk):16</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):114</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Liver-->
                                                <div style="position: absolute;top:52%;left:85%;">
                                                    <div class="container-flex">
                                                        <div id="liver" class="tissueImages icon-container" style="display:block;margin-right: 10px;margin-top: 5px;">
                                                            <svg t="1717657486393" class="icon" style="margin-left:-5px;margin-top: -3px;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="27651" width="90" height="90"><path d="M637 229.5l3.3-0.4c24-3 49.5-6.2 77.8-7.5 35.9-1.7 67.7-0.5 98 0.6 16.6 0.6 32.7 1.2 48.1 1.3 4.1 0 7.8 0.8 11.3 2.3 0.5 0.2 1 0.4 1.4 0.7 10 5 15.4 14.8 16.7 28.1 0.9 9.2-0.3 20.7-3.4 33.4-5.8 23.7-18.4 53.2-36.5 80.9-12.7 19.2-27.7 40.2-47.7 61.3-18.5 19.5-41.1 39-70 57.3-6.3 35.4-19.1 66.8-39.5 93.5-15.5 20.2-35.1 37.5-59.4 51.4 3-16 5.5-32.2 7.3-48.4 9-7.5 16.9-15.8 23.7-24.7 10.3-13.5 18.2-28.6 24.1-45.2-14.6 8-29.4 15.2-44.2 21.7 0.4-13.3 0.4-26.5-0.1-39.8 49.4-22.8 95.5-51.8 132.2-90.4 18-19.1 31.9-38.4 43.6-56.3 15.9-24.3 26.9-49.7 31.8-69.7 2-8.4 2.9-15.4 2.6-20.6-14.6-0.2-28.8-0.7-43.3-1.3-29.5-1.1-60.4-2.3-95-0.6-25.8 1.3-51.2 4.4-75.1 7.4-5.3 0.7-10.5 1.3-15.6 1.9 1.3-9.7 3.2-19.3 5.6-28.8 0.8-2.6 1.6-5.3 2.3-8.1zM200.8 820.3c-5.7-28.5-14.6-61.5-24.1-96.9C155 643 130.1 550.3 130.3 465c0.6-204.7 108.8-241.6 238-241.2 27.4 0.1 54.8 2 82.1 4 1.2 0.1 1.5 0.1 2.1 0.1 3.3 4.2 18.2 25 21.7 29.1 2.3 3 4.6 6.1 6.9 9.1l-8-0.7c-35.8-2.9-71.9-5.9-104.8-6-109.8-0.3-201.8 31.2-202.3 205.6-0.2 80.4 24.1 170.7 45.2 249.2 2.6 9.6 5.1 19 7.6 28.2 38.6-123.8 144.8-154.3 266.4-189.1 25.3-7.2 51.4-15 77.6-23.9-0.2 12.9-0.9 25.9-2.1 38.7-22.2 7-44.2 13.3-65.7 19.5-124.1 35.6-230.6 66.1-251.6 208l-0.1 0.4c35.3-5.8 63.1-17.5 85.1-31.2 27.2-16.9 45.6-36.9 58.2-52.3 8.6-10.5 15.8-18 25.5-24.4 9.4-6.2 20.3-11 36.2-16.4 8.4-2.8 17.7-4.8 28.3-6.9 20.2-4.2 45.5-9.5 73-23.5-3.1 14.7-6.7 29.3-10.6 43.7-20.6 7.6-39.3 11.5-55.1 14.7-9.6 2-18 3.8-24.3 5.8-12.9 4.3-21.2 7.9-27.7 12.2-6.2 4.1-11.3 9.5-17.7 17.3-14.4 17.7-35.6 40.6-67 60.2s-72.9 35.6-127.8 39.5c-9 0.6-16.9-5.7-18.6-14.4z" fill="#bfbfbf" p-id="27652"></path><path d="M540.6 764.8c1.9-6.3 19-64.4 20.8-70.8 23.1-82.6 32.2-166.8 19.8-247.9-10.9-71.4-38.5-140.6-88.5-204.2-3.4-4.3-6.7-8.4-10.2-12.6-6.3-7.6-5.3-18.9 2.2-25.2 7.6-6.3 18.9-5.3 25.2 2.2 3.8 4.6 7.6 9.2 11.2 13.9 7.8 9 14.8 15.9 21.2 20.6 9.8 7.3 17.3 11.2 25.5 0.3 3.3-4.4 6.4-10.5 8.9-18 0.3-1 3.2-11.2 3.3-11.4 2.9-8.9 12-14.4 21.2-12.2 9.6 2.3 15.5 11.9 13.2 21.4-0.8 3.4-1.8 6.9-2.8 10.3-8.1 30.9-10.2 62.3-8.9 93.5 1.4 34.9 7.1 69.8 13.5 103.5 9.1 47.9 10.2 96.7 5.1 146.2-4.3 41.2-12.8 83-24.6 125.1-2.2 7.9-19.7 67.7-22.2 75.6l-33.9-10.3z" fill="#bfbfbf" p-id="27653"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;margin-left: 2px;">
                                                        <div>
                                                            <h4>Liver</h4>
                                                            <p>Primary(353)<br></p>
                                                            <p>Metastasis(29)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -156px;width:320px;left:90px;"
                                                        id="a4">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Cholangiocarcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):37</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):6</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Hepatocellular Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Adrenal Gland metastasis(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lung metastasis(Bulk):12</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):5</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Stomach-->
                                                <div style="position: absolute;top:65%;left:80%;">
                                                    <div class="container-flex">
                                                        <div id="stomach" class="tissueImages icon-container" style="display:block;margin-right: 12px;margin-top: 7px;">
                                                            <svg t="1717657519991" class="icon" style="margin-top:3px;margin-left:5px;" viewBox="0 0 1098 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="28910" width="70" height="70"><path d="M805.038829 100.651707c68.20839 4.170927 132.920195 43.107902 188.990439 122.005854l5.744391 8.316878c10.614634 15.085268 25.749854 41.75922 40.710243 78.22361 63.812683 155.498146 59.242146 328.429268-60.141268 497.813853-5.144976 7.118049-14.635707 18.881561-28.197463 33.792a633.63122 633.63122 0 0 1-77.499317 72.004683c-84.467512 66.185366-179.449756 106.221268-283.123513 106.221269a301.705366 301.705366 0 0 1-44.956097-4.570537 353.529756 353.529756 0 0 1-96.65561-30.270439c-59.192195-28.846829-104.198244-73.877854-127.825171-137.465756l-5.095024-13.436878a119.108683 119.108683 0 0 0-4.370732-9.915317l-0.949073-1.898147c-12.587707-24.476098-30.72-36.264585-69.107512-35.640195l-5.544585 0.249756c-36.888976 2.622439-53.897366 27.373268-53.897366 130.997074a31.219512 31.219512 0 1 1-62.439025 0c0-140.962341 43.957073-192.437073 120.881952-193.685854 63.038439-1.024 102.574829 24.625951 125.627317 69.557073l2.67239 5.344781c3.246829 6.743415 5.569561 12.737561 10.739512 26.673951 17.63278 47.403707 51.050146 80.846049 96.65561 103.099317 25.100488 12.238049 52.323902 20.25522 79.572293 24.825756 9.565659 1.598439 18.407024 2.622439 26.249365 3.246829l8.666537 0.449561c87.789268 0 170.033951-34.666146 244.386341-92.909268a571.666732 571.666732 0 0 0 83.992976-81.170732l7.043122-8.691512c1.24878-1.573463 2.072976-2.67239 2.422634-3.146927 105.472-149.678829 109.468098-300.456585 53.123122-437.772488a436.823415 436.823415 0 0 0-23.95161-49.601561l-3.746341-6.493658a228.376976 228.376976 0 0 0-4.49561-7.192976l-2.097951-3.171902c-47.253854-69.532098-96.905366-100.401951-147.181268-103.473951a144.833561 144.833561 0 0 0-88.113952 23.976585l-7.817365 5.444683c-9.066146 6.568585-13.586732 11.064195-23.027513 21.953561a31.219512 31.219512 0 0 1-47.153951-40.935024c15.36-17.707707 23.477073-24.925659 42.908098-38.112781a206.123707 206.123707 0 0 1 118.359414-34.965854l8.641561 0.324683z" fill="#bfbfbf" p-id="28911"></path><path d="M493.018537 41.409561a31.219512 31.219512 0 0 1 60.765658 13.986341l-1.348683 5.994147a138.24 138.24 0 0 0 18.307122 99.253073c21.628878 35.04078 60.341073 63.937561 121.031805 83.918049a31.219512 31.219512 0 0 1-19.555902 59.317073c-74.12761-24.451122-124.928-62.364098-154.599025-110.467122a199.130537 199.130537 0 0 1-27.473171-138.364878c0.974049-6.069073 1.998049-10.689561 2.872196-13.636683zM360.67278 62.089366a31.219512 31.219512 0 0 1 60.216196 16.508878l-0.649366 2.697366c-0.499512 2.322732-1.173854 5.669463-1.848195 9.890341-5.34478 33.192585-3.921171 69.482146 8.691512 102.674732a145.083317 145.083317 0 0 0 41.734244 59.516878l29.346341 25.475122c10.364878 9.240976 17.133268 15.734634 26.923708 25.724878 73.303415 74.427317 106.09639 152.101463 74.851902 238.017561-40.56039 111.491122-130.84722 196.38322-229.875512 166.212683l-5.619512-1.82322c-54.696585-18.981463-89.212878-25.450146-130.647415-25.450146-24.850732 0-55.445854 8.891317-82.669268 32.268488-43.507512 37.388488-69.956683 105.047415-69.956683 212.842146a31.219512 31.219512 0 1 1-62.439025 0c0-124.878049 33.267512-210.019902 91.735415-260.195902 39.960976-34.316488 84.76722-47.353756 123.329561-47.353756 48.802341 0 90.161951 7.742439 151.127415 28.89678 58.717659 20.405073 125.177756-41.034927 156.347317-126.726244 20.380098-56.09522-0.924098-110.017561-54.946342-166.986927l-10.739512-10.964292c-11.988293-11.938341-20.729756-19.630829-47.453659-42.558439a207.397463 207.397463 0 0 1-59.416975-84.717269c-17.083317-44.956098-18.906537-91.710439-11.988293-134.76839l1.42361-7.942244c0.924098-4.820293 1.798244-8.59161 2.522536-11.239024z" fill="#bfbfbf" p-id="28912"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                        <div>
                                                            <h4>Stomach</h4>
                                                            <p>Primary(467)<br></p>
                                                            <p>Metastasis(50)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -197px;width:320px;left:90px;"
                                                        id="a5">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Gastric Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):4</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Liver metastasis(Single Cell):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Peritoneum metastasis(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">---Ovary metastasis(Single Cell):1</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):459</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Liver metastasis(Bulk):10</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):28</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Gastrointestinal Stromal Tumor</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):4</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Liver metastasis(Single Cell):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Peritoneum metastasis(Single Cell):3</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Ovary-->
                                                <div style="position: absolute;top:78%;left:75%;">
                                                    <div class="container-flex">
                                                        <div id="ovary" class="tissueImages icon-container" style="display:block;margin-right: 10px;margin-top:8px;">
                                                          <svg t="1717657559497" class="icon" viewBox="0 0 1024 1024" style="margin-top:-25px;margin-left: -25px;" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="30119" width="130" height="130"><path d="M421.433489 281.052964c-18.962287-6.312654-25.274941-18.937961-31.599758-18.937961-18.950124 18.937961-37.912411 37.875922-44.225065 50.50123 31.587595 6.312654 63.187352 6.312654 94.774947 12.625307C295.058784 369.430116 269.783843 419.931345 269.783843 527.234294c0 69.43919 31.587595 164.128995 88.462294 233.568186v-50.501229c0-18.937961-31.599758-50.501229-31.599758-63.126537 0-18.937961 56.874699-94.689805 69.512169-138.866218 12.63747-37.875922 0-88.377151 25.274941-107.315112 31.587595-37.875922 88.45013-50.501229 132.687358-56.813883 12.63747-6.312654 31.587595 0 50.537719 0 37.912411 0 94.78711-6.312654 94.78711 69.43919 0 6.312654 0 56.813883-37.912412 56.813883-12.63747 0-75.934291-16.931048-94.774946-18.937961-51.486441-5.509888-126.374705-6.312654-126.374705 100.990296 0 31.563268 25.274941 176.754303 107.412417 176.754303 88.462293 0 157.962299-208.317571 164.287116-214.630225 6.312654-18.925798 31.587595-37.863759 31.587595-50.489066 6.324817-18.937961 12.63747-50.501229 12.63747-63.126537 0-75.751844-63.187352-119.94042-126.374704-119.94042-18.950124 0-132.687358 18.937961-145.324829 18.937961-18.950124 0-50.549882-6.312654-63.175189-18.937961z m69.500006 246.18133c18.950124 0 37.912411-12.625307 50.549882-12.625307 18.950124 0 50.549882 6.312654 69.500006 12.625307-25.274941 18.937961-90.043497 58.322109-115.318439 77.26007 0 0 64.768556-33.071494 83.730844-33.071494h31.587595c-6.324817 12.625307-37.912411 37.875922-44.225065 56.813883-6.324817-6.312654-12.63747-18.937961-31.599758-18.937961-12.63747 0-31.587595 18.937961-31.587595 37.875922 0 12.625307 18.950124 37.875922 31.587595 37.875922 50.549882 0 6.324817-44.188576 82.137476-63.126537v12.625308c-18.950124 25.250615-37.900248 75.751844-69.500006 75.751844-50.549882 0-82.100987-83.901127-87.8663-131.16697l-0.595993-64.525294c12.63747 6.312654 18.962287 12.625307 31.599758 12.625307z m101.099764-50.489066c-12.63747 12.625307-37.912411 25.250615-50.549882 25.250615-6.324817 0-18.962287-25.250615-44.237228-31.563269 12.63747 0 25.274941-6.312654 37.912411-6.312653 18.962287 0 37.912411 6.312654 56.874699 12.625307z" fill="#bfbfbf" p-id="30120"></path><path d="M474.124078 562.5438c0-10.071054 8.173609-18.244664 18.244664-18.244664s18.244664 8.173609 18.244664 18.244664-8.173609 18.244664-18.244664 18.244664-18.244664-8.173609-18.244664-18.244664z" fill="#bfbfbf" p-id="30121"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                        <div>
                                                            <h4>Ovary</h4>
                                                            <p>Primary(119)<br></p>
                                                            <p>Metastasis(61)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
<!--                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -205px;width:320px;left:105px;"
                                                        id="a6">-->
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -225px;width:320px;left:85px;"
                                                        id="a6">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Ovarian Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):15</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Omentum metastasis(Single Cell):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Peritoneum metastasis(Single Cell):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Rectum metastasis(Single Cell):1</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):98</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Breast metastasis(Bulk):35</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Omentum metastasis(Bulk):9</font></div>
                                                                            <h5 style="margin-bottom: -1px;">High-grade Serous Ovarian Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):6</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Baldder metastasis(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Omentum metastasis(Single Cell):5</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Peritoneum metastasis(Single Cell):5</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>                                
                                <!--Uterus-->
                                                <div style="position: absolute;top:91%;left:70%;">
                                                    <div class="container-flex">
                                                        <div id="uterus" class="tissueImages icon-container" style="display:block;margin-right: 10px;margin-top: 8px;">
                                                           <svg t="1717657601669" class="icon" style="margin-top:8px;margin-left: 3px;" viewBox="0 0 1453 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="31292" width="75" height="75"><path d="M717.757935 38.086194l11.230968 0.066064c11.164903-0.165161 21.933419 0.099097 35.773936 1.32129 20.050581 1.684645 41.224258 5.053935 63.322838 10.471226a446.133677 446.133677 0 0 1 160.404646 75.676903l11.726451 8.984775 5.053936 4.029935c5.384258 4.426323 11.330065 11.065806 16.648258 20.215742 21.735226 37.458581 16.912516 87.205161-22.395871 143.690323l-5.351226 7.432258c-66.526968 89.715613-128.924903 221.150968-131.038968 306.869677 0.165161 3.732645 1.32129 11.396129 3.79871 18.101678a21.933419 21.933419 0 0 0 2.972903 5.945806l11.693419 14.236903c10.834581 13.840516 11.726452 21.768258 4.195097 75.47871l-6.870709 47.269161-52.851613 237.700129-80.631742-17.936516 52.323097-234.661161 7.531354-50.770581c0.396387-2.939871 0.693677-5.450323 0.924904-7.663484l0.759742-8.918709c0.099097-0.594581 0.165161-0.825806 0.264258-0.891871h0.066064l-4.426322-5.582452a99.757419 99.757419 0 0 1-10.702452-18.828387l-2.77471-6.903742c-5.945806-16.185806-8.258065-31.380645-8.78658-45.716645 2.477419-105.868387 66.725161-244.736 139.429161-346.211097l7.828645-10.735484c15.293935-20.612129 22.461935-36.897032 23.882323-49.019871a21.636129 21.636129 0 0 0-0.594581-9.975742l-0.594581-1.123097-1.519484-1.222193a365.733161 365.733161 0 0 0-140.58529-69.268645 304.491355 304.491355 0 0 0-70.722064-9.447226h-22.065549c-20.579097 0.231226-42.941935 2.642581-70.755097 9.480258-44.593548 10.900645-88.625548 30.653935-130.312258 61.44l-11.891613 9.050839-0.462451 1.057032a17.540129 17.540129 0 0 0-0.858839 6.738581l0.264258 3.270193c1.32129 10.900645 7.234065 25.203613 19.555097 42.974968l4.327226 6.044903c75.842065 102.267871 144.68129 247.312516 147.224774 359.72129-0.528516 11.495226-2.840774 26.756129-8.753548 42.941936a104.613161 104.613161 0 0 1-13.444129 25.699097l-4.492388 5.615484c0.231226 0.099097 0.363355 0.594581 0.495484 2.114064l0.627613 7.729549c0.231226 2.213161 0.528516 4.723613 0.924903 7.597419l6.969807 47.764645 52.851613 237.700129-80.59871 17.936516-53.413161-240.739097-7.597419-53.148903c-6.408258-47.40129-4.723613-53.908645 6.639483-67.980387l10.570323-12.849548a21.966452 21.966452 0 0 0 2.906839-5.879742c2.477419-6.705548 3.633548-14.369032 3.765677-15.36-1.981935-85.223226-59.887484-210.250323-123.60671-299.503484l-7.399225-10.140903c-44.164129-59.557161-50.407226-112.045419-27.747097-151.122581 5.351226-9.149935 11.264-15.789419 16.846451-20.314839l4.756646-3.831742a448.082581 448.082581 0 0 1 172.197161-84.760774c22.131613-5.41729 43.30529-8.786581 63.388903-10.504258 11.065806-0.924903 20.149677-1.32129 29.101419-1.32129z" fill="#bfbfbf" p-id="31293"></path><path d="M726.709677 153.996387c-37.59071 0-81.92 8.753548-123.375483 30.323613a41.290323 41.290323 0 0 0-16.119742 58.268903c21.966452 35.674839 66.725161 145.044645 100.418064 244.14142 12.651355 37.359484 65.502968 37.359484 78.187355 0l7.333161-21.338839c32.536774-92.952774 72.670968-189.73729 93.051871-222.835613a41.290323 41.290323 0 0 0-16.152774-58.268903A272.185806 272.185806 0 0 0 726.709677 153.996387z m7.762581 82.778839c10.570323 0.495484 22.032516 2.048 33.725936 4.756645l4.921806 1.255226-0.231226 0.462451c-11.825548 25.137548-25.104516 56.32-38.647742 90.277162L726.709677 352.784516l-1.750709-4.525419c-13.543226-34.683871-27.053419-67.055484-39.275355-93.811613l-5.351226-11.594323 4.954839-1.255226a184.980645 184.980645 0 0 1 41.422451-4.954838l7.795613 0.165161zM39.044129 102.796387C92.424258-25.89729 222.670452-17.969548 315.193806 67.683097l27.284646 26.227613c2.77471 2.576516 5.186065 4.756645 8.026838 7.267096l2.213162 1.981936c32.701935 28.771097 63.091613 46.146065 97.445161 52.389161l8.687484 1.321291-10.339097 81.953032c-53.347097-6.738581-97.709419-29.431742-141.576258-66.163613l-15.459097-13.477161a1052.407742 1052.407742 0 0 1-28.672-27.416775c-57.145806-55.560258-121.228387-60.680258-147.489032 2.675613-17.903484 43.074065 5.945806 116.669935 99.757419 152.410839l8.720516 3.138065-26.624 78.154322C47.037935 317.109677 3.567484 188.11871 39.044129 102.796387z" fill="#bfbfbf" p-id="31294"></path><path d="M174.509419 319.157677c-15.822452 57.872516 24.311742 116.868129 85.652646 135.168 61.869419 18.663226 127.372387-9.843613 143.492129-68.574967 15.822452-57.905548-24.27871-116.802065-85.652646-135.234065-61.935484-18.564129-127.372387 9.909677-143.492129 68.641032z m119.774968 10.471226c21.272774 6.375226 32.734968 23.221677 29.729032 34.287484-2.807742 10.24-19.588129 17.507097-40.134193 11.330065-21.272774-6.375226-32.734968-23.221677-29.729032-34.287484 2.609548-9.447226 17.275871-16.450065 35.806967-12.453162l4.327226 1.123097zM1133.072516 72.604903c92.754581-90.211097 226.931613-100.946581 281.30271 30.12542 34.749935 83.571613-6.177032 208.896-148.711226 262.077935l-9.447226 3.336258-26.590968-78.154322c101.045677-34.353548 126.942968-111.153548 108.477936-155.581936-25.500903-61.44-86.544516-58.467097-142.369032-7.399226l-27.515871 26.425807c-4.39329 4.129032-7.927742 7.300129-12.948645 11.693419-43.833806 38.581677-87.601548 63.289806-139.825549 72.142452l-10.570322 1.552516-10.306065-81.92c35.080258-4.426323 65.635097-19.918452 98.00671-46.80671l14.402064-12.552258c5.879742-5.285161 11.56129-10.801548 26.095484-24.939355z" fill="#bfbfbf" p-id="31295"></path><path d="M1135.384774 250.516645c-61.340903 18.432-101.409032 77.361548-85.553548 135.201032 16.020645 58.764387 81.523613 87.271226 143.525161 68.608 61.274839-18.299871 101.409032-77.295484 85.553548-135.134967-15.558194-56.782452-77.229419-85.28929-137.282064-70.35871l-6.243097 1.684645z m63.884387 90.508387c3.038968 10.999742-8.423226 27.846194-29.629935 34.188387-20.645161 6.210065-37.392516-1.090065-40.167226-11.297032-2.807742-10.24 6.738581-25.368774 24.906323-32.635871l4.723612-1.651613c20.579097-6.177032 37.359484 1.156129 40.167226 11.363097zM831.025548 698.764387a41.290323 41.290323 0 0 1 4.228129 82.349419l-4.228129 0.231226h-115.910193a41.290323 41.290323 0 0 1-4.228129-82.382451l4.228129-0.198194h115.910193zM831.025548 791.452903a41.290323 41.290323 0 0 1 4.228129 82.382452l-4.228129 0.231226h-115.910193a41.290323 41.290323 0 0 1-4.228129-82.382452l4.228129-0.198194h115.910193zM807.836903 884.207484a41.290323 41.290323 0 0 1 4.228129 82.349419l-4.228129 0.231226h-69.532903a41.290323 41.290323 0 0 1-4.228129-82.382452l4.228129-0.198193h69.532903z" fill="#bfbfbf" p-id="31296"></path></svg>
                                                        </div>
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                        <div>
                                                            <h4>Uterus</h4>
                                                            <p>Primary(131)<br></p>
                                                            <p>Metastasis(23)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -150px;width:320px;left:90px;"
                                                        id="a7">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Uterine Serous Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):11</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Bulk):11</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Cervical Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):4</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):1</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):116</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):11</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>                                                  
                                <!--Thyroid-->
                                                <div style="position: absolute;top:0%;right:65%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: -5px;">
                                                        <div>
                                                            <h4>Thyroid and Esophagus</h4>
                                                            <p>Primary(142)<br></p>
                                                            <p>Metastasis(4)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="thyroid" class="tissueImages icon-container" style="display:block;margin-top: 0px;">
                                                           <svg t="1717657658506" class="icon" style="margin-top:5px;margin-left:3px;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="32773" width="75" height="75"><path d="M307.131733 214.0672c64.8704 27.921067 140.5952 45.141333 208.264534 45.141333 71.0144 0 133.154133-13.4144 194.8672-40.7552l8.8064-3.9936 28.757333 61.917867c-73.506133 34.133333-147.933867 51.0976-232.430933 51.0976-74.0864 0-154.88-17.646933-225.655467-46.677333l-9.591467-4.027734 26.965334-62.702933z" fill="#bfbfbf" p-id="32774"></path><path d="M380.603733 586.615467a34.133333 34.133333 0 0 1 41.198934 25.156266 675.072 675.072 0 0 1 19.165866 158.9248c0 53.026133-6.4 106.001067-19.165866 158.907734a34.133333 34.133333 0 0 1-66.372267-16.008534 606.8224 606.8224 0 0 0 17.271467-142.8992c0-47.581867-5.751467-95.197867-17.271467-142.8992a34.133333 34.133333 0 0 1 25.173333-41.181866zM636.893867 586.615467a34.133333 34.133333 0 0 0-41.181867 25.156266 675.072 675.072 0 0 0-19.165867 158.9248c0 53.026133 6.382933 106.001067 19.165867 158.907734a34.133333 34.133333 0 1 0 66.3552-16.008534 606.8224 606.8224 0 0 1-17.2544-142.8992c0-47.581867 5.7344-95.197867 17.2544-142.8992a34.133333 34.133333 0 0 0-25.173333-41.181866z" fill="#bfbfbf" p-id="32775"></path><path d="M728.6272 152.576c-36.846933 89.0368-63.965867 187.050667-78.7456 291.054933l-0.256 2.321067-0.221867 2.7136a99.84 99.84 0 0 1-0.8192 6.536533l-0.256 1.416534 4.369067 1.006933c-52.821333-12.202667-95.726933-18.295467-139.861333-18.295467l-6.161067 0.034134c-36.590933 0.443733-71.509333 4.949333-120.439467 14.557866l-13.568 2.696534-0.3584-1.399467a57.258667 57.258667 0 0 1-1.1264-6.656l-0.512-4.949333c-14.779733-104.004267-41.8816-202.001067-78.7456-291.0208-47.342933-116.189867-123.835733-110.728533-168.004266 5.973333-95.368533 257.416533-65.450667 591.496533 67.771733 644.420267l4.5056 1.6384c93.013333 32.529067 169.437867-27.886933 217.207467-151.4496l2.218666-5.922134 0.4608 0.170667c22.510933 8.789333 45.568 11.997867 91.818667 15.240533l2.389333 0.085334 7.850667-0.085334c33.655467-0.648533 62.122667-5.632 86.920533-15.479466l2.321067 5.9392c50.449067 126.651733 126.976 187.136 217.9072 151.330133l4.334933-1.792c134.161067-52.036267 163.157333-387.208533 67.072-643.976533-43.656533-115.336533-118.749867-122.129067-166.2976-10.3424l-1.774933 4.2496z m-494.421333 39.287467c30.208 75.912533 52.992 158.532267 66.594133 245.896533l2.167467 14.6944-0.1024-1.365333c3.925333 50.2784 35.3792 84.087467 80.401066 73.045333l16.2816-3.293867c47.104-9.250133 79.4624-13.243733 113.288534-13.243733 38.212267 0 76.288 5.410133 124.910933 16.64l3.618133 0.7168c44.117333 7.8336 71.168-21.060267 76.014934-70.024533l0.187733-2.4064-0.1024 0.7168c13.243733-93.098667 36.898133-180.992 68.846933-261.239467l16.9984-42.103467c7.936-18.824533 10.376533-17.851733 18.722134 3.9936l10.752 28.842667c84.5824 225.9456 58.897067 522.6496-28.859734 556.714667-50.688 21.538133-98.065067-17.066667-136.942933-121.4464l-2.2016-5.973334c-12.014933-35.4304-44.817067-41.864533-78.421333-30.8736l-3.0208 1.160534-4.0448 1.655466c-16.452267 6.434133-36.8128 9.949867-62.481067 10.4448l-5.495467 0.0512-14.08-1.058133c-31.709867-2.6112-46.984533-5.410133-60.0064-11.093333l-3.037866-1.160534c-33.5872-10.990933-66.389333-4.5568-78.626134 31.470934-36.864 106.274133-85.504 147.114667-139.144533 126.72-86.050133-34.184533-112.554667-330.154667-28.5696-556.834134l10.717867-28.740266c11.3664-29.7472 11.7248-20.616533 30.208 24.746666l5.410133 13.346134z" fill="#bfbfbf" p-id="32776"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -5px;width:320px;right:88px;" id="a8">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Esophageal Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):142</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Undefined metastasis(Bulk):4</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                <!--Lung-->
                                            <div style="position: absolute;top:13%;right:72%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: -5px;">
                                                        <div>
                                                            <h4>Lung</h4>
                                                            <p>Primary(935)<br></p>
                                                            <p>Metastasis(65)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="lung" class="tissueImages icon-container" style="display:block;">
                                                            <svg t="1717657248884" class="icon" style="margin-left:3px;margin-top:-1px;" viewBox="0 0 1287 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="20923" width="73" height="73"><path d="M594.446629 412.8768c30.837029-9.654857 63.429486-12.024686 95.378285-1.930971 6.9632 2.194286 13.780114 4.973714 20.2752 8.338285l6.407315 3.510857 170.569142 99.240229a36.571429 36.571429 0 0 1-33.206857 65.038629l-3.540114-1.813943-170.8032-99.357257a56.407771 56.407771 0 0 0-11.761371-5.207772c-13.750857-4.388571-29.666743-3.803429-45.524115 0.292572l-5.968457 1.696914c-5.061486 1.579886-8.835657 3.101257-9.596343 3.335314h-0.117028l-169.515886 99.035429a36.571429 36.571429 0 0 1-40.228571-60.942629l3.335314-2.194286 171.446857-100.059428c4.973714-2.545371 12.756114-5.851429 22.820571-8.981943zM708.900571 22.410971a36.571429 36.571429 0 0 1 34.962286 38.0928l-6.378057 158.281143a2386.885486 2386.885486 0 0 0-1.404343 47.279543v1.8432c0 32.446171 15.652571 57.899886 81.1008 90.229029l7.489829 3.627885 122.88 67.876572a36.571429 36.571429 0 0 1-31.773257 65.770057l-3.598629-1.755429-120.861257-66.823314c-92.072229-43.651657-126.244571-93.535086-128.292572-153.131886l-0.117028-5.792914c0-6.875429 0.438857-22.1184 1.2288-44.529371l4.5056-115.273143 2.135771-50.731886A36.571429 36.571429 0 0 1 708.900571 22.410971zM578.413714 22.410971a36.571429 36.571429 0 0 1 37.741715 31.217372l0.4096 4.798171 5.880685 145.086172a2520.502857 2520.502857 0 0 1 1.930972 64.394971c0 60.123429-31.246629 110.504229-117.5552 153.6l-8.835657 4.271543-122.850743 67.876571a36.571429 36.571429 0 0 1-38.765715-61.878857l3.393829-2.135771 124.869486-68.900572c67.262171-31.890286 85.313829-57.344 86.542628-89.234285v-7.753143c-0.087771-5.851429-0.351086-15.213714-0.760685-27.501714l-3.072-81.627429-3.8912-94.120229A36.571429 36.571429 0 0 1 578.413714 22.410971z" fill="#bfbfbf" p-id="20924"></path><path d="M306.7904 159.071086c73.874286-51.287771 144.618057-46.460343 202.430171-1.170286a36.571429 36.571429 0 0 1-45.114514 57.578057c-32.007314-25.102629-66.121143-28.379429-109.714286-0.292571l-5.705142 3.861943a194.062629 194.062629 0 0 0-9.362286 7.255771c-8.279771 6.729143-17.6128 15.008914-27.765029 24.751543a639.707429 639.707429 0 0 0-86.250057 103.6288C133.266286 491.52 84.611657 663.669029 102.517029 876.251429l1.462857 16.032914c0.117029 2.633143 1.609143 9.303771 5.149257 15.418514 5.500343 9.450057 14.218971 14.628571 32.446171 14.043429l1.784686-0.087772 327.211886-87.332571c6.582857-1.901714 18.373486-7.7824 30.895543-18.724572l4.183771-3.861942c20.158171-19.309714 33.704229-45.904457 37.653943-80.574172l0.731428-8.133486V473.380571a36.571429 36.571429 0 0 1 72.938058-3.744914l0.2048 3.744914-0.087772 252.021029c-3.8912 59.684571-26.155886 105.969371-60.854857 139.176229-21.650286 20.714057-43.534629 32.738743-61.293714 38.736457l-4.739657 1.462857L155.326171 994.157714l-3.364571 0.263315c-49.737143 3.832686-86.074514-15.623314-106.027886-49.912686-10.532571-18.080914-14.453029-35.605943-14.891885-47.045486-23.3472-235.461486 30.047086-429.699657 133.588114-583.592228A712.528457 712.528457 0 0 1 260.827429 198.363429c20.0704-19.338971 36.0448-32.3584 45.962971-39.3216zM778.064457 157.9008c57.841371-45.290057 128.585143-50.117486 202.576457 1.287314l6.612115 4.856686c9.713371 7.460571 23.1424 18.870857 39.204571 34.347886a712.528457 712.528457 0 0 1 96.197486 115.477943c103.570286 153.892571 156.964571 348.16 133.7344 581.573485a107.871086 107.871086 0 0 1-15.008915 49.064229c-19.017143 32.650971-52.867657 51.872914-99.035428 50.322286l-7.021714-0.4096-3.364572-0.263315-335.637943-89.614628c-17.759086-5.149257-41.662171-17.408-65.243428-39.994515-32.797257-31.363657-54.447543-74.400914-60.123429-131.364571l-0.8192-10.181486V473.380571a36.571429 36.571429 0 0 1 72.938057-3.744914l0.2048 3.744914-0.087771 247.222858c2.691657 41.106286 16.735086 70.363429 38.443886 91.106742 12.639086 12.112457 25.014857 19.017143 32.1536 21.650286l2.165028 0.731429 327.943314 87.566628 1.813943 0.087772c16.735086 0.526629 25.453714-3.774171 31.012572-11.790629l1.462857-2.2528c2.837943-4.885943 4.330057-10.122971 4.973714-14.423771l0.292572-3.013486c21.650286-217.965714-27.121371-395.351771-121.475658-535.581257a639.707429 639.707429 0 0 0-86.250057-103.6288c-8.104229-7.811657-15.711086-14.628571-22.674285-20.538514l-10.0352-8.162743a119.778743 119.778743 0 0 0-4.242286-3.218286c-46.518857-32.270629-82.183314-29.842286-115.624229-3.657143a36.571429 36.571429 0 0 1-45.056-57.578057z" fill="#bfbfbf" p-id="20925"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -155px;width:320px;right:90px;" id="a9">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Lung Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):11</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Brain metastasis(Single Cell):10</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Lymph node metastasis(Single Cell):7</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):15</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Brain metastasis(Bulk):15</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):4</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Lung Adenocarcinomar</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):407</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):20</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Lung Squamous Cell Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):445</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):6</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Mesotheliomar</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):57</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):3</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>                                                
                                <!--Pancreas-->
                                            <div style="position: absolute;top:26%;right:75%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: -5px;">
                                                        <div>
                                                            <h4>Pancreas</h4>
                                                            <p>Primary(247)<br></p>
                                                            <p>Metastasis(74)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="pancreas" class="tissueImages icon-container" style="display:block;">
                                                            <svg t="1717657911360" class="icon" style="margin-top:5px;margin-left: 3px;" viewBox="0 0 1162 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="36316" width="73" height="73"><path d="M996.247864 67.254237l15.412068 0.08678c34.746576 0.694237 52.102508 6.161356 68.972475 27.665356 28.012475 35.735864 3.332339 110.418441-71.610576 216.254915-49.499119 77.407458-149.139525 137.997017-298.452611 183.018305 5.276203 10.951593 8.851525 22.875119 10.344136 35.440814 107.294373-15.429424 204.765288 53.543051 221.409627 204.452881l2.082712 30.129898c6.872949 105.819119 5.953085 160.906847-5.102644 178.228068l-5.744814 9.025085H694.133153a32.542373 32.542373 0 0 1-26.606645-51.28678c61.613559-87.473898 74.352814-143.186441 46.982509-169.185627-14.874034-14.145085-49.933017-4.026576-100.976814 30.33817l-10.083796 6.959729a840.547797 840.547797 0 0 0-40.126915 30.372881l-12.409492 10.118508c-18.327864 15.27322-67.288949 56.840678-83.742373 69.71878l-3.488542 2.655458c-41.827797 30.268746-78.795932 49.533831-124.008136 56.406779-67.514576 10.222644-130.846373-15.620339-184.667118-85.599457-45.090712-58.663051-75.255322-112.744136-92.402984-181.924882l-2.169491-9.111864-1.232271-3.922441c-30.945627-102.48678-31.379525-426.331119-3.922441-465.520813 31.587797-45.073356 210.110915-32.455593 210.110915 29.279457l-0.052067 2.776949c117.100475-87.821017 257.214915-128.885153 419.423457-123.105627l18.865898 0.347119c101.393356 1.405831 164.864-4.512542 212.193628-16.141017l8.903593-2.395119c10.778034-3.002576 26.033898-7.463051 35.301966-10.014373l6.52583-1.700881a131.124068 131.124068 0 0 1 29.696-3.367051zM634.151051 606.103864l-19.716339 13.815322c-66.64678 46.305627-115.24339 73.450305-164.221831 87.890441-60.641627 17.87661-113.611932 11.142508-156.654644-24.680135a135.046508 135.046508 0 0 1-26.624-24.454509 140.583051 140.583051 0 0 1-11.17722-15.325288c-49.447051 35.458169-99.050305 50.019797-148.046102 42.886508 16.418712 51.460339 42.001356 94.867525 78.275254 142.006238 45.177492 58.767186 94.433627 78.882712 147.837831 70.794847 35.301966-5.362983 65.969898-20.584136 100.43878-44.778305l7.844881-5.640678 9.198644-7.341559c21.451932-17.529492 65.258305-54.723254 78.535593-65.657492l9.129221-7.393627a878.140746 878.140746 0 0 1 41.949288-31.744c71.471729-50.471051 124.806508-67.618712 160.490305-33.70522 44.153492 41.949288 31.27539 110.592-31.119187 204.192542l-3.731525 5.536543h201.901559c2.290983-20.080814 1.683525-70.395661-2.950508-144.08895l-2.082712-30.702644c-18.622915-168.87322-150.302373-212.887864-269.277288-131.610034z m-158.702644-49.933017a83.742373 83.742373 0 0 0-74.179254 122.619661 166.894644 166.894644 0 0 0 17.70305-2.638101 496.206102 496.206102 0 0 0 38.61695-11.628475c22.892475-8.903593 47.902373-21.694915 75.428881-38.252474a112.501153 112.501153 0 0 1-35.475526-67.132746 82.631593 82.631593 0 0 0-22.094101-2.967865z m-156.064543-32.472949c-3.106712 0-6.178712 0.173559-9.233356 0.46861l-3.384406 0.433899a112.483797 112.483797 0 0 1-41.480678 33.70522c8.001085 32.334102 19.681627 58.246508 35.301966 76.817356 21.018034 24.992542 44.535322 39.102915 71.975051 43.060068a109.168814 109.168814 0 0 1-6.872949-38.269831c0-28.741424 11.038373-54.879458 29.088542-74.456949a88.845017 88.845017 0 0 0-75.39417-41.758373zM87.265627 213.981288c-18.90061 26.971119-18.449356 336.305898 8.730034 429.906441 45.698169 12.84339 92.71539 1.197559 142.388068-36.221831-6.907661-18.466712-11.940881-38.842576-15.53356-60.259796-5.449763-28.411661-8.573831-60.103593-9.68461-94.815458-1.457898-45.507254 0.55539-92.125288 5.20678-145.442712l1.700881-18.327864 5.20678-52.276068 0.798373-9.719322a140.062373 140.062373 0 0 0 0.190915-3.384407l0.069424-2.586034-1.353763-0.919864a57.222508 57.222508 0 0 0-10.812746-5.467119c-12.114441-4.842305-29.765424-8.296136-49.394983-9.68461-37.315254-2.638102-73.502373 3.471186-77.511593 9.198644z m521.788746 242.566509a86.606102 86.606102 0 0 0-52.814102 155.266169 1218.386441 1218.386441 0 0 0 32.177898-21.41722l23.430509-16.349288c27.283525-18.674983 55.504271-31.691932 83.429966-39.102916a86.606102 86.606102 0 0 0-86.224271-78.396745z m-459.810712 87.473898a18.657627 18.657627 0 1 1 0 37.315254 18.657627 18.657627 0 0 1 0-37.315254zM401.824542 302.513898a115.069831 115.069831 0 0 1-90.563254 93.236068c6.022508 9.198644 10.725966 19.334508 13.832678 30.129898a129.596746 129.596746 0 0 1 36.030915-10.309423 13.016949 13.016949 0 1 1 3.471187 25.808271 103.632271 103.632271 0 0 0-35.249899 11.420203 111.911051 111.911051 0 0 1-5.779525 40.126916l-1.735593 4.772881 2.204203 0.052068a114.896271 114.896271 0 0 1 90.75417 50.679322 108.995254 108.995254 0 0 1 67.341017-18.102238 104.448 104.448 0 0 0-63.852475-82.145627 13.016949 13.016949 0 0 1 9.892881-24.090034c4.200136 1.735593 8.296136 3.679458 12.270645 5.796882a86.085424 86.085424 0 0 0-38.61695-127.375187z m-149.087457 76.001627l-0.225627 5.467119a961.553356 961.553356 0 0 0-0.312407 67.358373c0.93722 29.453017 3.436475 56.372068 7.567186 80.479458a86.033356 86.033356 0 0 0-7.029152-153.30495z m228.230508 5.345628a111.182102 111.182102 0 0 1-18.917966 60.606915 130.51661 130.51661 0 0 1 40.96 60.693695 112.900339 112.900339 0 0 1 57.031593-63.470644 101.011525 101.011525 0 0 1 1.735594-35.718509 81.83322 81.83322 0 0 1-80.826577-22.128813z m-161.583729 113.802847l2.429831 0.052068-2.429831-0.052068z m340.52339-143.550915a74.682576 74.682576 0 0 0-74.561085 78.917423 112.258169 112.258169 0 0 1 100.612339 27.82156c16.123661-4.686102 31.622508-9.511051 46.513899-14.50956a74.682576 74.682576 0 0 0-72.547797-92.229423z m84.974644-14.821966a86.779661 86.779661 0 0 1-14.631051 17.425356 100.404068 100.404068 0 0 1 30.077831 79.837288 777.892881 777.892881 0 0 0 67.045966-28.220746 100.143729 100.143729 0 0 1-12.20122-53.057085 65.848407 65.848407 0 0 1-70.291526-15.984813z m-595.655593 53.282712a18.657627 18.657627 0 1 1 0 37.315254 18.657627 18.657627 0 0 1 0-37.315254z m766.542102-107.155526a74.630508 74.630508 0 0 0-63.175593 34.816c-1.336407 3.124068-2.950508 6.074576-4.772882 8.886237a74.023051 74.023051 0 0 0-6.716746 30.962983c0 12.999593 3.297627 25.461153 9.476339 36.447458 50.922305-27.231458 89.330983-57.847322 115.33017-91.795525a74.456949 74.456949 0 0 0-50.141288-19.317153z m-375.755932-14.613695a56.042305 56.042305 0 1 0 0 112.08461 56.042305 56.042305 0 0 0 0-112.08461z m-192.68556-54.497627l-5.536542 3.193492a581.770847 581.770847 0 0 0-81.36461 58.003525l-0.520678 5.241492-2.60339 27.700067c-1.232271 14.023593-2.273627 27.56122-3.124068 40.717017a110.574644 110.574644 0 0 1 36.187119 20.757695l-1.857085 0.052068a88.949153 88.949153 0 0 0 88.792949-83.915932 12.305356 12.305356 0 0 1-0.034712-5.553899l0.138848-0.590101 0.017356 0.416542-0.08678-3.766237a88.688814 88.688814 0 0 0-30.008407-62.255729zM149.261017 323.740203a18.657627 18.657627 0 1 1 0 37.315255 18.657627 18.657627 0 0 1 0-37.315255z m512.173559-111.806915c-6.282847 0-12.461559 0.798373-18.414644 2.343051a13.138441 13.138441 0 0 1-1.787661 0.329763 82.180339 82.180339 0 0 1-51.078508 47.277559 81.885288 81.885288 0 0 1 31.466305 73.762712 99.970169 99.970169 0 0 1 38.304542-7.567187c17.789831 0 34.503593 4.616678 49.013153 12.704543 9.979661-8.209356 16.193085-16.887322 20.167593-28.359593a65.883119 65.883119 0 0 1 1.509966-42.660882l1.49261-3.592678-0.364474-1.40583a72.929627 72.929627 0 0 0-21.000678-33.722577 33.774644 33.774644 0 0 1-1.978577-1.683525 72.756068 72.756068 0 0 0-47.329627-17.425356z m130.898441 41.376543a40.005424 40.005424 0 1 0 32.785356 62.949966 91.986441 91.986441 0 0 1 4.304271-7.983729 40.005424 40.005424 0 0 0-37.089627-54.948882z m-300.552678-32.976272l-0.208271 0.329763a81.92 81.92 0 0 1-64.98061 31.917559c-10.049085 0-19.751051-1.822373-28.741424-5.206779 2.915797 8.955661 4.755525 18.34522 5.380339 27.960406 22.597424 7.237424 41.862508 21.347797 55.573695 39.710373a82.128271 82.128271 0 0 1 56.267932-66.421152 82.353898 82.353898 0 0 1-23.291661-28.29017zM149.261017 254.923932a18.657627 18.657627 0 1 1 0 37.315254 18.657627 18.657627 0 0 1 0-37.315254z m842.213966-148.497356l4.686102-0.121491c-7.272136 0-13.728542 0.781017-21.018034 2.42983l-2.794305 0.694238c-7.827525 2.100068-26.381017 7.584542-39.08556 11.073084l-8.10522 2.13478c-22.597424 5.553898-48.301559 9.875525-79.108339 12.826034a74.543729 74.543729 0 0 0 30.33817 45.52461 13.016949 13.016949 0 1 1-14.874034 21.347797 101.133017 101.133017 0 0 1-21.295729-19.959322 79.056271 79.056271 0 0 1-26.849627 48.353627 66.074034 66.074034 0 0 1 43.337762 47.798237 100.143729 100.143729 0 0 1 59.079594-19.143593c24.350373 0 47.277559 8.695322 65.188881 23.93383l-4.321627 6.144c6.05722-8.539119 11.73261-16.835254 17.043525-24.853695a100.352 100.352 0 0 1-35.735864-52.675254 86.449898 86.449898 0 0 1-27.26617 7.792814 13.016949 13.016949 0 1 1-2.98522-25.860339c9.198644-1.058712 17.685695-4.096 26.502509-9.30278a100.317288 100.317288 0 0 1 33.982915-75.30739l3.297627-2.829017z m49.464407 4.894373l-0.190915 0.052068a74.699932 74.699932 0 0 0-33.010983 131.210847c18.744407-30.477017 31.570441-56.684475 38.703728-78.275254 8.053153-24.402441 7.827525-39.658305 3.471187-45.212203a27.717424 27.717424 0 0 0-8.973017-7.775458z m-439.452204 29.643932a658.032814 658.032814 0 0 0-78.362033 10.361492l-4.26956 0.867796a56.042305 56.042305 0 1 0 85.113492-9.025084l-2.481899-2.204204z m-119.669152 19.959322l-2.499254 0.659526a566.289356 566.289356 0 0 0-100.594983 38.009491 56.042305 56.042305 0 0 0 103.094237-38.703728z m322.924474-22.493288l-6.300203 0.312407a1547.749966 1547.749966 0 0 1-80.201763 1.336407 53.091797 53.091797 0 0 0 7.463051 69.510508c0.919864 0.728949 1.805017 1.49261 2.655458 2.290983a53.230644 53.230644 0 0 0 77.598373-71.159322 13.069017 13.069017 0 0 1-1.214916-2.290983z m-170.157559 0.902509h-0.277695c8.365559 13.016949 12.999593 28.290169 12.999593 44.327051l-0.086779 3.245559a99.935458 99.935458 0 0 1 37.488813 1.735593 79.108339 79.108339 0 0 1 4.130712-49.013152l-5.189424-0.069424c-16.609627-0.590102-32.976271-0.659525-49.06522-0.225627z m361.593492-33.028339l-4.616678 0.104135-0.069424 0.017356 4.686102-0.121491z" fill="#bfbfbf" p-id="36317"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -215px;width:320px;right:90px;" id="a10">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Pancreatic Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):1</font></div>
                                                                            <hr>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):81</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):5</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Pancreatic Neuroendocrine Tumor</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):17</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):3</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Pancreatic Adenocarcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):4</font></div>
                                                                            <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):145</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Abwall metastasis(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Colon metastasis(Bulk):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Diaphragm metastasis(Bulk):3</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Duo metastasis(Bulk):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):25</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lung metastasis(Bulk):8</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):9</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Peritoneum metastasis(Bulk):7</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Skin metastasis(Bulk):2</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>  
                                <!--Colorectum-->
                                           <div style="position: absolute;top:39%;left:-5%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: 2px;">
                                                        <div>
                                                            <h4>Intestine</h4>
                                                            <p>Primary(1989)<br></p>
                                                            <p>Metastasis(1032)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="colorectum" class="tissueImages icon-container" style="display:block;">
                                                            <svg t="1717658165297" class="icon" style="margin-top:11px;margin-left:6px;" viewBox="0 0 1027 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="38881" width="65" height="65"><path d="M602.534663 858.595309c-6.354141 38.420387-12.856053 77.3826-19.308708 116.394069-1.773249 10.491721-3.447983 20.983442-5.418259 31.425906-2.364331 12.363483-10.048409 18.47134-22.60892 17.338431-13.250108-1.231423-18.717624-10.540978-17.68323-22.165607 1.822506-20.195332 5.122718-40.292149 8.422931-60.33971 4.186837-25.761362 8.521445-51.473467 13.644163-77.037802 2.610616-13.003823-0.886624-20.589387-11.7724-29.160088a203.554165 203.554165 0 0 1-39.01147-41.917627c-10.836519-15.220384-8.176646-29.554144 2.512102-35.809771 11.279832-6.649682 22.116351-2.167304 32.755843 13.545649 29.209345 43.247564 58.812746 51.867522 106.641202 29.357116 17.289174-8.176646 33.149898-9.358812 49.552447 0.344799 31.475163 18.569854 61.177077 14.777072 88.662432-7.782592 14.924843-12.215713 29.849685-14.383017 48.419538-8.619958 56.694699 17.633972 99.35118-9.802124 105.40978-67.678989a42.158986 42.158986 0 0 1 15.318897-29.110832c29.800428-27.682381 35.070917-57.187268 16.698092-94.129948-9.457326-19.013166-10.590235-36.499367 0.246284-54.970707a67.82676 67.82676 0 0 0 0.738854-71.767312c-10.935033-19.357964-11.772401-37.681533-0.197028-57.433553a67.79228 67.79228 0 0 0-0.197028-71.865826c-11.279832-19.554992-10.688749-37.878561 0.689597-57.433552a65.019116 65.019116 0 0 0 0-69.10744c-12.166456-20.687901-10.146923-39.405525 0.246285-60.290453 17.880257-35.908285 7.831848-72.998735-23.298517-95.016572-30.982594-21.870066-68.417843-18.175798-96.986848 11.329088-9.999152 10.34395-19.89979 16.747348-34.578348 17.732487a71.99882 71.99882 0 0 0-53.098945 26.450958 47.434401 47.434401 0 0 1-48.813594 18.274312 81.461071 81.461071 0 0 0-70.437376 18.47134 41.055631 41.055631 0 0 1-43.543105 6.69894 76.210285 76.210285 0 0 0-67.087906 5.122718 46.858095 46.858095 0 0 1-49.453934-0.788111 71.979117 71.979117 0 0 0-69.600009-2.364331 42.686035 42.686035 0 0 1-46.498519-3.842039 73.885359 73.885359 0 0 0-66.349053-10.836519 45.735037 45.735037 0 0 1-47.779199-12.363484 75.629054 75.629054 0 0 0-66.004254-22.75669c-14.924843 2.06879-25.810619-4.925691-37.583019-11.920172-48.222511-28.716776-101.666254 7.092994-110.138442 51.522724a71.35848 71.35848 0 0 0 9.211041 50.242045A50.842979 50.842979 0 0 1 54.305297 251.257656a67.831685 67.831685 0 0 0-0.738854 71.767312c11.033547 19.456478 11.723144 37.927818 0.295542 57.532067a67.225826 67.225826 0 0 0 1.526964 74.230157c13.151594 20.54013 12.018685 39.356268-0.098514 59.699371-16.057751 26.894271-14.678558 55.808075-4.531635 84.081538 8.9155 24.825481 27.288326 38.37113 58.073892 39.307011 0-12.708282-0.64034-24.086627 0.197028-35.366458 1.182166-16.55032 10.048409-26.303188 22.214864-24.776224 14.284503 1.723992 18.816138 12.018685 19.11168 24.825481 0.295541 11.329088 0.098514 22.707434 0.098514 34.23355 33.740981-2.019533 52.951174-15.811467 60.290453-43.099793 8.866243-33.149898 8.176646-65.314658-15.663696-93.095553a45.808923 45.808923 0 0 1-8.324417-51.325696 75.111856 75.111856 0 0 0-3.891296-72.210625c-9.654354-16.599577-8.816986-32.95287-0.541826-49.749475 4.088323-8.27516 7.092994-17.04289 10.935033-26.450959-14.727815-5.369003-27.140555-8.225903-37.829304-14.235245a137.820823 137.820823 0 0 1-34.282806-25.662849c-4.088323-4.482378-3.595754-16.796605-0.443313-23.249259 4.531635-9.358812 14.875586-12.117199 25.022509-6.895967a125.112542 125.112542 0 0 1 14.087475 10.097666c19.11168 13.545649 39.898094 19.801276 62.950326 12.461997a49.847989 49.847989 0 0 1 53.197459 12.609768c25.022508 23.495544 53.936312 29.209345 85.559246 14.284503a43.72043 43.72043 0 0 1 46.449262 3.891295c26.352445 17.732486 53.985569 19.850533 82.111263 4.088323a47.345738 47.345738 0 0 1 49.552447-0.098513c29.406373 16.55032 57.679837 13.841191 83.933769-6.600426 15.860724-12.363483 31.869218-15.909981 51.276439-8.9155 32.854356 11.821657 61.177077 2.758387 83.539713-23.24926a46.084761 46.084761 0 0 1 46.449262-16.845861 83.027441 83.027441 0 0 0 70.683661-17.289175c14.284503-11.378345 24.776224-10.245436 33.051384-0.098513 8.324417 10.245436 7.388536 21.870066-6.994481 32.263273-16.895119 12.215713-36.056055 21.278983-55.709561 32.608072 12.757539 20.884928 9.161785 42.016141-3.49724 63.787694-12.117199 20.835671-10.19618 43.346077 2.118047 63.689179 12.461997 20.54013 11.772401 39.651809-0.147771 59.945655a64.363999 64.363999 0 0 0 0.344798 69.008926c12.26497 20.589387 11.920171 39.602553-0.492569 59.945654a48.921959 48.921959 0 0 0-8.521444 27.288327c2.512102 25.219536-16.451807 35.711257-31.278136 48.222511-4.974948 4.186837-17.436945 4.433122-23.791086 1.231422-29.406373-14.826329-57.088754-14.48153-85.509989 2.610616-14.33376 8.669215-29.948199 6.304884-44.183445-2.06879-23.39703-13.644163-46.843318-14.136732-72.456909-5.221232a62.309986 62.309986 0 0 1-36.105312-0.837367c-55.660304-17.04289-98.513812 15.712953-90.928249 74.328671 9.999152 77.628884 24.135884 154.765199 36.400854 232.098542a245.831367 245.831367 0 0 1 3.891296 28.66752c0.344798 10.590235-4.039066 19.013166-15.811467 20.835671-12.41274 1.871762-21.278983-3.447983-23.988113-15.565183-4.679406-20.737158-8.619959-41.622086-12.018686-62.605527q-14.629301-90.214024-28.371978-180.526561a247.407588 247.407588 0 0 1-2.561359-34.726119c-0.886624-73.097249 60.930793-123.487064 131.811481-106.493431a79.909479 79.909479 0 0 0 42.262426 0.098513 106.025491 106.025491 0 0 1 73.786845 5.713802c12.363483 5.664544 22.165608 7.092994 35.070917 0.738853 24.185141-11.969428 50.389815-12.314227 76.643746-6.649682 6.452655 1.379193 12.954566 2.856901 19.801277 4.383864 6.797453-18.963909 13.939704-36.696395 19.357964-54.92145a29.431001 29.431001 0 0 0-2.413589-18.865395c-16.008495-34.676862-17.04289-69.402981 0.246285-103.48876 5.763058-11.378345 2.70913-19.801276-1.970276-29.800428-13.299365-28.569006-15.811467-59.059031-2.561359-87.233981 10.097666-21.476011 7.437793-38.223359-6.107857-57.433553-6.600425 5.41826-13.05308 10.738006-19.554992 16.107009-28.667519 23.544801-61.374105 32.854356-97.577931 24.382168a48.000855 48.000855 0 0 0-40.58769 6.649683 107.621414 107.621414 0 0 1-105.311266 8.028875 36.509219 36.509219 0 0 0-32.903613-0.640339c-34.824633 16.107008-69.600008 13.250108-103.193219-4.433122a30.879154 30.879154 0 0 0-27.239069-3.34947c-42.804251 15.171127-81.766464 6.994481-116.68961-21.722295a76.840774 76.840774 0 0 0-12.26497-6.84671c-6.945224 20.54013-13.397878 39.553296-20.293845 59.896398 20.343102 35.711257 22.116351 74.082387 6.501911 112.601287 62.457757 106.887486 36.400854 185.107453-75.363066 218.503636 0 13.102337 0.049257 27.337583 0 41.572829-0.049257 6.748196 0.098514 13.545649-0.492569 20.293845-0.985138 12.117199-6.84671 20.293845-19.949047 20.244589a19.392444 19.392444 0 0 1-20.687901-19.850534c-1.083652-16.353293-0.394055-32.854356-0.738853-49.306163a107.251988 107.251988 0 0 0-1.625478-12.856052 26.840088 26.840088 0 0 0-6.206371-3.792782c-83.047144-17.092146-122.846724-95.164343-88.169862-176.044183a45.936991 45.936991 0 0 0-0.591082-42.705737 108.581924 108.581924 0 0 1-0.049257-92.898525 36.893423 36.893423 0 0 0 0.689596-34.726119c-16.304036-35.612743-13.644163-64.526547 4.088324-105.508293C11.304018 202.00075 3.47217 179.539601 3.324399 157.078451A114.448422 114.448422 0 0 1 165.281106 52.752324a121.171989 121.171989 0 0 0 49.798733 12.166456 96.543536 96.543536 0 0 1 61.177077 23.544801c10.393207 8.619959 20.490873 13.102337 34.282807 9.55584 24.628453-6.354141 48.321025-0.837367 70.141834 10.590235a43.498774 43.498774 0 0 0 38.272616 3.447983 98.277379 98.277379 0 0 1 76.397462 3.398727 40.991597 40.991597 0 0 0 38.37113 0.295541 93.223621 93.223621 0 0 1 67.876016-5.960086 38.794739 38.794739 0 0 0 35.662-5.122718 108.567147 108.567147 0 0 1 77.3826-17.978771c11.920171 1.42845 20.786414-1.083652 28.076437-10.294693a20.11652 20.11652 0 0 1 4.186837-3.989809c8.718472-6.058599 16.895119-15.811467 26.401701-17.289174 42.50871-6.600425 70.289605-43.887903 111.369865-52.163064 45.316354-9.161785 84.475594 2.807644 114.916362 38.469644 29.751171 34.972403 34.184293 75.166039 19.357964 117.083666-5.41826 15.368155-7.684077 27.583867-0.492569 43.444591a105.276786 105.276786 0 0 1-0.197027 87.381751c-5.763058 13.299365-7.043738 24.332912-0.64034 38.272616a107.572157 107.572157 0 0 1-0.492569 92.750755 38.223359 38.223359 0 0 0 0.394055 35.169431 109.887232 109.887232 0 0 1-0.197027 92.849268 40.661576 40.661576 0 0 0 0.14777 35.514229q26.968156 67.678989-19.801276 124.866257a79.613937 79.613937 0 0 0-14.678558 30.046713c-16.944376 67.038649-75.510837 105.262008-142.894285 90.484937-14.33376-3.152442-24.923995-3.004671-37.533762 5.467516-34.726119 23.298517-72.309138 25.810619-110.483241 9.014014a36.849092 36.849092 0 0 0-32.558815-1.034395c-16.648834 7.043738-35.02166 9.999152-56.99024 15.860724z" fill="#bfbfbf" p-id="38882"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -285px;width:320px;right:93px;" id="a11">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Colorectal Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):47</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):42</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):11</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Peritoneum metastasis(Single Cell):6</font></div>
                                                                             <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):1372</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):541</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lung metastasis(Bulk):30</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):27</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Omentum metastasis(Bulk):4</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Peritoneum metastasis(Bulk):17</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):62</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Colon Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Single Cell):27</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):18</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):16</font></div>
                                                                             <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):385</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):7</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):62</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Midgut Carcinoid tumor</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):18</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):7</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):17</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Rectal Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):134</div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):23</div>
                                                                            <h5 style="margin-bottom: -1px;">Small Intestine Neuroendocrine Tumor</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):6</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):3</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>                                 
                                <!--Bone-->
                                           <div style="position: absolute;top:52%;left:-3.1%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: 2px;">
                                                        <div>
                                                            <h4>Bone</h4>
                                                            <p>Primary(50)<br></p>
                                                            <p>Metastasis(59)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="bone" class="tissueImages icon-container" style="display:block;margin-top: 5px;">
                                                            <svg t="1717658826725" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="44803" width="80" height="80"><path d="M334.367347 929.959184c-27.167347 0-54.334694-8.881633-76.8-27.167347-27.689796-22.987755-43.885714-56.42449-44.930612-91.428572-30.82449-0.522449-60.604082-13.061224-83.069388-35.52653-31.869388-31.869388-43.363265-77.844898-30.302041-121.208164 13.583673-45.453061 50.677551-77.322449 101.877551-87.771428 5.22449-1.044898 10.44898-1.044898 15.67347-0.522449 36.04898 4.179592 64.783673 17.240816 86.204081 39.706122 2.089796 2.612245 5.22449 3.134694 6.791837 3.134694 1.567347 0 4.702041-0.522449 7.836735-3.134694l287.869387-287.869387c2.612245-2.612245 3.134694-5.22449 3.134694-7.314286 0-3.134694-1.044898-5.746939-3.657143-7.836735l-1.044898-1.044898c-24.555102-24.555102-37.093878-57.991837-35.52653-92.473469 2.089796-34.481633 18.808163-66.873469 45.97551-88.293878 44.408163-35.526531 108.146939-35.004082 152.032653 1.044898 27.689796 22.987755 43.885714 56.42449 44.930612 91.428572 35.004082 1.044898 68.440816 16.718367 91.428572 44.930612 36.04898 43.885714 36.571429 108.146939 1.044898 152.032653-38.661224 48.065306-106.579592 60.081633-158.82449 28.212245-3.657143-2.089796-8.881633-1.567347-12.016327 2.089796l-293.093877 293.093877c-3.134694 3.134694-4.179592 8.359184-2.089796 12.016327 31.869388 52.244898 19.853061 120.685714-28.212245 158.82449-21.942857 16.195918-48.587755 25.077551-75.232653 25.077551z m-98.742857-162.481633c5.746939 0 10.971429 2.089796 14.628571 6.269388 4.702041 4.702041 7.314286 12.016327 5.746939 18.808163-5.746939 29.257143 4.702041 59.036735 27.689796 77.844898 28.734694 23.510204 70.530612 24.032653 99.787755 0.522449 31.869388-25.077551 39.706122-70.008163 18.285714-104.489796-12.538776-20.37551-9.404082-46.497959 7.836735-63.738775l293.093878-293.093878c17.240816-17.240816 43.363265-20.37551 63.738775-7.836735 33.959184 20.897959 78.889796 13.061224 104.489796-18.285714 22.987755-29.257143 22.987755-71.053061-0.522449-99.787755-18.808163-22.987755-48.587755-33.959184-77.844898-27.689796-6.791837 1.567347-14.106122-0.522449-18.808163-5.746939-4.702041-4.702041-7.314286-12.016327-5.746939-18.808163 5.746939-29.257143-4.702041-59.036735-27.689796-77.844898-28.734694-23.510204-70.530612-24.032653-99.787755-0.522449-18.285714 14.628571-28.734694 35.004082-30.302041 57.991837-1.044898 22.465306 7.314286 44.930612 22.987755 60.604081l0.522449 0.522449c10.44898 10.44898 16.195918 23.510204 16.195919 37.616327s-5.22449 27.167347-15.151021 37.093877l-287.869388 287.869388c-9.926531 9.926531-23.510204 15.15102-37.093877 15.151021h-0.522449c-14.106122 0-27.167347-5.746939-36.571429-15.67347-14.628571-15.15102-35.004082-24.032653-60.604081-27.167347h-2.612245c-35.526531 7.314286-61.126531 28.734694-70.530612 59.036735-8.359184 28.212245-1.044898 58.514286 19.853061 79.412245 18.808163 18.808163 45.97551 27.167347 72.097959 21.942857h4.702041z" fill="#bfbfbf" p-id="44804"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -30px;width:320px;right:90px;" id="a12">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Osteosarcomar</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):7</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Single Cell):2</font></div>
                                                                             <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):43</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Bone metastasis(Bulk):46</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lung metastasis(Bulk):11</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>                                                 
                                <!--Testicle-->
                                                <div style="position: absolute;top:65%;right:75%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: 2px;">
                                                        <div>
                                                            <h4>Testicle</h4>
                                                            <p>Primary(121)<br></p>
                                                            <p>Metastasis(4)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="testicle" class="tissueImages icon-container" style="display:block;margin-top: 5px;">
                                                            <svg t="1717658966637" class="icon" style="margin-top:8px;margin-left:5px;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="46270" width="70" height="70"><path d="M512.554 328.096h-4.334l-0.551-0.061c-71.315-7.924-121.894-82.883-137.023-128.271-5.146-15.439-13.447-46.674-11.214-82.4 2.211-35.383 14.01-64.002 35.069-85.061C414.893 11.91 442.527 6.75 474.415 17.38c16.145 5.382 29.371 13.516 35.971 18.003 6.601-4.488 19.827-12.622 35.972-18.003 31.888-10.629 59.522-5.469 79.914 14.923 21.059 21.059 32.858 49.678 35.069 85.061 2.233 35.726-6.067 66.961-11.214 82.4-15.129 45.388-65.708 120.347-137.023 128.271l-0.55 0.061z m-3.212-20h2.089c58.498-6.859 105.2-71.085 119.723-114.656 14.758-44.275 18.631-109.339-19.024-146.995-36.217-36.219-93.416 7.523-93.991 7.969l-2.708 2.106h-10.089l-2.708-2.106c-0.14-0.108-15.34-11.76-34.996-18.21-24.357-7.994-44.207-4.547-58.994 10.241C370.988 84.1 374.861 149.164 389.62 193.44c14.523 43.571 61.224 107.797 119.722 114.656z" fill="#bfbfbf" p-id="46271"></path><path d="M249.758 652.322c-42.813-47.551-87.012-100.193-120.25-162.875-38.916-73.389-54.988-146.053-49.135-222.145 6.564-85.334 36.148-145.732 87.929-179.515 36.527-23.831 84.701-33.955 139.311-29.269 40.816 3.5 70.664 13.862 71.915 14.302l-6.63 18.869 3.315-9.435-3.308 9.437c-0.287-0.101-29.123-10.068-67.546-13.293-34.819-2.922-84.978-0.749-126.213 26.194-46.25 30.22-72.772 85.48-78.831 164.244-11.686 151.907 72.063 267.652 164.307 370.104l-14.864 13.382z" fill="#bfbfbf" p-id="46272"></path><path d="M258.292 78.681m-53.6 0a53.6 53.6 0 1 0 107.2 0 53.6 53.6 0 1 0-107.2 0Z" fill="#bfbfbf" p-id="46273"></path><path d="M258.292 142.282c-35.069 0-63.601-28.531-63.601-63.601s28.531-63.601 63.601-63.601 63.601 28.531 63.601 63.601-28.532 63.601-63.601 63.601z m0-107.201c-24.042 0-43.601 19.559-43.601 43.601s19.559 43.601 43.601 43.601 43.601-19.559 43.601-43.601-19.56-43.601-43.601-43.601z" fill="#bfbfbf" p-id="46274"></path><path d="M324.208 615.395s-62.137 2.312-80.35 59.678c-18.213 57.365 0 147.871 40.175 182.7s89.456 10.189 95.616-26.772c4.529-27.175 30.801-215.606-55.441-215.606z" fill="#bfbfbf" p-id="46275"></path><path d="M325.847 884.573c-16.897 0-33.748-6.572-48.365-19.245-20.536-17.803-37.015-50.011-45.211-88.365-7.991-37.392-7.242-75.632 2.056-104.917 8.347-26.289 26.517-46.17 52.546-57.495 19.32-8.405 36.251-9.124 36.962-9.15l0.372-0.007c18.104 0 33.211 6.998 44.901 20.798 44.518 52.551 23.003 190.855 20.404 206.452-3.622 21.731-19.438 40.117-41.278 47.982-7.341 2.646-14.869 3.947-22.387 3.947z m-1.396-259.178c-1.604 0.096-15.164 1.086-30.206 7.763-20.537 9.116-34.283 24.236-40.856 44.94-8.279 26.076-8.847 60.587-1.56 94.686 7.308 34.193 21.433 62.417 38.754 77.433 15.494 13.432 34.037 17.656 50.875 11.593 14.811-5.334 25.93-18.073 28.327-32.454 8.258-49.544 15.554-153.063-15.937-190.237-7.771-9.173-17.39-13.664-29.397-13.724z" fill="#bfbfbf" p-id="46276"></path><path d="M774.242 652.322l-14.863-13.382c92.243-102.452 175.992-218.198 164.307-370.103-6.063-78.813-32.613-134.09-78.916-164.299-79.668-51.978-192.537-13.247-193.667-12.849l-6.63-18.869c1.25-0.439 31.098-10.802 71.915-14.302 54.607-4.686 102.784 5.438 139.311 29.269 51.781 33.783 81.364 94.181 87.929 179.515 5.853 76.091-10.219 148.756-49.135 222.145-33.239 62.681-77.438 115.324-120.251 162.875z" fill="#bfbfbf" p-id="46277"></path><path d="M765.709 78.681m-53.6 0a53.6 53.6 0 1 0 107.2 0 53.6 53.6 0 1 0-107.2 0Z" fill="#bfbfbf" p-id="46278"></path><path d="M765.709 142.282c-35.069 0-63.601-28.531-63.601-63.601s28.531-63.601 63.601-63.601 63.601 28.531 63.601 63.601-28.532 63.601-63.601 63.601z m0-107.201c-24.042 0-43.601 19.559-43.601 43.601s19.559 43.601 43.601 43.601 43.601-19.559 43.601-43.601-19.56-43.601-43.601-43.601z" fill="#bfbfbf" p-id="46279"></path><path d="M699.793 615.395s62.137 2.312 80.35 59.678c18.213 57.365 0 147.871-40.175 182.7s-89.456 10.189-95.616-26.772c-4.53-27.175-30.802-215.606 55.441-215.606z" fill="#bfbfbf" p-id="46280"></path><path d="M698.154 884.573c-7.52 0-15.044-1.301-22.388-3.946-21.839-7.866-37.656-26.251-41.278-47.982-2.6-15.598-24.111-153.904 20.404-206.453 11.69-13.8 26.798-20.797 44.901-20.797l0.372 0.007c0.711 0.026 17.643 0.745 36.962 9.15 26.03 11.324 44.2 31.206 52.546 57.495 9.297 29.285 10.047 67.525 2.056 104.917-8.196 38.354-24.675 70.562-45.211 88.365-14.615 12.671-31.469 19.244-48.364 19.244z m1.396-259.178c-12.008 0.06-21.626 4.551-29.398 13.725-31.489 37.171-24.194 140.692-15.937 190.237 2.397 14.38 13.517 27.119 28.328 32.454 16.837 6.067 35.381 1.839 50.875-11.593 17.321-15.017 31.446-43.24 38.754-77.434 7.287-34.099 6.719-68.61-1.56-94.686-6.573-20.704-20.319-35.824-40.856-44.94-15.043-6.677-28.602-7.667-30.206-7.763z" fill="#bfbfbf" p-id="46281"></path><path d="M603.895 825.863c0.607-2.54 1.013-5.157 1.013-7.883V421.336c0-18.748-15.199-33.947-33.947-33.947h-29.072s14.173 249.67 5.765 431.344c-0.879 18.987-20.274 23.466-17.294 40.353 17.294 98-6.303 133.049-18.36 142.921 100.054 0 98.262-92.189 104.619-145.43 1.493-12.495-3.855-23.999-12.724-30.714z" fill="#bfbfbf" p-id="46282"></path><path d="M512 1012.008c-43.388 0-74.391-16.664-92.146-49.528-14.737-27.277-18.043-61.168-20.701-88.4-0.564-5.781-1.097-11.241-1.703-16.316-1.584-13.266 2.896-26.416 11.863-35.664a39.085 39.085 0 0 1-0.221-4.12V421.337c0-24.232 19.715-43.947 43.947-43.947H570.96c24.232 0 43.947 19.715 43.947 43.947V817.98a39.07 39.07 0 0 1-0.221 4.12c8.967 9.248 13.447 22.398 11.862 35.665-0.605 5.074-1.138 10.534-1.702 16.315-2.657 27.232-5.964 61.123-20.7 88.4-17.755 32.864-48.757 49.528-92.146 49.528z m-58.96-614.619c-13.205 0-23.947 10.743-23.947 23.947V817.98c0 1.659 0.242 3.477 0.739 5.557l1.519 6.354-5.208 3.944c-6.453 4.886-9.837 13.147-8.833 21.559 0.632 5.289 1.175 10.853 1.75 16.745 5.211 53.406 11.696 119.871 92.941 119.871 81.246 0 87.73-66.465 92.941-119.871 0.575-5.891 1.118-11.456 1.75-16.744 1.004-8.412-2.38-16.672-8.833-21.558l-5.207-3.943 1.518-6.353c0.497-2.081 0.739-3.899 0.739-5.559V421.337c0-13.205-10.743-23.947-23.947-23.947H453.04z" fill="#bfbfbf" p-id="46283"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -18px;width:320px;right:85px;" id="a13">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Testicular Tumor</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Single Cell):1</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Single Cell):2</font></div>
                                                                             <hr style="margin-top:5px;margin-bottom:5px;">
                                                                            <div>&nbsp;&nbsp;<font style="color: purple;">--Primary(Bulk):120</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):2</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>    
                                <!--skin-->
                                                <div style="position: absolute;top:78%;right:72%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: 2px;">
                                                        <div>
                                                            <h4>Skin</h4>
                                                            <p>Primary(474)<br></p>
                                                            <p>Metastasis(37)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="skin" class="tissueImages icon-container" style="display:block;margin-top: 5px;">
                                                            <svg t="1717659183829" class="icon" style="margin-left:3px;margin-top:2px;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="52661" width="75" height="75"><path d="M406.790308 465.185788c-4.79112 0-9.384741-2.704598-11.570523-7.322779-24.909319-52.636824-63.045895-77.706803-116.624161-76.674287-0.082888 0.001023-0.165776 0.002047-0.248663 0.002047L28.672528 381.190769c-7.064906 0-12.791327-5.726421-12.791327-12.791327 0-7.063883 5.726421-12.791327 12.791327-12.791327l249.551636 0c1.194198-0.022513 2.391467-0.033769 3.575432-0.033769 61.928445 0 107.85238 30.715559 136.544863 91.345428 3.021823 6.385431 0.294712 14.011108-6.090718 17.033955C410.48649 464.789769 408.62305 465.185788 406.790308 465.185788z" fill="#bfbfbf" p-id="52662"></path><path d="M458.698538 464.702788c-1.473561 0-2.971681-0.255827-4.433986-0.797156-6.625908-2.449795-10.012028-9.807367-7.562233-16.433274 11.697413-31.637558 30.482245-54.216809 57.428967-69.025073 24.915459-13.691837 57.367569-20.777209 99.209536-21.660322 0.090051-0.002047 0.180102-0.00307 0.270153-0.00307l382.907876 0c7.063883 0 12.791327 5.727445 12.791327 12.791327 0 7.064906-5.727445 12.791327-12.791327 12.791327L603.748099 382.366547c-74.677816 1.602498-114.474194 23.730471-133.050272 73.976852C468.789361 461.507002 463.900004 464.702788 458.698538 464.702788z" fill="#bfbfbf" p-id="52663"></path><path d="M104.804463 491.085668c-0.919952 0-1.837858-0.025583-2.759857-0.078795-20.980847-1.195222-40.105417-16.477276-56.842613-45.421492-3.536546-6.116301-1.444908-13.9405 4.670369-17.477047 6.116301-3.536546 13.9405-1.444908 17.477047 4.670369 8.354272 14.44806 21.407566 31.846312 36.151361 32.686447 12.922311 0.729617 28.742625-10.987239 45.734624-33.902134 0.163729-0.220011 0.333598-0.434905 0.511653-0.644683 14.718213-17.388019 31.055297-26.708292 48.554856-27.700899 19.067264-1.087774 38.863123 7.883551 58.806337 26.649963 37.725206 35.350113 80.758302 35.412534 115.093295 0.150426 4.927219-5.060249 13.027711-5.169743 18.08796-0.2415 5.061272 4.928243 5.169743 13.026688 0.2415 18.08796-21.767769 22.355147-47.434336 34.209126-74.226538 34.279734-0.079818 0-0.160659 0-0.240477 0-26.549679 0-52.985772-11.623735-76.467579-33.627888-14.650675-13.784958-28.046776-20.441565-39.845497-19.757996-10.130731 0.575098-20.297278 6.760984-30.222325 18.388812C147.546939 476.677517 126.338918 491.085668 104.804463 491.085668z" fill="#bfbfbf" p-id="52664"></path><path d="M937.948647 488.311485c-0.350994 0-0.698918-0.00307-1.048889-0.010233-22.779819-0.443092-44.525076-16.045441-64.648392-46.38033-5.580089-5.341658-10.674107-8.162914-14.468526-7.91732-4.180206 0.251733-8.355295 4.363378-11.213389 7.921413-25.315572 37.6986-51.779294 45.927005-69.551052 46.174646-0.278339 0.00307-0.560772 0.005117-0.844228 0.005117-18.186198 0-45.194318-8.16496-72.191182-46.232974-3.301186-4.441149-8.600889-7.015787-14.560624-7.068999-6.130627-0.084934-11.68411 2.600221-15.274892 7.283894-28.998451 38.746466-56.389288 45.186132-74.254168 43.75862-15.97995-1.274016-38.73521-9.948583-57.08616-43.796482-8.211009-7.993045-18.585287-12.450567-29.387307-12.591783-11.519358-0.13917-22.793122 4.629437-31.722492 13.46057-5.022387 4.968152-13.122879 4.923126-18.088984-0.100284-4.967128-5.022387-4.923126-13.121855 0.100284-18.088984 13.83817-13.68672 31.624255-21.087271 50.04479-20.850887 18.229177 0.237407 35.518958 7.92346 48.685839 21.641903 0.832971 0.868787 1.540076 1.850138 2.098801 2.916423 7.225565 13.772678 19.575848 30.489408 37.387515 31.909757 16.202007 1.300622 34.58775-10.652618 51.77213-33.628912 0.022513-0.030699 0.046049-0.062422 0.069585-0.092098 8.523117-11.184737 21.630646-17.510816 35.880185-17.401322 13.925151 0.122797 27.012214 6.695492 35.009352 17.582447 0.044002 0.059352 0.086981 0.119727 0.12996 0.180102 16.47216 23.260773 34.225499 35.538401 51.375088 35.538401 0.166799 0 0.332575-0.001023 0.499373-0.00307 21.203928-0.295735 38.309514-19.327184 48.926316-35.241642 0.186242-0.277316 0.381693-0.548492 0.588401-0.811482 8.874111-11.276834 18.990516-17.33276 30.068829-17.999956 11.710716-0.704035 23.465434 4.750187 34.96228 16.211217 0.62831 0.626263 1.190105 1.316995 1.675152 2.058892 15.432481 23.604604 30.40959 35.71134 44.51382 35.986609 14.45113 0.296759 30.438243-11.748578 47.50392-35.757388 4.091178-5.757121 12.076036-7.108908 17.83725-3.015683 5.758144 4.093225 7.107885 12.078083 3.01466 17.836227C983.511355 473.078549 961.318914 488.309438 937.948647 488.311485z" fill="#bfbfbf" p-id="52665"></path><path d="M350.491071 967.909517c-8.470929 0-15.917528-3.295046-21.532409-9.530051-11.06501-12.284791-14.46341-34.95307-10.688433-71.324442 8.794293-171.374112 41.546232-327.801814 97.346095-464.930985 55.946196-137.487328 136.597051-259.382539 239.71357-362.297466 4.854565-4.845355 12.664438-4.998851 17.70729-0.350994 5.04183 4.64888 5.520737 12.447497 1.084705 17.677615C477.539652 308.963771 408.748916 562.291406 469.659171 830.138734c17.907858 45.521776 20.526499 84.532255 6.983041 104.487749-6.018064 8.866948-15.093766 13.751189-25.554002 13.753235-4.036943 0-8.284687-0.730641-12.632715-2.172479-6.935969-1.820462-13.648858-2.744507-19.958564-2.744507-12.490475 0-23.676236 3.480264-34.193777 10.641361C371.510804 963.393667 360.449887 967.909517 350.491071 967.909517zM480.270856 343.348905c-80.19446 156.551522-125.913734 338.90571-136.468115 545.351596-0.011256 0.227174-0.029676 0.453325-0.053212 0.679475-4.110621 39.229466 2.188852 49.626257 4.218068 51.878554 0.665149 0.738827 1.188058 1.068332 2.523473 1.068332 1.963725 0 7.737218-0.877997 18.908652-9.016351 0.101307-0.073678 0.202615-0.146333 0.305969-0.215918 14.747889-10.095939 31.163767-15.214517 48.79124-15.214517 8.653077 0 17.717524 1.248434 26.941606 3.711532 0.285502 0.076748 0.567935 0.162706 0.847298 0.257873 1.832741 0.62831 3.447519 0.947582 4.799306 0.947582 1.689479-0.001023 2.949168-0.415462 4.389984-2.536776 6.822382-10.051937 6.616698-39.877219-9.956769-81.605599-0.2415-0.608867-0.435928-1.234107-0.582261-1.87265-15.781428-69.064982-23.36822-137.945769-22.551622-204.725708 0.818645-66.844407 10.080589-133.439128 27.526937-197.935048C458.131627 403.732158 468.276684 373.411595 480.270856 343.348905z" fill="#bfbfbf" p-id="52666"></path><path d="M714.054367 692.952258c-7.063883 0-12.791327-5.727445-12.791327-12.791327L701.26304 375.315968c0-7.064906 5.727445-12.791327 12.791327-12.791327s12.791327 5.726421 12.791327 12.791327l0 304.844963C726.845695 687.224814 721.11825 692.952258 714.054367 692.952258z" fill="#bfbfbf" p-id="52667"></path><path d="M712.966593 792.884248c-33.466206 0-60.693314-27.223015-60.693314-60.683081s27.226085-60.683081 60.693314-60.683081c33.460066 0 60.682058 27.223015 60.682058 60.683081S746.427682 792.884248 712.966593 792.884248zM712.966593 697.101765c-19.35993 0-35.110659 15.746636-35.110659 35.100426s15.750729 35.100426 35.110659 35.100426c19.35379 0 35.099403-15.746636 35.099403-35.100426S732.321406 697.101765 712.966593 697.101765z" fill="#bfbfbf" p-id="52668"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -70px;width:320px;right:90px;" id="a14">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Melanoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):465</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):12</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Skin metastasis(Bulk):10</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):5</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Merkel Cell Carcinoma</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):9</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):6</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Skin metastasis(Bulk):4</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div> 
                                <!--Urology-->
                                <div style="position: absolute;top:90%;right:66%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 0px;margin-top: 10px;">
                                                        <div>
                                                            <h4>Urology</h4>
                                                            <p>Primary(308)<br></p>
                                                            <p>Metastasis(79)<br></p>
                                                        </div>
                                                    </div>
                                                        <div id="urology" class="tissueImages icon-container" style="display:block;margin-left: 15px;margin-top: 10px;">
                                                            <svg t="1717659431118" class="icon" style="margin-left:-2px;margin-top: 2px" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="54320" width="85" height="85"><path d="M834.56 158.72c-2.56 0-2.56 0 0 0-53.76-23.04-110.08-23.04-148.48 0-30.72 17.92-48.64 48.64-51.2 84.48-5.12 58.88 17.92 81.92 38.4 97.28l2.56 2.56c0 10.24-2.56 20.48-2.56 30.72-48.64 2.56-87.04 20.48-115.2 48.64-23.04 23.04-38.4 51.2-48.64 81.92-10.24-33.28-25.6-61.44-48.64-81.92-28.16-30.72-69.12-46.08-115.2-48.64 0-10.24 0-20.48-2.56-30.72l2.56-2.56c20.48-12.8 43.52-38.4 38.4-97.28-2.56-35.84-20.48-66.56-51.2-84.48-38.4-23.04-94.72-23.04-145.92 0h-2.56c-40.96 17.92-135.68 81.92-135.68 271.36 0 222.72 148.48 325.12 253.44 325.12 76.8 0 130.56-51.2 130.56-128 0-89.6-53.76-138.24-92.16-158.72l-10.24-5.12c5.12-12.8 7.68-25.6 10.24-38.4 35.84 2.56 64 12.8 84.48 33.28 61.44 61.44 58.88 202.24 58.88 340.48v61.44c0 15.36 10.24 25.6 25.6 25.6s25.6-10.24 25.6-25.6v-61.44c0-138.24-2.56-279.04 58.88-340.48 20.48-20.48 48.64-30.72 84.48-33.28 2.56 12.8 5.12 25.6 10.24 38.4l-10.24 5.12c-38.4 23.04-92.16 69.12-92.16 158.72 0 76.8 51.2 128 130.56 128 104.96 0 253.44-99.84 253.44-325.12 0-186.88-94.72-250.88-135.68-271.36z m-519.68 140.8c-2.56 0-12.8 0-30.72-2.56-12.8-2.56-28.16 5.12-30.72 17.92-2.56 12.8 5.12 28.16 17.92 30.72 7.68 2.56 12.8 2.56 20.48 2.56 0 7.68 2.56 15.36 2.56 23.04 0 25.6-5.12 51.2-15.36 74.24-20.48-2.56-43.52-2.56-69.12 10.24-12.8 5.12-17.92 20.48-12.8 33.28 5.12 12.8 20.48 17.92 33.28 12.8 25.6-12.8 53.76-2.56 69.12 2.56 2.56 2.56 5.12 2.56 10.24 5.12 28.16 15.36 69.12 48.64 69.12 115.2 0 48.64-28.16 76.8-79.36 76.8-81.92 0-202.24-87.04-202.24-273.92 0-112.64 38.4-194.56 104.96-225.28h2.56c38.4-17.92 76.8-17.92 99.84-2.56 15.36 10.24 23.04 23.04 25.6 43.52 7.68 38.4 0 46.08-15.36 56.32z m404.48 407.04c-48.64 0-79.36-28.16-79.36-76.8 0-66.56 40.96-99.84 69.12-115.2 2.56-2.56 7.68-2.56 10.24-5.12 15.36-7.68 43.52-15.36 69.12-2.56 12.8 5.12 28.16 0 33.28-12.8 5.12-12.8 0-28.16-12.8-33.28-23.04-10.24-46.08-12.8-69.12-10.24-10.24-23.04-15.36-48.64-15.36-74.24 0-7.68 0-15.36 2.56-23.04 5.12 0 12.8-2.56 20.48-2.56 12.8-2.56 23.04-17.92 17.92-30.72-2.56-12.8-17.92-23.04-30.72-17.92-17.92 5.12-25.6 2.56-30.72 2.56-15.36-7.68-23.04-17.92-20.48-53.76 2.56-20.48 10.24-33.28 25.6-43.52 25.6-15.36 64-12.8 99.84 2.56h2.56c66.56 30.72 104.96 112.64 104.96 225.28 2.56 184.32-117.76 271.36-197.12 271.36z" p-id="54321" fill="#bfbfbf"></path></svg>
                                                        </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -58px;width:320px;left:-214px;" id="a15">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div style="font-size:15px;margin-top:-10px;line-height: 2rem;">
                                                                            <h5 style="margin-bottom: -1px;">Bladder Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):211</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Undefined metastasis(Bulk):11</font></div>
                                                                            <h5 style="margin-bottom: -1px;">Prostate Cancer</h5>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Primary(Bulk):97</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Adrenal gland metastasis(Bulk):2</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Bone metastasis(Bulk):29</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Liver metastasis(Bulk):10</font></div>
                                                                            <div>&nbsp;&nbsp;<font style="color: purple">--Lymph node metastasis(Bulk):27</font></div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                    </div>
                    </div>
                </div>
		</div> 
            
	</div>
	</section>
        
        <section class="offer__section">
				<div class="offer__bg__wrapper" data-aos="fade-up">
					<div class="container">
						<div class="section__title mb-60">
							<div class="text-start text-lg-center">
								<div class="row">
									<div class="col-xl-7 col-lg-8 m-auto">
										<h1 class="section__title__main">Tools</h1>
									</div>
								</div>
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col-xxl-4 col-xl-6 col-lg-3">
								<div class="single__offer__box">
									<div class="icon">
										<img class="icon-front" style="position:absolute;left:5px;top:5px;" src="img/offer__icon__01.svg" alt="icon">
									</div>
									<div class="offer__name">
										<h4 class="offer__title mb-20"><a href="tools.jsp">scRNA-seq Data Tools</a></h4>
									    <p class="mb-30">Tools for scRNA-seq data</p>
										<a href="tools.jsp" class="ht_btn">
											<span>Explore</span><i class="bi bi-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-xxl-4 col-xl-6 col-lg-3">
								<div class="single__offer__box">
									<div class="icon mb-30">
										<img class="icon-front" style="position:absolute;left:5px;top:5px;" src="img/offer__icon__02.svg" alt="icon">
									</div>
									<div class="offer__name">
										<h4 class="offer__title mb-20"><a href="tools.jsp">Bulk Data Tools</a></h4>
									    <p class="mb-30">Tools for Bulk data</p>
										<a href="tools.jsp" class="ht_btn">
											<span>Explore</span><i class="bi bi-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-xxl-4 col-xl-6 col-lg-3">
								<div class="single__offer__box">
									<div class="icon mb-30">
										<img class="icon-front" style="position:absolute;left:12px;top:10px;" src="img/offer__icon__03.svg" alt="icon">
									</div>
									<div class="offer__name">
										<h4 class="offer__title mb-20"><a href="statisticsindex.jsp">Data Statistics</a></h4>
									    <p class="mb-30">Include Bulk data and scRNA-seq data</p>
										<a href="statisticsindex.jsp" class="ht_btn">
											<span>Explore</span><i class="bi bi-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
                                                    	<div class="col-xxl-4 col-xl-6 col-lg-3">
								<div class="single__offer__box">
									<div class="icon mb-30">
										<img class="icon-front" style="position:absolute;left:10px;top:10px;" src="img/offer__icon__04.svg" alt="icon">
									</div>
									<div class="offer__name">
										<h4 class="offer__title mb-20"><a href="download.jsp">Download</a></h4>
									    <p class="mb-30">Dowmload analysis results of dataset</p>
										<a href="download.jsp" class="ht_btn">
											<span>Explore</span><i class="bi bi-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>

	<section>
        <div class="container">
            <hr>
	    <div class="row">
			<div class="col-md-12">
                            <div><h1>Search</h1></div>
			</div>
	    </div>
            <div class="row" style="margin-top: -50px;">
             	<div class="col-lg-6" style="margin-top:8%;">
                    <div class="user__form">
			<h3>Looking For Information Of Interest Here</h3>
			<form class="subscribe__form">
			<input type="text" AutoComplete="off" name="cancer" id="cancer" value="" maxlength="20"
                                onclick="cancerList()" placeholder="Cancer type/Dataset/...">
                        <div id="suggest1" style="width: 92%; overflow: scroll; font-size: 22px;height: 200px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
			<a  class="ht_btn submit-btn" style="text-decoration: none;" onclick="redirectToDownload()">Submit</a>
			</form>
                        <h4>Tips:</h4>
                        <h5>You can input cancer type, cancer primary site, cancer metastasis site, dataset name, data type, experimental platform, etc. here, for example: GSE197771, GPL570</h5>
                        <h5>You can only search for one key information at a time</h5>
                    </div>
                </div>
                <div class="col-lg-6">
                <div class="row align-items-center" style="margin-left:30px;">
                    <div class="tagBall col-4">
                    <a class="tag" href="./download.jsp?searchValue=10X Genomics"   >10X Genomics</a>
                    <a class="tag" href="./download.jsp?searchValue=GSE197778"   >GSE197778</a>
                    <a class="tag" href="./download.jsp?searchValue=Osteosarcoma"   >Osteosarcoma</a>
                    <a class="tag" href="./download.jsp?searchValue=Lymph Node"   >Lymph Node</a>
                    <a class="tag" href="./download.jsp?searchValue=STRT-seq"   >STRT-seq</a>
                    <a class="tag" href="./download.jsp?searchValue=Testicle"   >Testicle</a>
                    <a class="tag" href="./download.jsp?searchValue=35812401"   >Pubmed ID:35812401</a>
                    <a class="tag" href="./download.jsp?searchValue=Clear Cell Renal Cell Carcinoma"   >Clear Cell Renal Cell Carcinoma</a>
                    <a class="tag" href="./download.jsp?searchValue=Peritoneum"   >Peritoneum</a>
                    <a class="tag" href="./download.jsp?searchValue=High-grade Serous Ovarian Cancer"   >High-grade Serous Ovarian Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Breast Cancer"   >Breast Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Cervical Cancer"   >Cervical Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Head and Neck Cancer"   >Head and Neck Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Colorectal Cancer"   >Colorectal Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Colon Cancer"   >Colon Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Ovarian Cancer"   >Ovarian Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Lung Cancer"   >Lung Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Gastric Cancer"   >Gastric Cancer</a>
                    <a class="tag" href="./download.jsp?searchValue=Pancreatic Neuroendocrine Tumor"   >Pancreatic Neuroendocrine Tumor</a>
                    <a class="tag" href="./download.jsp?searchValue=Papillary Thyroid Carcinoma"   >Papillary Thyroid Carcinoma</a>
                    <a class="tag" href="./download.jsp?searchValue=Pancreatic Ductal Adenocarcinoma"   >Pancreatic Ductal Adenocarcinoma</a>
                    <a class="tag" href="./download.jsp?searchValue=Testicular Tumor"   >Testicular Tumor</a>
                    <a class="tag" href="./download.jsp?searchValue=Salivary Adenoid Cystic Carcinoma">Salivary Adenoid Cystic Carcinoma</a>
                    <a class="tag" href="./download.jsp?searchValue=Brain">Brain</a>
                    </div>
                </div>
            </div>
            </div>
            </div>

        </div>
      </section>

        <section class="aboutUs">
                <div class="container">
                                <div class="row" style="width: 1400px;height:200px;margin-left: -35px;display: flex;align-items: stretch;margin-bottom: 50px;">
                                        <div class="col-lg-3">
                                            <div class="card" style="height:200px;">
                                                <div class="card-body">
                                                    <h5 class="heading heading-5 strong-600">Contact Us</h5>
                                                    <!--<h6 class="text-muted mb-4">2 hrs ago</h6>-->
                                                    <p class="card-text" style="margin-bottom:46px">                                        Email: chaohanxu@hrbmu.edu.cn<br>
                                        Phone & Fax: +86 18645000650<br>
                                        Address: 194 Xuefu Road, Harbin 150081, CHINA</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4" style="margin-left:30px;margin-right:30px;">
                                            <div class="card" style="height:200px;">
                                                <div class="card-body">
                                                    <h5 class="heading heading-5 strong-600">VISITS</h5>
                                                        <table style="margin-bottom:24px">
                                                                            <tr>
                                                                                <td>
                                                                                    <script type="text/javascript"
                                                                                        src="//rf.revolvermaps.com/0/0/0.js?i=5mo1medibru&amp;d=3&amp;p=1&amp;b=0&amp;w=268&amp;g=2&amp;f=arial&amp;fs=12&amp;r=0&amp;c0=362b05&amp;c1=375363&amp;c2=000000&amp;ic0=0&amp;ic1=0"
                                                                                        async="async"></script>
                                                                                    <script type="text/javascript"
                                                                                        src="//rf.revolvermaps.com/0/0/5.js?i=5o14nm1k8xo&amp;m=0&amp;c=ff0000&amp;cr1=ffffff&amp;s=90"
                                                                                        async="async"></script>
                                                                                </td>
                                                                            </tr>
                                                        </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="card"  style="height:200px;">
                                                <div class="card-body">
                                                    <h5 class="heading heading-5 strong-600">Cite</h5>
                                                    <p class="card-text">If you use P2M.db, please cite:<br></p>
                                                </div>
                                            </div>
                                        </div>
                    </div>
                </div>
            </section>
    <%@include file="footer.jsp" %>
</div> 
<script type="text/javascript" src="js/j.suggest.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script>
    $('#post-slider').flexslider({
        // Primary Controls
        controlNav          : false,              //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
        directionNav        : true,              //Boolean: Create navigation for previous/next navigation? (true/false)
        prevText            : "Previous",        //String: Set the text for the "previous" directionNav item
        nextText            : "Next",            //String: Set the text for the "next" directionNav item
         
        // Secondary Navigation
        keyboard            : true,              //Boolean: Allow slider navigating via keyboard left/right keys
        multipleKeyboard    : false,             //{NEW} Boolean: Allow keyboard navigation to affect multiple sliders. Default behavior cuts out keyboard navigation with more than one slider present.
        mousewheel          : false,             //{UPDATED} Boolean: Requires jquery.mousewheel.js (https://github.com/brandonaaron/jquery-mousewheel) - Allows slider navigating via mousewheel
        pausePlay           : false,             //Boolean: Create pause/play dynamic element
        pauseText           : 'Pause',           //String: Set the text for the "pause" pausePlay item
        playText            : 'Play',            //String: Set the text for the "play" pausePlay item
         
        // Special properties
        controlsContainer   : "",                //{UPDATED} Selector: USE CLASS SELECTOR. Declare which container the navigation elements should be appended too. Default container is the FlexSlider element. Example use would be ".flexslider-container". Property is ignored if given element is not found.
        manualControls      : "",                //Selector: Declare custom control navigation. Examples would be ".flex-control-nav li" or "#tabs-nav li img", etc. The number of elements in your controlNav should match the number of slides/tabs.
        sync                : "",                //{NEW} Selector: Mirror the actions performed on this slider with another slider. Use with care.
        asNavFor            : "",                //{NEW} Selector: Internal property exposed for turning the slider into a thumbnail navigation for another slider
    });
	
    $('#main-slider').flexslider({
        namespace           : "flex-",           //{NEW} String: Prefix string attached to the class of every element generated by the plugin
        selector            : ".slides > li",    //{NEW} Selector: Must match a simple pattern. '{container} > {slide}' -- Ignore pattern at your own peril
        animation           : "fade",            //String: Select your animation type, "fade" or "slide"
        easing              : "swing",           //{NEW} String: Determines the easing method used in jQuery transitions. jQuery easing plugin is supported!
        direction           : "horizontal",      //String: Select the sliding direction, "horizontal" or "vertical"
        reverse             : false,             //{NEW} Boolean: Reverse the animation direction
        animationLoop       : true,              //Boolean: Should the animation loop? If false, directionNav will received "disable" classes at either end
        smoothHeight        : false,             //{NEW} Boolean: Allow height of the slider to animate smoothly in horizontal mode
        startAt             : 0,                 //Integer: The slide that the slider should start on. Array notation (0 = first slide)
        slideshow           : true,              //Boolean: Animate slider automatically
        slideshowSpeed      : 7000,              //Integer: Set the speed of the slideshow cycling, in milliseconds
        animationSpeed      : 600,               //Integer: Set the speed of animations, in milliseconds
        initDelay           : 0,                 //{NEW} Integer: Set an initialization delay, in milliseconds
        randomize           : false,             //Boolean: Randomize slide order
         
        // Usability features
        pauseOnAction       : true,              //Boolean: Pause the slideshow when interacting with control elements, highly recommended.
        pauseOnHover        : false,             //Boolean: Pause the slideshow when hovering over slider, then resume when no longer hovering
        useCSS              : true,              //{NEW} Boolean: Slider will use CSS3 transitions if available
        touch               : true,              //{NEW} Boolean: Allow touch swipe navigation of the slider on touch-enabled devices
        video               : false,             //{NEW} Boolean: If using video in the slider, will prevent CSS3 3D Transforms to avoid graphical glitches
         
        // Primary Controls
        controlNav          : true,              //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
        directionNav        : true,              //Boolean: Create navigation for previous/next navigation? (true/false)
        prevText            : "Previous",        //String: Set the text for the "previous" directionNav item
        nextText            : "Next",            //String: Set the text for the "next" directionNav item
         
        // Secondary Navigation
        keyboard            : true,              //Boolean: Allow slider navigating via keyboard left/right keys
        multipleKeyboard    : false,             //{NEW} Boolean: Allow keyboard navigation to affect multiple sliders. Default behavior cuts out keyboard navigation with more than one slider present.
        mousewheel          : false,             //{UPDATED} Boolean: Requires jquery.mousewheel.js (https://github.com/brandonaaron/jquery-mousewheel) - Allows slider navigating via mousewheel
        pausePlay           : false,             //Boolean: Create pause/play dynamic element
        pauseText           : 'Pause',           //String: Set the text for the "pause" pausePlay item
        playText            : 'Play',            //String: Set the text for the "play" pausePlay item
         
        // Special properties
        controlsContainer   : "",                //{UPDATED} Selector: USE CLASS SELECTOR. Declare which container the navigation elements should be appended too. Default container is the FlexSlider element. Example use would be ".flexslider-container". Property is ignored if given element is not found.
        manualControls      : "",                //Selector: Declare custom control navigation. Examples would be ".flex-control-nav li" or "#tabs-nav li img", etc. The number of elements in your controlNav should match the number of slides/tabs.
        sync                : "",                //{NEW} Selector: Mirror the actions performed on this slider with another slider. Use with care.
        asNavFor            : "",                //{NEW} Selector: Internal property exposed for turning the slider into a thumbnail navigation for another slider
    });
</script>
<script> 
$(document).ready(function() {
    // 选择ID为'home'的元素并给它添加'active'类
    $('#home').addClass('active');
});

function cancerList() {
    // 发送POST请求到"search" URL
    $.post("search", {}, function (response) {
        // 将响应字符串转换为JSON对象
        var data = JSON.parse(response),
            uniqueCancers = []; // 初始化一个数组用于存储唯一的癌症名称

        // 遍历返回的数据
        $.each(data, function (index, item) {
            // 分割癌症名称，可能存在多个用分号分隔
            var cancers = item.cancer.split(";");

            // 遍历分割后的癌症名称列表
            $.each(cancers, function (subIndex, cancerName) {
                // 去除前后空白，并检查癌症名称是否为空或已存在于uniqueCancers数组中
                if (cancerName.trim() !== "" && !uniqueCancers.includes(cancerName.trim())) {
                    // 若未包含，则添加到uniqueCancers数组
                    uniqueCancers.push(cancerName.trim());
                }
            });
        });

        // 使用处理后的唯一癌症名称数组初始化搜索建议列表
        // 注意：这里的"cancer"变量未在提供的代码片段中定义，假设它是一个外部定义的对象或函数
        $("#cancer").suggest_list(cancer, {
            // 数据源为去重后的癌症名称列表
            source: uniqueCancers,
            // 热门列表也使用相同的去重列表
            hot_list: uniqueCancers,
            // 将搜索建议绑定到ID为"suggest1"的元素
            attachObject: "#suggest1"
        });
    });
}
 function redirectToDownload() { var s = document.getElementById("cancer").value; window.location.href = "download.jsp?searchValue=" + s }
//悬浮窗动画函数
$('#head').on('mouseover', function() {
    $('#a1').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a1').hide(); // 隐藏悬浮窗
});
$('#a1').on('mouseover', function() {
    $('#a1').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a1').hide(); // 隐藏悬浮窗
});

$('#breast').on('mouseover', function() {
    $('#a2').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a2').hide(); // 隐藏悬浮窗
});
$('#a2').on('mouseover', function() {
    $('#a2').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a2').hide(); // 隐藏悬浮窗
});

$('#kidney').on('mouseover', function() {
    $('#a3').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a3').hide(); // 隐藏悬浮窗
});
$('#a3').on('mouseover', function() {
    $('#a3').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a3').hide(); // 隐藏悬浮窗
});

$('#liver').on('mouseover', function() {
    $('#a4').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a4').hide(); // 隐藏悬浮窗
});
$('#a4').on('mouseover', function() {
    $('#a4').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a4').hide(); // 隐藏悬浮窗
});

$('#stomach').on('mouseover', function() {
    $('#a5').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a5').hide(); // 隐藏悬浮窗
});
$('#a5').on('mouseover', function() {
    $('#a5').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a5').hide(); // 隐藏悬浮窗
});

$('#ovary').on('mouseover', function() {
    $('#a6').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a6').hide(); // 隐藏悬浮窗
});
$('#a6').on('mouseover', function() {
    $('#a6').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a6').hide(); // 隐藏悬浮窗
});

$('#uterus').on('mouseover', function() {
    $('#a7').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a7').hide(); // 隐藏悬浮窗
});
$('#a7').on('mouseover', function() {
    $('#a7').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a7').hide(); // 隐藏悬浮窗
});

$('#thyroid').on('mouseover', function() {
    $('#a8').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a8').hide(); // 隐藏悬浮窗
});
$('#a8').on('mouseover', function() {
    $('#a8').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a8').hide(); // 隐藏悬浮窗
});

$('#lung').on('mouseover', function() {
    $('#a9').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a9').hide(); // 隐藏悬浮窗
});
$('#a9').on('mouseover', function() {
    $('#a9').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a9').hide(); // 隐藏悬浮窗
});

$('#pancreas').on('mouseover', function() {
    $('#a10').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a10').hide(); // 隐藏悬浮窗
});
$('#a10').on('mouseover', function() {
    $('#a10').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a10').hide(); // 隐藏悬浮窗
});

$('#colorectum').on('mouseover', function() {
    $('#a11').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a11').hide(); // 隐藏悬浮窗
});
$('#a11').on('mouseover', function() {
    $('#a11').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a11').hide(); // 隐藏悬浮窗
});

$('#bone').on('mouseover', function() {
    $('#a12').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a12').hide(); // 隐藏悬浮窗
});
$('#a12').on('mouseover', function() {
    $('#a12').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a12').hide(); // 隐藏悬浮窗
});

$('#testicle').on('mouseover', function() {
    $('#a13').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a13').hide(); // 隐藏悬浮窗
});
$('#a13').on('mouseover', function() {
    $('#a13').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a13').hide(); // 隐藏悬浮窗
});

$('#skin').on('mouseover', function() {
    $('#a14').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a14').hide(); // 隐藏悬浮窗
});
$('#a14').on('mouseover', function() {
    $('#a14').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a14').hide(); // 隐藏悬浮窗
});

$('#urology').on('mouseover', function() {
    $('#a15').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a15').hide(); // 隐藏悬浮窗
});
$('#a15').on('mouseover', function() {
    $('#a15').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a15').hide(); // 隐藏悬浮窗
});

$('#eye').on('mouseover', function() {
    $('#a16').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a16').hide(); // 隐藏悬浮窗
});
$('#a16').on('mouseover', function() {
    $('#a16').show(); // 显示悬浮窗
}).on('mouseout', function() {
    $('#a16').hide(); // 隐藏悬浮窗
});
//悬浮窗动画函数结束

//词云
    var tagEle = "querySelectorAll" in document ? document.querySelectorAll(".tag") : getClass("tag"),
      paper = "querySelectorAll" in document ? document.querySelector(".tagBall") : getClass("tagBall")[0];
      RADIUS =165,//半径
      fallLength = 700,//下落长度
      tags=[],
      angleX = Math.PI/700,
      angleY = Math.PI/700,
      CX = paper.offsetWidth/2,
      CY = paper.offsetHeight/2,
      EX = paper.offsetLeft + document.body.scrollLeft + document.documentElement.scrollLeft,
      EY = paper.offsetTop + document.body.scrollTop + document.documentElement.scrollTop;
    function getClass(className){
      var ele = document.getElementsByTagName("*");
      var classEle = [];
      for(var i=0;i<ele.length;i++){
        var cn = ele[i].className;
        if(cn === className){
          classEle.push(ele[i]);
        }
      }
      return classEle;
    }
    function innit(){
      for(var i=0;i<tagEle.length;i++){
        var a , b;
        var k = (2*(i+1)-1)/tagEle.length - 1;
        var a = Math.acos(k);
        var b = a*Math.sqrt(tagEle.length*Math.PI);
        // var a = Math.random()*2*Math.PI;
        // var b = Math.random()*2*Math.PI;
        var x = RADIUS * Math.sin(a) * Math.cos(b);
        var y = RADIUS * Math.sin(a) * Math.sin(b); 
        var z = RADIUS * Math.cos(a);
        var t = new tag(tagEle[i] , x , y , z);
        tagEle[i].style.color = "rgb("+parseInt(Math.random()*255)+","+parseInt(Math.random()*255)+","+parseInt(Math.random()*255)+")";
        tags.push(t);
        t.move();
      }
    }
    Array.prototype.forEach = function(callback){
      for(var i=0;i<this.length;i++){
        callback.call(this[i]);
      }
    }
    function animate(){
      setInterval(function(){
        rotateX();
        rotateY();
        tags.forEach(function(){
          this.move();
        })
      } , 17)
    }
    if("addEventListener" in window){
      paper.addEventListener("mousemove" , function(event){
        var x = event.clientX - EX - CX;
        var y = event.clientY - EY - CY;
        // angleY = -x* (Math.sqrt(Math.pow(x , 2) + Math.pow(y , 2)) > RADIUS/4 ? 0.0002 : 0.0001);
        // angleX = -y* (Math.sqrt(Math.pow(x , 2) + Math.pow(y , 2)) > RADIUS/4 ? 0.0002 : 0.0001);
        angleY = x*0.000001;
        angleX = y*0.000001;
      });
    }
    else {
      paper.attachEvent("onmousemove" , function(event){
        var x = event.clientX - EX - CX;
        var y = event.clientY - EY - CY;
        angleY = x*0.00001;
        angleX = y*0.00001;
      });
    };
    
    function rotateX(){
      var cos = Math.cos(angleX);
      var sin = Math.sin(angleX);
      tags.forEach(function(){
        var y1 = this.y * cos - this.z * sin;
        var z1 = this.z * cos + this.y * sin;
        this.y = y1;
        this.z = z1;
      });
    };
    
    function rotateY(){
      var cos = Math.cos(angleY);
      var sin = Math.sin(angleY);
      tags.forEach(function(){
        var x1 = this.x * cos - this.z * sin;
        var z1 = this.z * cos + this.x * sin;
        this.x = x1;
        this.z = z1;
      });
    };
    
    var tag = function(ele , x , y , z){
      this.ele = ele;
      this.x = x;
      this.y = y;
      this.z = z;
    };
    
    tag.prototype = {
      move:function(){
        var scale = fallLength/(fallLength-this.z);
        var alpha = (this.z+RADIUS)/(2*RADIUS);
        this.ele.style.fontSize = 11 * scale + "px";
        this.ele.style.opacity = alpha+0.5;
        this.ele.style.filter = "alpha(opacity = "+(alpha+0.5)*100+")";
        this.ele.style.zIndex = parseInt(scale*100);
        this.ele.style.left = this.x + CX - this.ele.offsetWidth/2 +"px";
        this.ele.style.top = this.y + CY - this.ele.offsetHeight/2 +"px";
      }
    };
    
    innit();
    animate();
//    词云结束

</script>
</body>
</html>