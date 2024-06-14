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
                        <h1 style="margin-left:5%;"><strong>Cell Functional State</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                 Compare the differences in <font style="font-weight: bold;">18 Cellular functional states</font>, including G1/S, G2/M, M/G1, Angiogenesis, Apoptosis,Differentiation, DNA damage, DNA repair, EMT, Hypoxia, Inflammation, Invasion, Metastasis, Proliferation, Quiescence, and Stemness, between <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples
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
                            <h3>Gene:</h3>  
                            <select name="gene" id="showcs"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;">
                                    <option value="G1/S">G1/S</option>
                                    <option value="S">S</option>
                                    <option value="G2/M">G2/M</option>
                                    <option value="M">M</option>
                                    <option value="M/G1">M/G1</option>
                                    <option value="Angiogenesis">Angiogenesis</option>
                                    <option value="Apoptosis">Apoptosis</option>
                                    <option value="Differentiation">Differentiation</option>
                                    <option value="DNA damage">DNA damage</option>
                                    <option value="DNA repair">DNA repair</option>
                                    <option value="EMT">EMT</option>
                                    <option value="Hypoxia">Hypoxia</option>
                                    <option value="Inflammation">Inflammation</option>
                                    <option value="Invasion">Invasion</option>
                                    <option value="Metastasis">Metastasis</option>
                                    <option value="Proliferation">Proliferation</option>
                                    <option value="Quiescence">Quiescence</option>
                                    <option value="Stemness">Stemness</option>
                            </select>
                </div>
                <div class="col-lg-4">
                            <h3>Showlabel:</h3>  
                            <select disabled name="showtype" id="showtype"  onclick="showtypeList()"
                                style="margin-top: 5px;cursor: not-allowed;width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>                        
                            </select>
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;margin-top: 10%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
            </div>
            <input type="submit" id="refresh" style="display:none;">
            </form>
            </div>
</section>
        
      <section style="margin-top:120px;">
            <hr style="margin-bottom:50px;">
            <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Primary</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>All</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>Metastasis</span>
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
                    <div  id="container_left" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                    <div  id="container_middle" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4" style="padding-top:10px;padding-bottom: 10px;">
                    <div  id="container_right" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
            </div>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="js/plotly-2.26.0.min.js"></script>
<script src="echarts/echarts_cs.js"></script>     
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
               
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var submitted_options = {};
            $("#showtype").append("<option value='sr'>Celltype (SingleR)</option>");
            $("#mySubmit").click(function () {
                 $('#mySubmit').css('cursor', 'not-allowed');
                 $('.loader-mask1').fadeIn();
                 $("#start_tip").show();
                submit_options = {
                    url: "cs_radar?dataset=" + $("#dataset").val() + "&siteset=" + $("#siteset").val() + "&showtype=" + $("#showtype").val()+"&showcs=" + $("#showcs").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {
                        $('#showtype').prop('disabled', true);
                        $('#showtype').css('cursor', 'not-allowed');
                        $('#mySubmit').prop('disabled', true);
                        var myAVG_data_left = new Array();
                        var myAVG_data_right = new Array();
                        var maxl = 0;
                        var maxr = 0;
                        var minl = 0;
                        var minr = 0;
                        //左边
                        for (var i = 0; i < cs_radar_data_left.length; i++) {
                            var obj = cs_radar_data_left[i];
                            var averageValue = obj.average_value;
                            if (maxl < averageValue) {
                                maxl = averageValue;
                            }
                            ;
                            if (minl > averageValue) {
                                minl = averageValue;
                            }
                            ;
                            if (typeof averageValue !== 'undefined') {
                                myAVG_data_left.push(averageValue);
                            }
                        }
                        ;
                        radar_chart_left.series[0].data[0].value = myAVG_data_left;
                        for (var k = 0; k < radar_chart_left.radar.indicator.length; k++) {
                            radar_chart_left.radar.indicator[k].max = maxl + 0.03;
                            radar_chart_left.radar.indicator[k].min = minl;
                        }
                        ;
                        radar_chart_left.title.subtext = "Dataset:  " + $("#dataset").val();
                        myChart_left.setOption(radar_chart_left);
                        //右边 
                        for (var i = 0; i < cs_radar_data_right.length; i++) {
                            var obj = cs_radar_data_right[i];
                            var averageValue = obj.average_value;
                            if (maxr < averageValue) {
                                maxr = averageValue;
                            }
                            ;
                            if (minr > averageValue) {
                                minr = averageValue;
                            }
                            ;
                            if (typeof averageValue !== 'undefined') {
                                myAVG_data_right.push(averageValue);
                            }
                            ;
                        }
                        ;
                        radar_chart_right.series[0].data[0].value = myAVG_data_right;
                        for (var j = 0; j < radar_chart_right.radar.indicator.length; j++) {
                            radar_chart_right.radar.indicator[j].max = maxr + 0.03;
                            radar_chart_right.radar.indicator[j].min = minr;
                        }
                        ;
                        radar_chart_right.title.subtext = "Dataset:  " + $("#dataset").val();
                        myChart_right.setOption(radar_chart_right);
                        //最后是最重量级的中间
                        var middle_xvalue_primary = [];
                        var middle_yvalue_primary = [];
                        for (var i = 0; i < cs_radar_data_middle_primary.length; i++) {
                            middle_xvalue_primary.push(cs_radar_data_middle_primary[i].name);
                        }
                        for (var i = 0; i < cs_radar_data_middle_primary.length; i++) {
                            middle_yvalue_primary.push(cs_radar_data_middle_primary[i].value);
                        }
                        var middle_xvalue_metastasis = [];
                        var middle_yvalue_metastasis = [];
                        for (var i = 0; i < cs_radar_data_middle_metastasis.length; i++) {
                            middle_xvalue_metastasis.push(cs_radar_data_middle_metastasis[i].name);
                        }
                        for (var i = 0; i < cs_radar_data_middle_metastasis.length; i++) {
                            middle_yvalue_metastasis.push(cs_radar_data_middle_metastasis[i].value);
                        }
                        var data = [{
                                type: 'violin',
                                x: middle_xvalue_primary,
                                y: middle_yvalue_primary,
                                legendgroup: 'Primary',
                                scalegroup: 'Primary',
                                name: 'Primary',
                                side: 'negative',
                                box: {
                                    visible: true
                                },
                                line: {
                                    color: 'blue',
                                    width: 1
                                },
                                meanline: {
                                    visible: true
                                }
                            }, {
                                type: 'violin',
                                x: middle_xvalue_metastasis,
                                y: middle_yvalue_metastasis,
                                legendgroup: 'Metastasis',
                                scalegroup: 'Metastasis',
                                name: 'Metastasis',
                                side: 'positive',
                                box: {
                                    visible: true
                                },
                                line: {
                                    color: 'green',
                                    width: 1
                                },
                                meanline: {
                                    visible: true
                                }
                            }];
                        var layout = {
                            title: {
                                text: "Diff celluar functional states in each celltype",
                                font: {
                                    size: 20,
                                    weight: 'bold',
                                    color:'#000000'
                                 }
                            },
                            yaxis: {
                                zeroline: false
                            },
                            violingap: 0,
                            violingroupgap: 0,
                            violinmode: "overlay"
                        };
                        // 使用 Plotly.newPlot 方法绘制图表
                        Plotly.newPlot('container_middle', data, layout);
                        $('#mySubmit').css('cursor', 'default');
                        $('#mySubmit').prop('disabled', false);
                        $("#start_tip").hide();
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $('.loader-mask1').fadeOut();
                    }
                };
                $("#dc_form").ajaxForm(submit_options);
            });

             $("#refresh").click(function () {
                $("#start_tip").show();
                $('#showtype').css('cursor', 'not-allowed');
                $('#showcs').css('cursor', 'not-allowed');
                var options_middle_change = {
                    url: "cs_radar?dataset=" + $("#dataset").val() + "&siteset=" + $("#siteset").val() + "&showtype=" + $("#showtype").val()+"&showcs=" + $("#showcs").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {  
                        $('#showtype').prop('disabled', true);
                        $('#showcs').prop('disabled', true);
                        var middle_xvalue_primary = [];
                        var middle_yvalue_primary = [];
                        for (var i = 0; i < cs_radar_data_middle_primary.length; i++) {
                            middle_xvalue_primary.push(cs_radar_data_middle_primary[i].name);
                        }
                        for (var i = 0; i < cs_radar_data_middle_primary.length; i++) {
                            middle_yvalue_primary.push(cs_radar_data_middle_primary[i].value);
                        }
                        var middle_xvalue_metastasis = [];
                        var middle_yvalue_metastasis = [];
                        for (var i = 0; i < cs_radar_data_middle_metastasis.length; i++) {
                            middle_xvalue_metastasis.push(cs_radar_data_middle_metastasis[i].name);
                        }
                        for (var i = 0; i < cs_radar_data_middle_metastasis.length; i++) {
                            middle_yvalue_metastasis.push(cs_radar_data_middle_metastasis[i].value);
                        }
                        var data = [{
                                type: 'violin',
                                x: middle_xvalue_primary,
                                y: middle_yvalue_primary,
                                legendgroup: 'primary',
                                scalegroup: 'primary',
                                name: 'primary',
                                side: 'negative',
                                box: {
                                    visible: true
                                },
                                line: {
                                    color: 'blue',
                                    width: 1
                                },
                                meanline: {
                                    visible: true
                                }
                            }, {
                                type: 'violin',
                                x: middle_xvalue_metastasis,
                                y: middle_yvalue_metastasis,
                                legendgroup: 'metastasis',
                                scalegroup: 'metastasis',
                                name: 'metastasis',
                                side: 'positive',
                                box: {
                                    visible: true
                                },
                                line: {
                                    color: 'green',
                                    width: 1
                                },
                                meanline: {
                                    visible: true
                                }
                            }]


                        var layout = {
                            title: {
                                text: "Diff celluar functional states in each celltype",
                                font: {
                                    size: 20
                                 }
                            },
                            yaxis: {
                                zeroline: false
                            },
                            violingap: 0,
                            violingroupgap: 0,
                            violinmode: "overlay"
                        };

                        // 使用 Plotly.newPlot 方法绘制图表
                        Plotly.newPlot('container_middle', data, layout);
                        $("#start_tip").hide();
                        $('#showtype').css('cursor', 'default');
                        $('#showtype').prop('disabled', false);
                        $('#showcs').css('cursor', 'default');
                        $('#showcs').prop('disabled', false);
                    }
                };
                $("#dc_form").ajaxForm(options_middle_change);
            });
                 
      $("#showtype").on("change",function () {
             $("#refresh").click();
     });
      $("#showcs").on("change",function () {
             $("#refresh").click();
     });
</script>
</body>
</html>