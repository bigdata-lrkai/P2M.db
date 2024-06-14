<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.6/css/dataTables.bootstrap.css">
<link href="css/style.css" rel="stylesheet" />
<style>
.cart_box {
  border-radius: 6px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
  /*transition: all 0.1s ease;  增加过渡时间以获得更柔和效果 */
}
.ht_btn::before {
    background:#254575;  
}
.ht_btn{
    background: #e9eaec;
    border: none;
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
  <%@include file="header.jsp" %>
<section id="inner-headline">
    <div style="background-image: url('img/breadcrumb-gradient-bg.png');height: 250px;display: block;">
        <div class="container">
            <div class="row justify-content-center" style="margin-top: 90px;">
                 <div class="text-center row">
                        <ul class="flx-align gap-2 mb-2 justify-content-center">
                            <a href="index.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Home</a>
                                <span>></span>
                            <span href="statisticsindex.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Help</span>
                        </ul>
                      <h1 style="margin-left:3%;"><strong>FAQ</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
     <!--下面填内容-->
<section>
        <div style="margin-left: 80px;margin-right:80px;margin-top: 15px;color:black;text-align: justify;" >
            <h3 style="color:#281157;">Q1.What can P2M.db do ?</h3>
            <h5 style="margin-left: 20px;margin-top:-3px;margin-right: 20px;font-size:16px;line-height: 30px;"><font style="color:red;font-weight: bold">Search for data:</font>You can search the P2M.db database for existing scRNA-seq and bulk data that includes both primary and metastatic samples. The database comprises 40 scRNA-seq datasets and 81 bulk datasets, spanning 47 types of metastatic cancers, 29 primary tissues, and 18 metastatic tissues.</h5>
            <h5 style="margin-left: 20px;margin-top:-3px;margin-right: 20px;font-size:16px;line-height: 30px;"><font style="color:red;font-weight: bold">Online analysis:</font>For scRNA-seq data, you can browse the number of cells, number of genes, cell types, and other characteristics present in each dataset. All scRNA-seq data can be utilized for online differential gene expression analysis and functional enrichment analysis between the specified metastatic and primary sites. You can also compare the expression of genes with high coefficients of variation in various cell types, both primary and metastatic. Additionally, you can compare different cell interaction pairs, developmental trajectories, and cell functional states between primary and metastatic samples. For bulk data, you can perform differential gene expression analysis and functional enrichment analysis between the specified metastatic and primary sites, compare different protein-protein interactions, immune cell infiltration, and conduct survival analysis between primary and metastatic samples.</h5>
            <h5 style="margin-left: 20px;margin-top:-3px;margin-right: 20px;font-size:16px;line-height: 30px;"><font style="color:red;font-weight: bold">Download data:</font>You can also download all result files from online analyses, such as differential gene expression analysis, cell interaction analysis, immune infiltration analysis, and more, to your local computer for visualization and further analysis.</h5>
        </div>
        <div style="margin-left: 80px;margin-right:80px;margin-top: 15px;color:black;text-align: justify;">
         <h3 style="margin-top:5px;color:#281157;">Q2.How to use P2M.db ?</h3>
           <h4 style="color:#281157;">How to find your interested datasets or samples ?</h4>
           <h5 style="margin-left: 20px;font-size:16px;line-height: 30px;">
              To begin, you can navigate to the "statistics" module on the database homepage, where you'll find information about the various types of cancer, primary sites, and metastatic sites included in the database. Next, use the quick search feature by entering keywords such as cancer type, primary site, metastatic site, cell type, and sequencing platform in the <font style="color:red;font-weight: bold">Search box</font>. Once you initiate the search, you will receive data that matches your criteria, along with detailed information.
           </h5> 
           <div style="display:flex;justify-content: center;margin-top: 10px;margin-bottom: 10px;">
             <img src="img/HELP1.png" style="width:80%;height: 850px;">
           </div>
            <h4 style="color:#281157;">How to perform online analysis on a dataset?</h4>
            <h5 style="margin-left: 20px;margin-top:-3px;font-size:16px;line-height: 30px;">P2M.db provides eight online analysis tools based on single-cell data and five online analysis tools based on bulk data, all aimed at demonstrating the differences between primary and metastatic sites. Let's take enrichment analysis (scRNA-seq) as an example.</h5>  
            <h5 style="margin-left: 20px;margin-top:-3px;font-size:16px;line-height: 30px;">To begin, you should select a dataset by specifying the cancer type and metastatic site of interest. Afterward, you can choose between GO or KEGG as your enrichment analysis method. Click the "Submit" button to initiate the functional enrichment analysis.</h5>
            <h5 style="margin-left: 20px;margin-top:-3px;font-size:16px;line-height: 30px;">For each dataset, we offer two options for cell annotation: singleR and scType. We've retained the original annotation results as documented in the data. You can choose your preferred annotation method using the "showlabel" tag and refresh the results accordingly.</h5>
            <h5 style="margin-left: 20px;margin-top:-3px;font-size:16px;line-height: 30px;">Within the generated results, you can delve into the differences between primary and metastatic cancers. Additionally, you have the option to save the result images in PDF format to your local device.Furthermore, in the "download" section, a variety of result files are available for users to download.</h5>
           <div style="display:flex;justify-content: center;margin-top: 20px;margin-bottom: 10px;">
             <img src="img/HELP2.png" style="width:80%;height: 600px;">
           </div>
        </div>
        <div style="margin-left: 80px;margin-right:80px;margin-top: 15px;color:black;text-align: justify;margin-bottom: 50px;">
            <h3 style="color:#281157;">Q3.How to Contact us ?</h3>
            <h5 style="margin-left: 20px;margin-top:3px;font-size:16px;">If you have any question or any suggestion/comment, please feel free to contact us using the following methods:</h5>
            <h5 style="margin-left: 20px;margin-top:3px;font-size:16px;">Tel: +86 18645000650</h5>
            <h5 style="margin-left: 20px;margin-top:3px;font-size:16px;">E-mail: chaohanxu@hrbmu.edu.cn</h5>
            <h5 style="margin-left: 20px;margin-top:3px;font-size:16px;">Address: 194 Xuefu Road, Harbin 150081, CHINA</h5>
        </div>
</section>    
        
 <%@include file="footer.jsp" %>
</div>   
<script type="text/javascript">
    $(document).ready(function () {
          $('#help').addClass('active');
     });
</script>
</body>
</html>