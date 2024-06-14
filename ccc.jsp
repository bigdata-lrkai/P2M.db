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
/*.echart_container:hover {
  box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3);
  border: 2px solid #6495ED;
}*/

.ht_btn::before {
    background: red;  
}
button[disabled] {
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
                        <h1 style="margin-left:5%;"><strong>Cell Cluster and Celltype</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                           Compare the difference of cell interaction by describing the <font style="font-weight:bold;">Cell interaction</font> relationship in different states of <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>)
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
                            <!--<div style="height:50px;position: relative;">-->
                            <input type="text"  AutoComplete="off" name="cancer" id="cancer" value="Testicular tumor" maxlength="20"  onclick="cancerList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest1" style="width: 92%; overflow: scroll; font-size: 22px;height: 150px;display: none;position: absolute;background-color: #fbfbfd;border-radius: 12px;z-index: 99;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Metastatic site:</h3>    
                            <input type="text"  AutoComplete="off" name="siteset" id="siteset" value="Lymph nodes" maxlength="20"  onclick="siteList()"
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
                <div class="col-lg-4" style="height:50px;">
                            <h3>Showlabel:</h3>  
                            <select disabled name="showtype" id="showtype"  onclick="showtypeList()"
                                style="cursor: not-allowed;width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>                        
                            </select>
                </div>
                <div class="col-lg-4">
                    <input type="submit" id="refresh" style="display:none;">
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;margin-top: 10%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
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
                         <span>CellCluster (Primary)</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>CellCluster (Label)</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>CellCluster (Metastasis)</span>
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
<script src="echarts/echarts_ccc.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/search.js"></script>
<script type="text/javascript">
 function showtypeList() {
  if (!(document.getElementById("showtype").options.length > 1)) {
    var t = $("#dataset").val();
    if (null !== t && "" !== t && -1 !== t) {
      $.post("showtypeList", { dataset: t }, function(t) {
        var e = JSON.parse(t),
          s = [];
        $.each(e, function(t, e) {
          s = e.showtype.toString().split(";");
        });

        for (var a = ["article", "singler", "sctype"],
             i = ["celltype_article", "celltype_singleR", "celltype_ScType"],
             l = ["Celltype (Article)", "Celltype (SingleR)", "Celltype (ScType)"],
             c = 0; c < a.length; c++) {
          s.includes(a[c]) ?
            $("#showtype").append("<option value='" + i[c].trim() + "'>" + l[c].trim() + "</option>") :
            $("#showtype").append("<optgroup label='" + l[c].trim() + "'></optgroup>");
        }
        $("#showtype").append("<option value='sample_type'>Sample</option>");
      });
    }
  }
}

        var mysplitNumber = 5;
        var myxAxis_max;
        $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                $("#showtype").empty();//清空select选项
                $("#showtype").append("<option value='seurat_clusters'>Cluster</option>"); //  
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                $('#mySubmit').css('cursor', 'not-allowed');
                var options_left = {
                    url: "ccc",
                    dataType: "script",
                    type: "post",
                    success: function () {
                        $("#showtype").val("seurat_clusters");
                        $('#mySubmit').prop('disabled', true);
                        var myChart_left = echarts.init(document.getElementById('container_left'));
                        var myCelltypelist_left = new Array();
                        var xAxis_max = 0;
                        $.each(dc_search_data_left, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (n.value[2] !== "Primary") {
                                n.value[2] = "Unselected";
                            }
                            if (myCelltypelist_left.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_left.push(n.value[2]);
                            }
                            if (n.value[0] > xAxis_max) {
                                xAxis_max = n.value[0];
                            }
                        });
                        myxAxis_max = Math.ceil(parseFloat(xAxis_max) * 1.5);
                        CellType_option_left.visualMap.categories = myCelltypelist_left.sort();
                        CellType_option_left.series[0].data = dc_search_data_left;
                        CellType_option_left.title.text = $("#cancer").val();
                        CellType_option_left.title.subtext = "Dataset: " + $("#dataset").val();
                        CellType_option_left.xAxis.max = myxAxis_max;
                        CellType_option_left.xAxis.splitNumber = mysplitNumber;
                        myChart_left.setOption(CellType_option_left);
                        ccc_middle();
                    }
                };
                    $("#dc_form").ajaxForm(options_left);
            });
            
            function ccc_middle(){
                $.ajax({
                    url: "ccc_middle?dataset="+ $('#dataset').val(),
                    dataType: "script",
                    type: "post",
                    success: function () {
                        var myChart_middle = echarts.init(document.getElementById('container_middle'));
                        var myCelltypelist_middle = new Array();
                        $.each(dc_search_data_middle, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (myCelltypelist_middle.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_middle.push(n.value[2]);
                            }
                        });
                        CellType_option_middle.visualMap.text = [$("#showtype").val()];
                        CellType_option_middle.visualMap.categories = myCelltypelist_middle.sort(function (a, b) {
                            return a - b;
                        });//按照数值大小排序
                        CellType_option_middle.series[0].data = dc_search_data_middle;
                        CellType_option_middle.title.text = $("#cancer").val();
                        CellType_option_middle.title.subtext = "Dataset: " + $("#dataset").val();
                        CellType_option_middle.xAxis.max = myxAxis_max;
                        CellType_option_middle.xAxis.splitNumber = mysplitNumber;
                        myChart_middle.setOption(CellType_option_middle);
                        ccc_right();
                    }
                });
            }
            
            function ccc_right(){
                $.ajax({
                    url: "ccc_right?dataset="+ $('#dataset').val(),
                    dataType: "script",
                    type: "post",
                    success: function () {
                        var myChart_right = echarts.init(document.getElementById('container_right'));
                        //                           把后台传回的json数据解析
                        var myCelltypelist_right = new Array();
                        $.each(dc_search_data_right, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (n.value[2] !== "Metastasis") {//删除重复项
                                n.value[2] = "Unselected";
                            }
                            if (myCelltypelist_right.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_right.push(n.value[2]);
                            }
                        });
                        CellType_option_right.visualMap.categories = myCelltypelist_right.sort();
                        CellType_option_right.series[0].data = dc_search_data_right;
                        CellType_option_right.title.text = $("#cancer").val();
                        CellType_option_right.title.subtext = "Dataset: " + $("#dataset").val();
                        CellType_option_right.xAxis.max = myxAxis_max;
                        CellType_option_right.xAxis.splitNumber = mysplitNumber;
                        myChart_right.setOption(CellType_option_right);
                        $("#start_tip").hide();
                        $('#mySubmit').css('cursor', 'default');
                        $('#mySubmit').prop('disabled', false);
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $('.loader-mask1').fadeOut();
                    }
                });
            }
            
       $("#refresh").click(function () {
           $("#start_tip").show();
           $('#showtype').prop('disabled', true);
           $('#showtype').css('cursor', 'not-allowed');
           var options = {
                    url: "ccc_search_middle?dataset=" + $("#dataset").val()+"&showtype="+ $("#showtype").val(),
                    target: "null",
                    dataType: "script",
                    type: "post",
                    success: function () {
                        var myChart_middle = echarts.init(document.getElementById('container_middle'));
                        var myCelltypelist_middle = new Array();
                        var xAxis_max = 0;
                        $.each(dc_search_data_middle_change, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (myCelltypelist_middle.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_middle.push(n.value[2]);
                            }
                            if (n.value[0] > xAxis_max) {
                                xAxis_max = n.value[0];
                            }
                        });
                        CellType_option_middle.visualMap.text = [$("#showtype").val()];
                        CellType_option_middle.visualMap.categories = myCelltypelist_middle.sort(function (a, b) {
                            return a - b;
                        });//按照数值大小排序
                        CellType_option_middle.series[0].data = dc_search_data_middle_change;
                        CellType_option_middle.title.text = $("#cancer").val();
                        CellType_option_middle.title.subtext = "Dataset: " + $("#dataset").val();
                        CellType_option_middle.xAxis.max = Math.ceil((parseFloat(xAxis_max) / 5) + 1) * 5;
                        myChart_middle.setOption(CellType_option_middle);
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $("#start_tip").hide();
                    }
                 };
                 $("#dc_form").ajaxForm(options);
        });
     
     $("#showtype").on("change",function () {
         $("#refresh").click();
     });
</script>
</body>
</html>