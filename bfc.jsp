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
<link href="css/style.css" rel="stylesheet" />
<style>
.cart_box {
  border-radius: 24px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
  /*transition: all 0.1s ease;  增加过渡时间以获得更柔和效果 */
}
.echart_container:hover {
  /*box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3);*/
  border: 2px solid #6495ED;
}

.ht_btn::before {
    background: red;  
}
button[disabled] {
  cursor: not-allowed;
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
                            <a href="tools.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Bulk Data Tools</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Functional Characteristics</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                              Functional characterization of differentially expressed genes between different cell types in different <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>).
                </h5> 
            <hr>
    </div>
</section>
 <section>
        <div style="margin-left: 10%;margin-right: 10%;">
            <form  method="get" role="form" id="dc_form">
            <div class="row">
                <div class="col-lg-4" >
                            <h3>Cancer:</h3> 
                            <input type="text"  AutoComplete="off" name="cancer" id="cancer" value="Colorectal Cancer" maxlength="20"  onclick="cancerList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest1" style="width: 92%; overflow: scroll; font-size: 22px;height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Metastatic site:</h3>    
                            <input type="text"  AutoComplete="off" name="siteset" id="siteset" value="peritoneum" maxlength="20"  onclick="siteList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest2" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Dataset:</h3>  
                            <input type="text"  AutoComplete="off" name="dataset" id="dataset" value="GSE161097" maxlength="20"  onclick="datasetList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest3" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
            </div>
            <div class="row" style="margin-top:-30px;">
                <div class="col-lg-4">
                            <h3>Gene:</h3>  
                            <select name="gene" id="showfc"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;">
                                    <option value="GO">GO</option>
                                    <option value="KEGG">KEGG</option>
                            </select>
                </div>
                <div class="col-lg-4">
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;margin-top: 10%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
            </div>
            </form>
            </div>
</section>
        
      <section style="margin-top:120px;">
            <hr style="margin-bottom:50px;">
            <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Functions activated in Primary</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Significantly different Functions</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>Functions activated in Metastasis</span>
                        </h5>
                </div>
            </div>
            <div style="position:relative;">
                <div class="loader-mask1">
                <div class="loader">
                    <div></div>
                    <div></div>
                </div>
              </div>
            <div class="row cart_box" style="margin-left: 10px;margin-right: 10px;">
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_left" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_middle" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_right" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
            </div>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="echarts/echarts_bfc.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/bsearch.js"></script>
<script type="text/javascript">
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                var submit_options = {
                    url: "bfc?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showfc="+$("#showfc").val(),
                    type: "post",
                    dataType: "script",
                    success: function () {
                         var max_left = 0;
                        var fc_left_funway = fc_left[0].fun_way.split(';');
                        var fc_left_pval = fc_left[0].pval.split(';');
                        for(var i=0;i<fc_left_pval.length;i++){
                            if(parseFloat(max_left) < parseFloat(fc_left_pval[i]))
                            {
                               max_left = fc_left_pval[i];
                            }
                        }
                        max_left =Math.ceil(parseFloat(max_left))+3;
                        //
                        var max_right =0;
                        var fc_right_funway = fc_right[0].fun_way.split(';');
                        var fc_right_pval = fc_right[0].pval.split(';');
                        for(var i=0;i<fc_right_pval.length;i++){
                            if(parseFloat(max_right) < parseFloat(fc_right_pval[i]))
                            {
                                max_right = fc_right_pval[i];
                            }
                        }
                        max_right =Math.ceil(parseFloat(max_right))+3;
                        //
                        var max_middle=0;
                        var fc_middle_funway = fc_middle[0].fun_way.split(';');
                        var fc_middle_pval = fc_middle[0].pval.split(';');
                        for(var i=0;i<fc_middle_pval.length;i++){
                            if(parseFloat(max_middle) < parseFloat(fc_middle_pval[i]))
                            {
                                max_middle = fc_middle_pval[i];
                            }
                        }
                        max_middle =Math.ceil(parseFloat(max_middle))+3;
                        //
                        fc_left_option.yAxis.data = fc_left_funway;
                        fc_left_option.series[0].data = fc_left_pval;
                        fc_left_option.xAxis.max = max_left;
                        fc_right_option.yAxis.data = fc_right_funway;
                        fc_right_option.series[0].data = fc_right_pval;
                        fc_right_option.xAxis.max = max_right;
                        fc_middle_option.yAxis.data = fc_middle_funway;
                        fc_middle_option.series[0].data = fc_middle_pval;
                        fc_middle_option.xAxis.max = max_middle;
                        myChart_left.setOption(fc_left_option);
                        myChart_right.setOption(fc_right_option);
                        myChart_middle.setOption(fc_middle_option);
                        $("#start_tip").hide();
                        $('.loader-mask1').fadeOut();
                   }
                };
                $("#dc_form").ajaxForm(submit_options);       
            });
            
                    myChart_left.on('click', function (params) {
        myChart_left.dispatchAction({
        type: 'dataZoom',
                startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue:
                dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
         });
        });
        myChart_right.on('click', function (params) {
        myChart_right.dispatchAction({
        type: 'dataZoom',
                startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue:
                dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
         });
        });
        myChart_middle.on('click', function (params) {
        myChart_middle.dispatchAction({
        type: 'dataZoom',
                startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue:
                dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
         });
        });
        $("#showfc").on("change",function(){
             $("#mySubmit").click();
        });
</script>
</body>
</html>