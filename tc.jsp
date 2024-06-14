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
                            <a href="index.html" style="text-decoration: none;font-size:16px;font-weight: bold;">Home</a>
                                <span>></span>
                            <a href="tools.html" style="text-decoration: none;font-size:16px;font-weight: bold;">scRNA-seq Data Tools</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Cell Trajectory Analysis</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                 Comparison of cell differentiation characteristics in different states of <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) by <font style="font-weight:bold;">Cell trajectory analysis</font>
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
                            <input type="text"  AutoComplete="off" name="cancer" id="cancer" value="Testicular Tumor" maxlength="20"  onclick="cancerList()"
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
                            <input type="text"  AutoComplete="off" name="gene" id="gene_r" value="" maxlength="20" onclick="geneList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest4" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4">
                            <h3>Showlabel:</h3>  
                            <select disabled name="showtype" id="showtype"  onclick="showtypeList()"
                                style="margin-top: 5px;cursor: not-allowed;width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>                        
                            </select>
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;margin-top: 12%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
            </div>
            <input type="submit" id="refresh" style="display:none;">
            </form>
             <h5>Click the button below to refresh the gene trajectory map on the right</h5>
            <button id="gene_refresh" onclick="right_refresh()" class="btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;width: 70px;height: 30px;font-size: 12px;"> 
                 Refresh
            </button>
            </div>
</section>
        
      <section style="margin-top:120px;">
            <hr style="margin-bottom:50px;">
             <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Cellular Pseudotime</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>Cluster</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>Gene</span>
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
<script src="echarts/echarts_tc.js"></script>     
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
                       $("#showtype").append("<option value='seurat_clusters'>Cluster</option>");
                     });
                   }
                 }
               }
               
             function geneList() {
                $('#gene_r').val('');
                var siteset = $("#siteset").val();
                var dataset = $("#dataset").val();//得到第二个下拉列表的值
                var url = "tcgenelist";
                if (dataset !== null && "" !== dataset && -1 !== dataset) {
                    //通过ajax传入后台，把cancer数据传到后端
                    $.post(url, {dataset: dataset,siteset: siteset},
                            function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                var res = JSON.parse(data);//把后台传回的json数据解析
                                var myGenes = new Array();
                                $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                     myGenes[i] = n.gene;
                                });                                           
                                $("#gene_r").suggest_list(gene_r, {source: myGenes, hot_list: myGenes, attachObject: '#suggest4'});
                            }
                    );
                }
            }

           $("#refresh").click(function (){
                $("#start_tip").show();
                var typeoptions = {
                    url: "tc_search_middle?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {  
                        $('#showtype').prop('disabled', true);
                        $('#showtype').css('cursor', 'not-allowed');
                        var myCelltypelist_middle = new Array();
                        var xAxis_max = 0;
                        $.each(tc_search_data_middle_change, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (myCelltypelist_middle.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_middle.push(n.value[2]);
                            }
                            if (n.value[0] > xAxis_max) {
                                xAxis_max = n.value[0];
                            }
                        });
                        trajectory_option_middle.visualMap.text = [$("#showtype").val()];
                        trajectory_option_middle.visualMap.categories = myCelltypelist_middle.sort(function (a, b) {
                            return a - b;
                        });//按照数值大小排序
                        trajectory_option_middle.series[0].data = tc_search_data_middle_change;
                        trajectory_option_middle.title.text = $("#cancer").val();
                        trajectory_option_middle.title.subtext = "Dataset: " + $("#dataset").val();
                        trajectory_option_middle.xAxis.max = Math.ceil((parseFloat(xAxis_max) / 5) + 1) * 5;
                        myChart_middle.setOption(trajectory_option_middle);
                        $("#start_tip").hide();
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                    }
                };
                    $("#dc_form").ajaxForm(typeoptions);
            });
            
            var tc_search_data_right_refresh;
            function right_refresh(){
                 $("#start_tip").show();
                 $('#gene_r').prop('disabled', true);
                 $('#gene_r').css('cursor', 'not-allowed');
                 $('#gene_refresh').css('cursor', 'not-allowed');
                 $('#mySubmit').css('cursor', 'not-allowed');
                 $.ajax({
                    url: "tc_right_refresh?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&gene="+$("#gene_r").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {    
                       $('#gene_refresh').prop('disabled', true);
                       var rownumber=tc_search_data_right_rownumber[0].rownumber-1;
                       var right_max=0;
                       var xAxis_max=15;
                       var mysplitNumber = 5;
                        for (var i = 0; i < tc_search_data_right_refresh.length; i++) {
                            var splitvalues = tc_search_data_right_refresh[i].value[2].split(';');
                            trajectory_option_right.series[0].data[i].value[2] = splitvalues[rownumber];
                             if(splitvalues[rownumber] > right_max){
                                right_max = splitvalues[rownumber];
                            }
                        }
                        trajectory_option_right.title.text = $("#cancer").val();
                        trajectory_option_right.visualMap.max = right_max;
                        trajectory_option_right.visualMap.start = right_max;
                        trajectory_option_right.title.subtext = "Dataset: " + $("#dataset").val();
                        trajectory_option_right.xAxis.max = xAxis_max;
                        trajectory_option_right.xAxis.splitNumber = mysplitNumber;
                        myChart_right.setOption(trajectory_option_right);
                        $("#start_tip").hide();
                        $('#mySubmit').css('cursor', 'default');
                        $('#gene_refresh').prop('disabled', false);
                        $('#gene_refresh').css('cursor', 'default');
                        $('#gene_r').prop('disabled', false);
                        $('#gene_r').css('cursor', 'default');
                    }
                });
            }
            
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                $("#showtype").empty();
                $("#showtype").append("<option value='sample_type'>Sample</option>"); 
                $('#mySubmit').css('cursor', 'not-allowed');
                submit_options = {
                    url: "tc_search_scatter_line?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    dataType:"script",
                    type: "post",
                    success: function () {
                        $('#mySubmit').prop('disabled', true);
                        var TC_scatter = new Array();
                        var leftxAxis_max = 15;
                        var left_max = 0;
                        $.each(tc_search_data_left_scatter, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象                         
                                 var value=[parseFloat(n.mydata[1]),parseFloat(n.mydata[2]),n.mydata[3]];
                                 let myscatter = {
                                  name:n.mydata[0],
                                  value:value
                                }; 
                                 TC_scatter.push(myscatter);     
                        });
                         for(var i = 0;i<TC_scatter.length;i++){
                            if(parseFloat(TC_scatter[i].value[2])>left_max){
                                left_max = parseFloat(TC_scatter[i].value[2]);
                            }
                        }
                        var TC_keypoint_lines = new Array();
                        $.each(tc_search_data_left_lines, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象                         
                                 var start=[parseFloat(n.keyidx[0]),parseFloat(n.keyidx[1])];
                                 var end=[parseFloat(n.keyidx[2]),parseFloat(n.keyidx[3])];
                                 let keypoint_line = {
                                  coords:[start,end]
                                }; 
                                 TC_keypoint_lines.push(keypoint_line);                                                                  
                        });
                        trajectory_option_left.title.subtext = 'Dataset: '+$("#dataset").val();
                        trajectory_option_left.xAxis.max = leftxAxis_max;
                        trajectory_option_left.visualMap.max = left_max;
                        trajectory_option_left.series[0].data=TC_scatter;
                        trajectory_option_left.series[1].data=TC_keypoint_lines;
                        myChart_left.setOption(trajectory_option_left);    
                        tc_middle();

                   }
                 };
            $("#dc_form").ajaxForm(submit_options);
            });
            
            var xAxis_max = 15;   
            var mysplitNumber = 5;
            
            function tc_middle(){
                $.ajax({
                    url: "tc_middle?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    dataType: "script",
                    type: "post",
                    success: function () {
                        var myCelltypelist_middle = new Array();
                        $.each(tc_search_data_middle, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            if (myCelltypelist_middle.indexOf(n.value[2]) === -1) {//删除重复项
                                myCelltypelist_middle.push(n.value  [2]);
                            }
                        });
                        trajectory_option_middle.visualMap.text = [$("#showtype").val()];
                        trajectory_option_middle.visualMap.categories = myCelltypelist_middle.sort(function (a, b) {
                            return a - b;
                        });//按照数值大小排序
                        trajectory_option_middle.series[0].data = tc_search_data_middle;
                        trajectory_option_middle.title.subtext = "Dataset: " + $("#dataset").val();
                        trajectory_option_middle.xAxis.max = xAxis_max;
                        trajectory_option_middle.xAxis.splitNumber = mysplitNumber;
                        myChart_middle.setOption(trajectory_option_middle);
                        tc_right();
                    }
                });
            }
            
            function tc_right(){
                $.ajax({
                    url: "tc_right?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val(),
                    dataType: "script",
                    type: "post",
                    success: function () {
                        tc_search_data_right_refresh = tc_search_data_right;
                        var right_max=0;
                        var genevalue = document.getElementById("gene_r");
                        genevalue.value = tc_search_data_right_genename[0].genename;
                        var tc_right_first = [];
                        for (var i = 0; i < tc_search_data_right.length; i++) {
                            var newObj = {}; // 创建新对象
                            newObj.name = tc_search_data_right[i].name;
                            newObj.value = [tc_search_data_right[i].value[0], tc_search_data_right[i].value[1]];
                            var splitvalues = tc_search_data_right[i].value[2].split(';');
                            newObj.value[2] = splitvalues[0];
                            if (newObj.value[2] > right_max) {
                                right_max = newObj.value[2];
                            }
                            tc_right_first.push(newObj); // 将新对象添加到tc_right_first数组中
                        }
                        trajectory_option_right.series[0].data = tc_right_first;
                        trajectory_option_right.visualMap.max = right_max;
                        trajectory_option_right.title.subtext = "Dataset: " + $("#dataset").val();
                        trajectory_option_right.xAxis.max = xAxis_max;
                        trajectory_option_right.xAxis.splitNumber = mysplitNumber;
                        myChart_right.setOption(trajectory_option_right);
                        $('#mySubmit').css('cursor', 'default');
                        $('#mySubmit').prop('disabled', false);
                        $("#start_tip").hide();
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $('#gene_r').prop('disabled', false);
                        $('#gene_r').css('cursor', 'default');
                        $('.loader-mask1').fadeOut();
                    }
                });
            }
            
      $("#showtype").on("change",function () {
             $("#refresh").click();
     });
     
</script>
</body>
</html>