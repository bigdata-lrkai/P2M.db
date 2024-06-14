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
  cursor: not-allowed !important;
}
select[disabled] {
  cursor: not-allowed !important;
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
                            <a href="tools.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">scRNA-seq Data Tools</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Gene Characteristics</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 8%;margin-right: 8%;">
                        <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                            This function shows Proportion and Mean of expression of Genes with high Coefficient of variation in <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastasis(</font><font style="font-weight: bold;color:red;">M</font>).
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
                            <input type="text"  AutoComplete="off" name="cancer" id="cancer" value="Testicular tumor" maxlength="20"  onclick="cancerList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest1" style="width: 92%; overflow: scroll; font-size: 22px;height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Metastatic site:</h3>    
                            <input type="text"  AutoComplete="off" name="siteset" id="siteset" value="Lymph node" maxlength="20"  onclick="siteList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest2" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Dataset:</h3>  
                            <input type="text"  AutoComplete="off" name="dataset" id="dataset" value="GSE197778" maxlength="20"  onclick="datasetList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest3" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
            </div>
            <div class="row" style="margin-top:-30px;">
                <div class="col-lg-4">
                            <h3>Gene:</h3>  
                            <input type="text"  AutoComplete="off" name="gene" id="gene" value="KRT8" maxlength="20"  onclick="geneList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest4" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Showlabel:</h3>  
                            <select disabled name="showtype" id="showtype"  onclick="showtypeList()" onchange="middle_refresh()"
                                style="cursor: not-allowed;width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>                        
                            </select>
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
                         <span>Percentage of cells (Primary)</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>All</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>Percentage of cells (Metastasis)</span>
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
                <div  id="container_left_top" style="background-color:white;height: 50px;"></div>
                <div  id="container_left_bottom" style="background-color:white;height: 650px;"></div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                    <img  src="img/pause.png"   style=" z-index: 999;width:30px;margin-left:30px;margin-top: 40px;display: none;position: absolute;" class="image" id="myPlay" alt="pause" onclick="Pause()">
                    <div class="row">
                        <div class="col-lg-7" id="container_middle_left" style="background-color:white;height: 700px;"></div>
                        <div class="col-lg-5" id="container_middle_right" style="background-color:white;height: 700px;"></div>
                    </div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                <div  id="container_right_top" style="background-color:white;height: 50px;"></div>
                <div  id="container_right_bottom" style="background-color:white;height: 650px;"></div>
                </div>
            </div>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/exporting.js"></script>
<script src="echarts/echarts_gc.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/search.js"></script>
<script type="text/javascript">
           $(document).ready(function() {
              var input1 = $('#cancer');
              var input2 = $('#siteset');
              var input3 = $('#dataset');
              var input4 = $('#gene');
              var output = $('#showtype');
              var submitButton = $('#mySubmit');
            function checkInputss() {
                if (input1.val() && input2.val() && input3.val() && input4.val()) {
                  submitButton.removeAttr('disabled');
                } else {
                  output.attr('disabled', 'disabled');
                  submitButton.attr('disabled', 'disabled');
                }
              }
              submitButton.on('mouseenter', checkInputss);
            });
           var myInterval;
           var currentOption;
            function intervalTask() {//更换一次显示方式
                     currentOption = currentOption === lrbar_option_middle_1 ? lrbar_option_middle_2 : lrbar_option_middle_1;
                     myChart_middle_left.setOption(currentOption, true);
            }
  
            function Pause() {           
                 var img=document.getElementById("myPlay");
                 if(img.src.includes("pause.png")){
                     img.src="img/play.png";
                     clearInterval(myInterval); // 停止定时器
                 }else{
                     img.src="img/pause.png"; 
                     intervalTask();
                     myInterval = setInterval(intervalTask, 5000); // 重新创建定时器
                 }                
            }  
    
           function showtypeList() {
                if ($("#showtype option").length === 1) {
                var dataset = $("#dataset").val();//得到第一个下拉列表的值
                var url = "showtypeList";
                if (dataset !== null && "" !== dataset && -1 !== dataset) {
                    //通过ajax传入后台，把cancer数据传到后端
                    $.post(url, {dataset: dataset},
                            function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                var res = JSON.parse(data);//把后台传回的json数据解析
                                var myshowtypes = new Array();
                                $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象      
                                    myshowtypes = n.showtype.toString().split(";");
                                });
                                 var Allshowtypes_mysql_dbinfo = ['sctype','article'];
                                 var Allshowtypes_mysql_value = ['st','at'];
                                 var Allshowtypes_list = ['Celltype (ScType)','Celltype (Article)'];
                                 for (var i = 0; i < Allshowtypes_mysql_dbinfo.length; i++) {
                                    if (myshowtypes.includes(Allshowtypes_mysql_dbinfo[i])) {
                                        $("#showtype").append("<option value='" + Allshowtypes_mysql_value[i].trim() + "'>" + Allshowtypes_list[i].trim() + "</option>");
                                    } else {
                                        $("#showtype").append("<optgroup label='" + Allshowtypes_list[i].trim() + "'></optgroup>");
                                    }
                                }    
                            }
                    );
                } 
                }
            }
            
           function geneList() {//如果第一个下拉列表的值改变则调用此方法
                $('#gene').val('');
                var output = $('#showtype');
                output.attr('disabled', 'disabled');
                 var dataset = $("#dataset").val();//得到第二个下拉列表的值
                 var site = $("#siteset").val();//得到第二个下拉列表的值
                 var url = "genelist";
                if (dataset !== null && "" !== dataset && -1 !== dataset) {
                    //通过ajax传入后台，把cancer数据传到后端
                    $.post(url, {dataset: dataset, site: site},
                            function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                var res = JSON.parse(data);//把后台传回的json数据解析
                                var myGenes = new Array();
                                $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                     myGenes[i] = n.gene;
                                });                                           
                                $("#gene").suggest_list(gene, {source: myGenes, hot_list: myGenes, attachObject: '#suggest4'});
                            }
                    );
                }
            }

           function middle_refresh() {
              $("#mySubmit").click();
            };
     
            var myChart_left_top = echarts.init(document.getElementById('container_left_top'));
            var myChart_left_bottom = echarts.init(document.getElementById('container_left_bottom'));
            var myChart_right_top = echarts.init(document.getElementById('container_right_top'));
            var myChart_right_bottom = echarts.init(document.getElementById('container_right_bottom'));            
            var myChart_middle_left = echarts.init(document.getElementById('container_middle_left'));
            var myChart_middle_right = echarts.init(document.getElementById('container_middle_right'));
            var submitted_options = {};
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                if($("#showtype").val() === null){
                $("#showtype").append("<option value='sr'>Celltype (SingleR)</option>"); //
                }
                submit_options = {
                    url: "gc_search_scatter_bar_polar?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showtype="+$("#showtype").val()+"&gene="+$("#gene").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {
                        var gene=$("#gene").val();//得到输入基因的值        
                        var myRatio_P;
                        $.each(gc_search_data_left_top, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象    
                             myRatio_P= parseFloat(n.ratio*100).toFixed(1);                                                         
                        });            
                         bar_option_left_top.yAxis.data[0]=gene;
                         bar_option_left_top.series[0].data[0] = myRatio_P;             
                         bar_option_left_top.series[1].data[0] = 100-myRatio_P;  
                         myChart_left_top.setOption(bar_option_left_top); 
                         
                        var Data_left_bottom = new Array(); 
                        var Celltype_left = new Array();var myPCdata_left_1 = new Array();var myPCdata_left_2 = new Array();
                        $.each(gc_search_data_left_bottom, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象 
                             var Celltype_ratio=(parseFloat(n.PCdata[1]));
                             var GeneExp_Celltype_ratio=(parseFloat(n.PCdata[2])*100);
                             var NOGeneExp_Celltype_ratio=100-GeneExp_Celltype_ratio;
                             var myPCdata_left_1_data=parseFloat((Celltype_ratio*GeneExp_Celltype_ratio).toFixed(2));//保留2位小数  
                             var myPCdata_left_2_data=parseFloat((Celltype_ratio*NOGeneExp_Celltype_ratio).toFixed(2));//保留2位小数
                             Data_left_bottom.push([n.PCdata[0],myPCdata_left_1_data,myPCdata_left_2_data,GeneExp_Celltype_ratio,NOGeneExp_Celltype_ratio,Celltype_ratio*100]);                          
                        });            
                         Data_left_bottom.sort(function(a, b) {  return a[0].localeCompare(b[0]);}).reverse();  // 按照第一列字母顺序升序排序    
                         // 提取第一列
                         Celltype_left = Data_left_bottom.map(function(row) {return row[0];});
                         myPCdata_left_1 = Data_left_bottom.map(function(row) {return row[1];});
                         myPCdata_left_2 = Data_left_bottom.map(function(row) {return row[2];});
                         myGeneExpCellRatio_left = Data_left_bottom.map(function(row) {return row[3];});
                         myNOGeneExpCellRatio_left = Data_left_bottom.map(function(row) {return row[4];});
                         myCelltype_ratio_left = Data_left_bottom.map(function(row) {return row[5];});
//                           Highchart_PolarBar_option_left_bottom.tooltip.pointFormat='<span style="fontSize:16px">'+myPCdata_left_1['{point.x}']+': <b>{point.y}</b><br/>';      
                           Highchart_PolarBar_option_left_bottom.xAxis.categories=Celltype_left;
                           Highchart_PolarBar_option_left_bottom.series[0].data = myPCdata_left_1;    
                           Highchart_PolarBar_option_left_bottom.series[1].data = myPCdata_left_2;                             
                           Highcharts.chart('container_left_bottom', Highchart_PolarBar_option_left_bottom);
                        
                        //右边-改
                        var Data_right_bottom = new Array(); 
                        var Celltype_right = new Array();var myPCdata_right_1 = new Array();var myPCdata_right_2 = new Array();
                        $.each(gc_search_data_right_bottom, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象 
                             var Celltype_ratio=(parseFloat(n.PCdata[1]));
                             var GeneExp_Celltype_ratio=(parseFloat(n.PCdata[2])*100);
                             var NOGeneExp_Celltype_ratio=100-GeneExp_Celltype_ratio;
                             var myPCdata_right_1_data=parseFloat((Celltype_ratio*GeneExp_Celltype_ratio).toFixed(2));//保留2位小数  
                             var myPCdata_right_2_data=parseFloat((Celltype_ratio*NOGeneExp_Celltype_ratio).toFixed(2));//保留2位小数
                             Data_right_bottom.push([n.PCdata[0],myPCdata_right_1_data,myPCdata_right_2_data,GeneExp_Celltype_ratio,NOGeneExp_Celltype_ratio,Celltype_ratio*100]);                          
                        });            
                         Data_right_bottom.sort(function(a, b) {  return a[0].localeCompare(b[0]);}).reverse();  // 按照第一列字母顺序升序排序    
                         // 提取第一列
                         Celltype_right = Data_right_bottom.map(function(row) {return row[0];});
                         myPCdata_right_1 = Data_right_bottom.map(function(row) {return row[1];});
                         myPCdata_right_2 = Data_right_bottom.map(function(row) {return row[2];});
                         myGeneExpCellRatio_right = Data_right_bottom.map(function(row) {return row[3];});
                         myNOGeneExpCellRatio_right = Data_right_bottom.map(function(row) {return row[4];});
                         myCelltype_ratio_right = Data_right_bottom.map(function(row) {return row[5];});
//                           Highchart_PolarBar_option_right_bottom.tooltip.pointFormat='<span style="fontSize:16px">'+myPCdata_right_1['{point.x}']+': <b>{point.y}</b><br/>';      
                           Highchart_PolarBar_option_right_bottom.xAxis.categories=Celltype_right;
                           Highchart_PolarBar_option_right_bottom.series[0].data = myPCdata_right_1;    
                           Highchart_PolarBar_option_right_bottom.series[1].data = myPCdata_right_2;                             
                           Highcharts.chart('container_right_bottom', Highchart_PolarBar_option_right_bottom);
                           
                        var myRatio_M;
                        $.each(gc_search_data_right_top, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象    
                             myRatio_M= parseFloat(n.ratio*100).toFixed(1);                                                         
                        });            
                         bar_option_right_top.yAxis.data[0]=gene;
                         bar_option_right_top.series[0].data[0] = myRatio_M;             
                         bar_option_right_top.series[1].data[0] = 100-myRatio_M;    
                         myChart_right_top.setOption(bar_option_right_top);  
                         
                        var Polar_angleAxis_right = new Array();var myPCdata_right_1 = new Array();var myPCdata_right_2 = new Array();
                        $.each(gc_search_data_right_bottom, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象 
                             Polar_angleAxis_right.push(n.PCdata[0]);
                             var Celltype_ratio=(parseFloat(n.PCdata[1])*100);
                             var GeneExp_Celltype_ratio=(parseFloat(n.PCdata[2]));
                             var myPCdata_right_1_data=Celltype_ratio*GeneExp_Celltype_ratio.toFixed(2);//保留2位小数  
                             var myPCdata_right_2_data=Celltype_ratio*(1-GeneExp_Celltype_ratio).toFixed(2);//保留2位小数 
                             myPCdata_right_1.push(myPCdata_right_1_data);//保留1位小数                             
                             myPCdata_right_2.push(myPCdata_right_2_data);//保留1位小数                             
                        });            
                         polar_option_right_bottom.angleAxis.data = Polar_angleAxis_right;
                         polar_option_right_bottom.series[0].data = myPCdata_right_1;             
                         polar_option_right_bottom.series[1].data = myPCdata_right_2;     
                         myChart_right_bottom.setOption(polar_option_right_bottom);                         

                        var mylrBardata_left = new Array();
                        var mylrBardata_right = new Array();
                        var mylrBardata_yAxis = new Array();
                        var mylrBardata_left_1 = new Array();
                        var mylrBardata_right_1 = new Array();
                        var mylrBardata_left_2 = new Array();
                        var mylrBardata_right_2 = new Array();
                        
                        $.each(gc_search_data_middle_left_1, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象   
                             mylrBardata_left.push([n.lrBardata[0],(-parseFloat(n.lrBardata[1])*100).toFixed(1),(parseFloat(n.lrBardata[2])*100).toFixed(1)]);
                        });  
                         //变换前
                         mylrBardata_left.sort(function(a, b) {  return a[0].localeCompare(b[0]);});  // 按照第一列字母顺序升序排序    
                         // 提取第一列
                         mylrBardata_yAxis = mylrBardata_left.map(function(row) {return row[0];});
                         mylrBardata_left_1 = mylrBardata_left.map(function(row) {return row[1];});
                         mylrBardata_right_1 = mylrBardata_left.map(function(row) {return row[2];});

                          $.each(gc_search_data_middle_left_2, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象    
                                mylrBardata_right.push([n.lrBardata[0],(-parseFloat(n.lrBardata[1])).toFixed(3),((parseFloat(n.lrBardata[2])).toFixed(3))]);
                          }); 
                         mylrBardata_right.sort(function(a, b) {  return a[0].localeCompare(b[0]);});
                         mylrBardata_left_2 = mylrBardata_right.map(function(row) {return row[1];});
                         mylrBardata_right_2 = mylrBardata_right.map(function(row) {return row[2];});
                        //中间的右边第二个图
                        var myScatterdata = new Array();
                        var myScatterdata_top = new Array();
                        $.each(gc_search_data_middle_right, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象    
//                            if(n.Scatterdata[0]===gene){name=n.Scatterdata[0];xidx=n.Scatterdata[1];yidx=n.Scatterdata[2]; return true;}//跳过本次循环}
                             var jsonObject = {
                                 "name": n.Scatterdata[0],
                                 "value": [parseFloat(n.Scatterdata[1]),parseFloat(n.Scatterdata[2])],
                                 "itemStyle": { color: 'rgba(175, 175, 175, 0.1)'}
//                                 "itemStyle": { color: '#EFEFEF' }
                                 };
                             if(n.Scatterdata[0]===gene){jsonObject.itemStyle.color='#a90000';myScatterdata_top.push(jsonObject);return true;}
                             myScatterdata.push(jsonObject);                                                             
                        });            

                        lrbar_option_middle_1.title[0].text ="{a|"+gene+" }Expression {b| Proportion}"; // 插入图片
                        lrbar_option_middle_1.yAxis[0].data = mylrBardata_yAxis;                     
                        lrbar_option_middle_1.series[0].data = mylrBardata_left_1;             
                        lrbar_option_middle_1.series[1].data = mylrBardata_right_1;    
//                      
                        scatter_option_middle.series[0].data = myScatterdata;
                        scatter_option_middle.series[1].data = myScatterdata_top;//使其位于顶层
                        lrbar_option_middle_2.title[0].text ="{a|"+gene+"} Expression {b|Mean}"; // 插入图片
                        lrbar_option_middle_2.yAxis[0].data = mylrBardata_yAxis;                     
                        lrbar_option_middle_2.series[0].data = mylrBardata_left_2;             
                        lrbar_option_middle_2.series[1].data = mylrBardata_right_2;                         
                        myChart_middle_left.setOption(lrbar_option_middle_1); 
                        myChart_middle_right.setOption(scatter_option_middle);
                        currentOption = lrbar_option_middle_1;
                        clearInterval(myInterval);
                        myInterval = setInterval(intervalTask, 2000);
                        var img=document.getElementById("myPlay");
                        img.src="myimg/pause.png";
                        // 获取具有 id 为 myPlay 的元素
                        var myPlayElement = document.getElementById("myPlay");
                        myPlayElement.style.display = "block";
                        clearInterval(myInterval);
                        myInterval = setInterval(intervalTask, 2000);
                        var img=document.getElementById("myPlay");
                        img.src="img/pause.png";
                        document.getElementById("myPlay").style.display = "block";
                        $("#start_tip").hide();
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $('.loader-mask1').fadeOut();
                   }
                };

                $("#dc_form").ajaxForm(submit_options);  
            });
</script>
</body>
</html>