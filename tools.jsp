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
  margin-left: 8%;
  border-radius: 24px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
  transition: all 0.1s ease; /* 增加过渡时间以获得更柔和效果 */
}

.cart-thank__box:hover {
  box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3); /* 边缘阴影变为柔和的蓝色 */
  /*border: 2px solid #6495ED;  明确边框颜色为蓝色 */
}

.div_txt{
  margin-top: 10px;
}
.div_box{
    margin-bottom: 50px;
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
                            <span style="font-size:16px;">Tools</span>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Online Analysis Tools</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
 <section class="callaction" id="Single">
        <div class="container">
        <h1 style="margin-bottom:50px;">scRNA-seq Data Tools</h1>
            <div class="row div_box">
            <div class="cart-thank__box col-lg-5">
                <div class="row">
                    <div class="col-lg-7">
                        <a href="dc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Data Characteristics</h3></a>
                        <p class="div_txt">Characterization of P&M data after quality control<br>&nbsp;</p>
                        <a href="dc.jsp"><h5 style="font-size:1.5rem;margin-top: 22px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                    </div>
                    <div class="col-lg-3" style="margin-top:30px;">
                        <a href="dc.jsp"><img src="img/tools/dc1.png" style="height:120px;"></a>
                    </div>
                 </div>
            </div>
            <div class="cart-thank__box col-lg-5">
            <div class="row">
                <div class="col-lg-7">
                        <a href="ccc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Cell Cluster and Celltype</h3></a>
                        <p class="div_txt">Differences in cell clusters and cell types between P&M</p>
                        <a href="ccc.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                </div>
                <div class="col-lg-3" style="margin-top:30px;">
                       <a href="ccc.jsp"><img src="img/tools/dc.png" style="height:130px;margin-left: -10px;"></a>
                       </div>
                </div>
            </div>
            </div>
            <div class="row div_box">
                                <div class="cart-thank__box col-lg-5">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <a href="de.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Differentially Expressed Genes</h3></a>
                                            <p class="div_txt">Analysis of differential expression of genes between P&M</p>
                                            <a href="de.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                            </div>
                                            <div class="col-lg-3">
                                            <a href="de.jsp"><img src="img/tools/ge.png" style="height:145px;margin-top:25px;margin-left: 0px;margin-bottom: 5px;"></a>
                                        </div>
                                     </div>
                                </div>
            <div class="cart-thank__box col-lg-5">
                               <div class="row">
                                    <div class="col-lg-7">
                                        <a href="fc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Functional Characteristics</h3></a>
                                        <p class="div_txt">Functional enrichment analysis between P&M</p>
                                        <a href="fc.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                    </div>
                                    <div class="col-lg-3">
                                        <a href="fc.jsp"><img src="img/tools/fc.png" style="height:140px;margin-top:30px;margin-left: 0px;margin-bottom: 5px;"></a>
                                    </div>
                                </div>
            </div>
            </div>
            <div class="row div_box">
            <div class="cart-thank__box col-lg-5">
                <div class="row">
                        <div class="col-lg-7">
                        <a href="ci.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Cell Interaction Characteristics</h3></a>
                        <p class="div_txt">Analysis of cell-to-cell crosstalk <br>in P&M</p>
                        <a href="ci.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                        </div>
                        <div class="col-lg-3">
                        <a href="ci.jsp"><img src="img/tools/ic.png" style="height:105px;margin-top:40px;margin-left: -25px;margin-bottom: 5px;"></a>
                    </div>
                 </div>
            </div>
            <div class="cart-thank__box col-lg-5">
                <div class="row">
                    <div class="col-lg-7">
                        <a href="tc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Cell Trajectory Analysis</h3></a>
                        <p class="div_txt">Pseudotime analysis of cells in P&M<br>&nbsp;</p>
                        <a href="tc.jsp"><h5 style="font-size:1.5rem;margin-top: 18px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                        </div>
                        <div class="col-lg-3">
                        <a href="tc.jsp"><img src="img/tools/tc.png" style="height:140px;margin-top:20px;margin-left: 0px;margin-bottom: 5px;"></a>
                    </div>
                 </div>
            </div>
            </div>
             <div class="row div_box">
            <div class="cart-thank__box col-lg-5">
                               <div class="row">
                                    <div class="col-lg-7">
                                        <a href="gc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Gene Characteristics</h3></a>
                                        <p class="div_txt">Genes with high Coefficient of variation<br>&nbsp;</p>
                                        <a href="gc.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                    </div>
                                    <div class="col-lg-3">
                                        <a href="gc.jsp"><img src="img/tools/es.png" style="height:125px;margin-top:30px;margin-left: 0px;margin-bottom: 5px;"></a>
                                    </div>
                                </div>
            </div>
            <div class="cart-thank__box col-lg-5">
                               <div class="row">
                                    <div class="col-lg-7">
                                        <a href="cs.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Cell Functional State</h3></a>
                                        <p class="div_txt">Different cell status between P&M<br>&nbsp;<br>&nbsp;</p>
                                        <a href="cs.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                    </div>
                                    <div class="col-lg-3">
                                        <a href="cs.jsp"><img src="img/tools/cs.png" style="height:130px;margin-top:30px;margin-left: 0px;margin-bottom: 5px;"></a>
                                    </div>
                                </div>
            </div>
            </div>
 
            </div>
        </div>
     </section>
      <section class="callaction" id="Bulk">
        <div class="container">
        <h1 style="margin-bottom:50px;">Bulk Data Tools</h1>
            <div class="row div_box">
            <div class="cart-thank__box col-lg-5">
                <div class="row div_box">
                        <div class="col-lg-7">
                        <a href="bde.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Differentially Expressed Genes</h3></a>
                        <p class="div_txt">Analysis of differential expression of genes between P&M</p>
                        <a href="bde.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                        </div>
                        <div class="col-lg-3">
                        <a href="bde.jsp"><img src="img/tools/ge.png" style="height:145px;margin-top:25px;margin-left: 15px;margin-bottom: 5px;"></a>
                        </div>
                </div>
            </div>
            <div class="cart-thank__box col-lg-5">
                               <div class="row">
                                    <div class="col-lg-7">
                                        <a href="bfc.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Functional Characteristics</h3></a>
                                        <p class="div_txt">Functional enrichment analysis between different cell types</p>
                                        <a href="bfc.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                    </div>
                                    <div class="col-lg-3">
                                     <a href="bfc.jsp"><img src="img/tools/fc.png" style="height:140px;margin-top:30px;margin-left: 10px;margin-bottom: 5px;"></a>
                                    </div>
                                </div>
            </div>
            </div>
            <div class="row div_box">
                                <div class="cart-thank__box col-lg-5">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <a href="ppi.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Protein-protein interaction</h3></a>
                                            <p class="div_txt">Protein-protein interaction analysis in P&M</p>
                                            <a href="ppi.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                            </div>
                                            <div class="col-lg-3">
                                            <a href="ppi.jsp"><img src="img/tools/PPI.png" style="height:150px;margin-top:25px;margin-left: 10px;margin-bottom: 5px;"></a>
                                        </div>
                                     </div>
                                </div>
            <div class="cart-thank__box col-lg-5">
                               <div class="row">
                                    <div class="col-lg-7">
                                        <a href="imu.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Immune Infiltration Analysis</h3></a>
                                        <p class="div_txt">Immune infiltration analysis in P&M<br>&nbsp;</p>
                                        <a href="imu.jsp"><h5 style="font-size:1.5rem;margin-top: 13px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                                    </div>
                                    <div class="col-lg-3">
                                        <a href="imu.jsp"><img src="img/tools/II.png" style="height:150px;margin-top:15px;margin-bottom: 5px;"></a>
                                    </div>
                                </div>
            </div>
            </div>
            <div class="row div_box">
            <div class="cart-thank__box col-lg-5">
                <div class="row">
                        <div class="col-lg-7">
                        <a href="survival.jsp" style="text-decoration: none;"><h3 style="color:#407bb9;font-weight: bold;">Survival Analysis</h3></a>
                        <p class="div_txt">Survival Analysis in P&M<br>&nbsp;<br>&nbsp;</p>
                         <a href="survival.jsp"><h5 style="font-size:1.5rem;margin-top: 15px;">MORE DETAILS</h5><span class="icon-plus"></span></a>
                        </div>
                        <div class="col-lg-3">
                        <a href="survival.jsp"><img src="img/tools/survival.png" style="height:145px;margin-top:30px;margin-left: 0px;"></a>
                    </div>
                 </div>
            </div>
            </div>
            </div>
        </div>
    </section>
    <%@include file="footer.jsp" %>
</div>
<script>
    $(document).ready(function() {
    $('#tools').addClass('active');
});
</script>
</body>
</html>