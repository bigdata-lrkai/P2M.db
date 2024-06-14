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
                            <a href="index.html" style="text-decoration: none;font-size:16px;font-weight: bold;">Home</a>
                                <span>></span>
                            <a href="tools.html" style="text-decoration: none;font-size:16px;font-weight: bold;">Bulk Data Tools</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Protein-protein interaction</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                        Comparing the differences in Protein Interactions between <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples through protein interaction analysis
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
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Protein-protein interaction In Primary</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Gene expression similarity</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>Protein-protein interaction In Metastasis</span>
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
                    <img  src="img/pause.png"   style=" z-index: 999;width:30px;margin-left:30px;margin-top: 40px;display: none;position: absolute;" class="image" id="myPlay" alt="pause" onclick="Pause()">
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
<script src="echarts/echarts_ppi.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/bsearch.js"></script>
<script type="text/javascript">
                
 var myInterval; var currentOption;
            function intervalTask() {//更换一次显示方式
                     currentOption = currentOption === ppi_middle_option_1 ? ppi_middle_option_2 : ppi_middle_option_1;
                     myChart_middle.setOption(currentOption, true);
            }
  
            function Pause() {           
                 var img=document.getElementById("myPlay");
                 if(img.src.includes("pause.png")){
                     img.src="img/play.png";
                     clearInterval(myInterval); // 停止定时器
                 }else{
                     img.src="img/pause.png"; 
                     intervalTask();
                     myInterval = setInterval(intervalTask, 2000); // 重新创建定时器
                 }                
            } 
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            $("#mySubmit").click(function () {
                $("#start_tip").show();
                $('.loader-mask1').fadeIn();
                var submit_options = {
                    url: "ppi?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    type: "post",
                    dataType: "script",
                    success: function () {
                        var lookupTable = ppi.reduce((acc, item) => ({ ...acc, [item.name]: item.id }), {});
                        var updatedPpiMiddleConnect = ppi_connect.map(conn => {
                        return {
                          "source": lookupTable[conn.source],
                          "target": lookupTable[conn.target],
                          lineStyle: {
                            width: 5, // 设置边的权重粗细（单位：px）
                          },
                          "PORN":"+"//正或者负
                         };
                        });
                        //改变点线颜色
                        for(i=0;i<updatedPpiMiddleConnect.length;i++){
                            updatedPpiMiddleConnect[i].lineStyle.width = Math.abs(ppi_left[i].leftweight) * 10
                            if(ppi_left[i].leftweight >= 0){
                                updatedPpiMiddleConnect[i].PORN = " ";
                                updatedPpiMiddleConnect[i].lineStyle.color = "#e56564";
                            }else{
                                updatedPpiMiddleConnect[i].PORN = "-";
                                updatedPpiMiddleConnect[i].lineStyle.color = "#acb7e3";
                            }
                        }
                        const categoryColorMapping = {
                           '1': '#97cc71', // 1为转移
                           "0": '#e37cce' // 0为原发
                          };
                        ppi.forEach(node => {
                        node.itemStyle = {
                            color: categoryColorMapping[node.category]
                          };
                        });
                        ppi_left_option.series[0].data = ppi;
                        ppi_left_option.series[0].links = updatedPpiMiddleConnect;
                        myChart_left.setOption(ppi_left_option);
                        //左边结束，右边开始，右边只需要加线的权重就好，data的值一样，只用该改links里的权重值改成exp_m
                          for(i=0;i<updatedPpiMiddleConnect.length;i++){
                            updatedPpiMiddleConnect[i].lineStyle.width = Math.abs(ppi_right[i].rightweight) * 10;
                            if(ppi_right[i].rightweight >= 0){
                                updatedPpiMiddleConnect[i].PORN = " ";
                                updatedPpiMiddleConnect[i].lineStyle.color = "#e56564";
                            }else{
                                updatedPpiMiddleConnect[i].PORN = "-";
                                updatedPpiMiddleConnect[i].lineStyle.color = "#acb7e3";
                            }
                        }
                        ppi_right_option.series[0].data = ppi;
                        ppi_right_option.series[0].links = updatedPpiMiddleConnect;
                        myChart_right.setOption(ppi_right_option);
                        //右边结束中间开始
                        var middle_name = [];
                        var middle_data_p = [];
                        var middle_data_m = [];
                        for(i=0;i<ppi_middle_p.length;i++){
                            middle_name[i] = ppi_middle_p[i].name;
                            for(k=0;k<ppi_middle_p[i].data.length;k++){
                                var temp_p = [];
                                var temp_m = [];
                                if(ppi_middle_p[i].data[k] === '0'){
                                    temp_p = [i,k,"-"];
                                }else{
                                    temp_p = [i,k,parseFloat(ppi_middle_p[i].data[k]).toFixed(2)];
                                }
                                if(ppi_middle_m[i].data[k] === '0'){
                                    temp_m = [i,k,"-"];
                                }else{
                                    temp_m = [i,k,parseFloat(ppi_middle_m[i].data[k]).toFixed(2)];
                                }
                                middle_data_p.push(temp_p);
                                middle_data_m.push(temp_m);
                            }
                        }
                        yAxisLabels = middle_name;
                        ppi_middle_option_1.xAxis.data =  middle_name;
                        ppi_middle_option_1.yAxis.data =  middle_name;
                        ppi_middle_option_1.series[0].data =  middle_data_p;
                        ppi_middle_option_2.xAxis.data =  middle_name;
                        ppi_middle_option_2.yAxis.data =  middle_name;
                        ppi_middle_option_2.series[0].data =  middle_data_m;
                        myChart_middle.setOption(ppi_middle_option_1);
                        $("#start_tip").hide();
                        clearInterval(myInterval);
                        myInterval = setInterval(intervalTask, 4000);
                        var img=document.getElementById("myPlay");
                        img.src="img/pause.png";
                        document.getElementById("myPlay").style.display = "block";
                        $('.loader-mask1').fadeOut();
                   }
                };
                $("#dc_form").ajaxForm(submit_options);       
            });
</script>
</body>
</html>