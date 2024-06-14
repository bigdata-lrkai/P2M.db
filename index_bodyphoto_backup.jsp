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
                                          <div style="position: absolute;top:0%;left:70%;">
                                                    <div class="container-flex">
                                                        <img id="eye" class="tissueImages" src="img/body/eye.png" style="display:block;">
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 0px;">
                                                                        <div>
                                                                            <h4>Eyes</h4>
                                                                            <p>Primary(51)<br></p>
                                                                            <p>Metastasis(2)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -95px;width:320px;"
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
                                                <div style="position: absolute;top:13%;left:75%;">
                                                    <div class="container-flex">
                                                        <img id="head" class="tissueImages" src="img/body/1655350929.png" style="display:block;">
                                                    <div class="clickText"
                                                        style="display:block;margin-top: -5px;width: 300px;">
                                                                        <div>
                                                                            <h4>Head and Neck</h4>
                                                                            <p>Primary(464)<br></p>
                                                                            <p>Metastasis(104)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -340px;width:320px;"
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
                                                        <img id="breast" class="tissueImages" src="img/body/1656065159.png" style="display:block;">
                                                    <div class="clickText"
                                                        style="display:block;margin-top: -5px;">
                                                                        <div>
                                                                            <h4>Breast</h4>
                                                                            <p>Primary(1575)<br></p>
                                                                            <p>Metastasis(330)<br></p>
                                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -190px;width:320px;"
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
                                                        <img id="kidney" class="tissueImages" src="img/body/1656066624.png" style="display:block;">
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
                                                        style="display:none; position: relative; top: -172px;width:320px;"
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
                                                        <img id="liver" class="tissueImages" src="img/body/1656059913.png" style="display:block;">
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                        <div>
                                                            <h4>Liver</h4>
                                                            <p>Primary(353)<br></p>
                                                            <p>Metastasis(29)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -162px;width:320px;"
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
                                                        <img id="stomach" class="tissueImages" src="img/body/1656166246.png" style="display:block;">
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
                                                        style="display:none; position: relative; top: -208px;width:320px;"
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
                                                        <img id="ovary" class="tissueImages" src="img/body/1656059915.png" style="display:block;">
                                                    <div class="clickText"
                                                        style="display:block;margin-top: 2px;">
                                                        <div>
                                                            <h4>Ovary</h4>
                                                            <p>Primary(119)<br></p>
                                                            <p>Metastasis(61)<br></p>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="clickText divTipAddArrow card cardright"
                                                        style="display:none; position: relative; top: -205px;width:320px;"
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
                                                        <img id="uterus" class="tissueImages" src="img/body/1656170804.png" style="display:block;">
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
                                                        style="display:none; position: relative; top: -156px;width:320px;"
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
                                                    <img id="thyroid" class="tissueImages" src="img/body/1656172638.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -5px;width:320px;" id="a8">
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
                                            <div style="position: absolute;top:13%;right:70%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: -5px;">
                                                        <div>
                                                            <h4>Lung</h4>
                                                            <p>Primary(935)<br></p>
                                                            <p>Metastasis(65)<br></p>
                                                        </div>
                                                    </div>
                                                    <img id="lung" class="tissueImages" src="img/body//1656058061.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -150px;width:320px;" id="a9">
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
                                                    <img id="pancreas" class="tissueImages" src="img/body/1656060447.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -215px;width:320px;" id="a10">
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
                                                    <img id="colorectum" class="tissueImages" src="img/body/1656062054.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -290px;width:320px;" id="a11">
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
                                                    <img id="bone" class="tissueImages" src="img/body/1656066885.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -40px;width:320px;" id="a12">
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
                                                    <img id="testicle" class="tissueImages" src="img/body/1656058137.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -30px;width:320px;" id="a13">
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
                                                <div style="position: absolute;top:78%;right:70%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 13px;margin-top: 2px;">
                                                        <div>
                                                            <h4>Skin</h4>
                                                            <p>Primary(474)<br></p>
                                                            <p>Metastasis(37)<br></p>
                                                        </div>
                                                    </div>
                                                    <img id="skin" class="tissueImages" src="img/body/1656063565.png" style="display:block;">
                                                    </div>
                                                    <div class="clickText divTipAddArrowleft card cardleft" style="display:none; position: absolute; top: -65px;width:320px;" id="a14">
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
                                <div style="position: absolute;top:90%;right:63.5%;">
                                                    <div class="container-flex">
                                                    <div class="clickText"
                                                        style="display:block;text-align: right;margin-right: 0px;margin-top: 10px;">
                                                        <div>
                                                            <h4>Urology</h4>
                                                            <p>Primary(308)<br></p>
                                                            <p>Metastasis(79)<br></p>
                                                        </div>
                                                    </div>
                                                    <img id="urology" class="tissueImages" src="img/body/urology.png" style="display:block;width:105px;">
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