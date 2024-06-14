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
                        <h1 style="margin-left:5%;"><strong>Differentially Expressed Genes</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                              This function counts significantly Differentially Expressed Genes between <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples
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
            <div class="row" style="margin-top:10px;">
                <div class="col-lg-4">
                </div>
                <div class="col-lg-4">
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
            </div>
            </form>
            </div>
</section>
        
      <section style="margin-top:60px;">
            <hr style="margin-bottom:50px;">
            <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-3">
                     <h5 class="detail-ccc-title">
                         <span>Highly Expressed Genes (Primary)</span>
                     </h5>
                               
                </div>
                <div class="col-lg-6">
                     <h5 class="detail-ccc-title">
                         <span>Differently Expressed Genes</span>
                     </h5>     
                </div>
                  <div class="col-lg-3">
                        <h5 class="detail-ccc-title">
                            <span>Highly Expressed Genes (Metastasis)</span>
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
                <div class="col-lg-3" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_left" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-6" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_middle" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-3" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_right" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
            </div>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="echarts/echarts_bde.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/bsearch.js"></script>
<script type="text/javascript">
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            $("#mySubmit").click(function () {
                $("#start_tip").show();
                $('.loader-mask1').fadeIn();
                var submit_options = {
                    url: "bde?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    type: "post",
                    dataType: "script",
                    success: function () {
                        var array_left=[];
                        var templeft_genename = [];
                        var templeft_value = [];
                        var left_xmax = 0;
                        var left_ymax = 0;
                        var left_ymin = 10;
                        templeft_genename=de_left[0].genename.split(';');
                        templeft_value=de_left[0].value.split(';');
                        for(var i=0;i<templeft_genename.length;i++){
                            var templeft_array = [];
                            templeft_array[0] = parseFloat((Math.random() * templeft_genename.length).toFixed(2));
                            templeft_array[1] = Math.abs(parseFloat(templeft_value[i]));
                            templeft_array[2] = templeft_genename[i];
                            array_left.push(templeft_array);
                            if(left_ymin > templeft_array[1]){
                                left_ymin = templeft_array[1];
                            }
                            if(left_ymax < templeft_array[1]){
                                left_ymax = templeft_array[1];
                            }
                        }
                        de_left_option.series.data = array_left;
                        de_left_option.yAxis.max = left_ymax;
                        de_left_option.yAxis.min = left_ymin;
                        de_left_option.visualMap[0].max = left_ymax;
                        de_left_option.visualMap[0].min = left_ymin;
                        de_left_option.visualMap[1].max = left_ymax;
                        de_left_option.visualMap[1].min = left_ymin;
                        myChart_left.setOption(de_left_option);
                        //右边
                        var array_right=[];
                        var tempright_genename = [];
                        var tempright_value = [];
                        var right_xmax = 0;
                        var right_ymax = 0;
                        var right_ymin = 10;
                        tempright_genename=de_right[0].genename.split(';');
                        tempright_value=de_right[0].value.split(';');
                        for(var i=0;i<tempright_genename.length;i++){
                            var tempright_array = [];
                            tempright_array[0] = parseFloat((Math.random() * tempright_genename.length).toFixed(2));
                            tempright_array[1] = parseFloat(tempright_value[i]);
                            tempright_array[2] = tempright_genename[i];
                            array_right.push(tempright_array);
                            if(right_ymin > tempright_array[1]){
                                right_ymin = tempright_array[1];
                            }
                            if(right_ymax < tempright_array[1]){
                                right_ymax = tempright_array[1];
                            }
                        }
                        de_right_option.series.data = array_right; 
                        de_right_option.yAxis.max = right_ymax+0.5;
                        de_right_option.yAxis.min = right_ymin;
                        de_right_option.visualMap[0].max = right_ymax;
                        de_right_option.visualMap[0].min = right_ymin;
                        de_right_option.visualMap[1].max = right_ymax;
                        de_right_option.visualMap[1].min = right_ymin;
                        myChart_right.setOption(de_right_option);
                        //最后是中间
                        var array_middle_supressed=[];
                        var array_middle_activated=[];
                        var array_middle_bottom=[];
                        var middle_xmax = 0;
                        var middle_ymax = 0;
                        for(var i=0;i<bde_middle.length;i++){
                            var tempmiddle_array = [];
                            tempmiddle_array[0] = parseFloat(parseFloat(bde_middle[i].x).toFixed(2));
                            tempmiddle_array[1] = parseFloat(bde_middle[i].y);
                            tempmiddle_array[2] = bde_middle[i].genename;
                            if(tempmiddle_array[0] >= 0){
                                if(tempmiddle_array[1]>= 1.3){
                                  array_middle_activated.push(tempmiddle_array);
                                }else{
                                  array_middle_bottom.push(tempmiddle_array);
                                }
                            }else{
                                if(tempmiddle_array[1]>= 1.3){
                                   array_middle_supressed.push(tempmiddle_array);
                                }else{
                                  array_middle_bottom.push(tempmiddle_array);
                                }
                            }
                            if(middle_xmax < Math.abs(tempmiddle_array[0])){
                                middle_xmax = Math.abs(tempmiddle_array[0]);
                            }
                            if(middle_ymax < tempmiddle_array[1]){
                                middle_ymax = tempmiddle_array[1];
                            }
                        }
                        //排序环节
                        var tempy1 = [];
                        for(i=0;i<array_middle_activated.length;i++){
                            tempy1[i] = array_middle_activated[i][1];
                        }
                        var data1 = tempy1.slice();
                        data1.sort(function(a, b) {
                                return b - a;
                            });
                        var temp1=[];
                            for(var x=0;x<data1.length;x++){
                                if(x<1){
                                    temp1.push(parseFloat(data1[x]));
                                 }
                        }
                        labeldata1=temp1;
                        var tempy2 = [];
                        for(i=0;i<array_middle_supressed.length;i++){
                            tempy2[i] = array_middle_supressed[i][1];
                        }
                        var data2 = tempy2.slice();
                        data2.sort(function(a, b) {
                                return b - a;
                            });
                        var temp2=[];
                            for(var x=0;x<data2.length;x++){
                                if(x<1){
                                    temp2.push(parseFloat(data2[x]));
                                 }
                        }
                        labeldata2=temp2;
                        //结束
                        bde_middle_option.series[0].data = array_middle_activated;
                        bde_middle_option.series[1].data = array_middle_supressed;
                        bde_middle_option.series[2].data = array_middle_bottom;
                        bde_middle_option.xAxis[0].max = Math.round(middle_xmax+0.5);
                        bde_middle_option.xAxis[0].min = -Math.round(middle_xmax+0.5);
                        bde_middle_option.yAxis[0].max = Math.round(middle_ymax+0.5);
                        bde_middle_option.title[0].text = 'Number of genes : '+array_middle_activated.length;
                        bde_middle_option.title[1].subtext = 'Number of genes : '+array_middle_supressed.length;
                        myChart_middle.setOption(bde_middle_option);
                        $("#start_tip").hide();
                        $('.loader-mask1').fadeOut();
                   }
                };
                $("#dc_form").ajaxForm(submit_options);       
            });
</script>
</body>
</html>