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
                            <a href="tools.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">scRNA-seq Data Tools</a>
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
                            Functional characterization of differentially expressed genes between different cell types in different <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) sites and <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) cancers
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
                            <input type="text"  AutoComplete="off" name="siteset" id="siteset" value="Liver" maxlength="20"  onclick="siteList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest2" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Dataset:</h3>  
                            <input type="text"  AutoComplete="off" name="dataset" id="dataset" value="GSE164522" maxlength="20"  onclick="datasetList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest3" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
            </div>
            <div class="row" style="margin-top:-30px;">    
                <div class="col-lg-4">
                            <h3>Gene Enrichment:</h3>  
                            <select name="showfc" id="showfc"
                                style="width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>  
                            <option value="GO">GO</option>
                            <option value="KEGG">KEGG</option>
                            </select>
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
                         <span>Functions activated in Primary</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Functions activated in each cell type in M</span>
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
            <div class="row cart_box" style="margin-left:10px;margin-right: 10px;">
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
<script src="https://cdn.bootcdn.net/ajax/libs/highcharts/10.0.0/highcharts.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/highcharts/10.0.0/modules/exporting.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/highcharts/10.0.0/es-modules/Extensions/Oldie/Oldie.js"></script>
<script src="echarts/echarts_fc.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/search.js"></script>
<script type="text/javascript">
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

           function middle_refresh() {
              $("#mySubmit").click();
            };
     
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                if($("#showtype").val() === null){
                $("#showtype").append("<option value='sr'>Celltype (SingleR)</option>"); //
                }
                submit_options = {
                    url: "fc?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showtype="+$("#showtype").val()+"&showfc="+$("#showfc").val(),
                    dataType: "script",
                    type: "post",
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
                        var max_right =0;
                        var fc_right_funway = fc_right[0].fun_way.split(';');
                        var fc_right_pval = fc_right[0].pval.split(';');
                        for(var i=0;i<fc_left_pval.length;i++){
                            if(parseFloat(max_right) < parseFloat(fc_right_pval[i]))
                            {
                                max_right = fc_right_pval[i];
                            }
                        }
                        max_right =Math.ceil(parseFloat(max_right))+3;
                        fc_left_option.yAxis.data = fc_left_funway;
                        fc_left_option.series[0].data = fc_left_pval;
                        fc_left_option.xAxis.max = max_left;
                        fc_right_option.yAxis.data = fc_right_funway;
                        fc_right_option.series[0].data = fc_right_pval;
                        fc_right_option.xAxis.max = max_right;
                        myChart_left.setOption(fc_left_option);
                        myChart_right.setOption(fc_right_option);
                        //中间
                        var mydata = [];
                        for(var i=0;i<fc_middle.length;i++){
                            var data = [];
                            var mid_funway= fc_middle[i].fun_way.split(';');
                            var mid_pval= fc_middle[i].pval.split(';');
                            for(var k=0;k<mid_funway.length;k++){
                                var innerjsonobj = {};
                                innerjsonobj.name = mid_funway[k];
                                innerjsonobj.value = parseFloat(mid_pval[k]);
                                data.push(innerjsonobj);
                            }
                            var jsonobj = {};
                            jsonobj.name = fc_middle[i].name;
                            jsonobj.data = data;
                            mydata.push(jsonobj);
                        }
                        Highcharts.chart('container_middle', {
                                chart: {
                                type: 'packedbubble',
                                        height: '100%'
                                },
                                tooltip: {
                                useHTML: true,
                                pointFormat: '<b>{point.name}</b>  P-value(-log10) : {point.y} ',
                                  style: {
                                            fontSize: '15px' // 设置tooltip中文本的字体大小
                                          }
                                },
                                title:{
                                    text:""
                                },
                                toolbox: {
                                    enabled: true
                                },        
                                plotOptions: {
                                packedbubble: {
                                minSize: '45%',
                                        maxSize: '160%',
                                        zMin: 0,
                                        zMax: 1000,
                                        layoutAlgorithm: {
                                        gravitationalConstant: 0.2,
                                                splitSeries: true,
                                                seriesInteraction: false,
                                                dragBetweenSeries: false,
                                                parentNodeLimit: true
                                        },
                                        dataLabels: {
                                        enabled: true,
                                        format: '{point.name}',
                                        allowOverlap: false,
                                        filter: {
                                                property: 'y',
                                                operator: '>',
                                                value: 5
                                                },
                                        style: {
                                                color: 'black',
                                                textOutline: 'none',
                                                fontWeight: 'normal',
                                                fontSize: fontSize(10)
                                                }
                                        }
                                }
                                },
                                series: mydata
                                });
                                $("#start_tip").hide();
                                $('#showtype').prop('disabled', false);
                                $('#showtype').css('cursor', 'default');
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

</script>
</body>
</html>