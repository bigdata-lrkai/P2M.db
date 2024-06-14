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
                             This function counts significantly <font style="font-weight:bold;">Differentially Expressed Genes</font> between <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples, including analysis of primary vs. metastasis as a whole and for each cell type individually
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
            <div class="row"  style="margin-top:-30px;">    
                <div class="col-lg-4">
                            <h3>Showlabel:</h3>  
                            <select disabled name="showtype" id="showtype"  onclick="showtypeList()" onchange="middle_refresh()"
                                style="cursor: not-allowed;width: 100%; height: 50px;text-indent:20px;font-size: 2.0rem;font-weight: 400;line-height: 1.5; color: #495057;background-color:#f6f7f9;border-radius: 4px;border: none;outline: none;"/>                        
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
                <div class="col-lg-3">
                     <h5 class="detail-ccc-title">
                         <span>Over Expressed Genes in Primary</span>
                     </h5>
                               
                </div>
                <div class="col-lg-6">
                     <h5 class="detail-ccc-title">
                         <span>Over Expressed Genes in P&M</span>
                     </h5>     
                </div>
                  <div class="col-lg-3">
                        <h5 class="detail-ccc-title">
                            <span>Over Expressed Genes in Metastasis</span>
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
<script src="echarts/echarts_de.js"></script>     
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
                 $("#start_tip").show();
                 $('#showtype').prop('disabled', true);
                 $('#showtype').css('cursor', 'not-allowed');
                 $.ajax({
                    url: "de?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showtype="+$("#showtype").val(),
                    type: "post",
                    dataType: "script",
                    success: function () {
                        var middle_tissuename = []; 
                        for(var i=0;i<de_middle.length;i++){
                            middle_tissuename.push(de_middle[i].tissuename);
                        }
                        de_middle_option.xAxis[0].data=middle_tissuename;
                        de_middle_option.xAxis[1].max=middle_tissuename.length;
                        //中级的数据处理
                        var middle_data_positive = [];//上面的数据
                        var middle_data_negative = [];//下面的数据
                        var mid_max =0;//总体最大值
                        var mid_min =0;//总体最小值
                        var each_max=[];//各个最大
                        var each_min=[];//各个最小
                        var laber_data=[];//存放显示标签的y值
                        for(var i=0;i<de_middle.length;i++){
                            var tempgenename = de_middle[i].genename.split(';');
                            var tempx = de_middle[i].x.split(';');
                            var tempy = de_middle[i].y.split(';');
                            //排序找出要标签的值
                            var data = tempy.slice();
                            data.sort(function(a, b) {
                                return a - b;
                            });
                            var temp=[];
                            for(var x=0;x<data.length;x++){
                                if(x ===0 || x===data.length-1){
                                    temp.push(parseFloat(data[x]));
                                 }
                            }
                            laber_data.push(temp);
                            //模块结束
                            var temp_each_max =0;
                            var temp_each_min =0;
                            for(var k=0;k<tempgenename.length;k++){
                                //
                                if(parseFloat(tempy[k])>0){
                                var temparray = [];
                                temparray[0] = parseFloat(tempx[k]);
                                temparray[1] = parseFloat(tempy[k]);
                                temparray[2] = tempgenename[k];
                                temparray[3] = de_middle[i].tissuename;
                                temparray[4] = i;
                                middle_data_positive.push(temparray);
                                    if(mid_max < parseFloat(tempy[k])){
                                        mid_max = parseFloat(tempy[k]);
                                    }
                                    if(temp_each_max < parseFloat(tempy[k])){
                                       temp_each_max = parseFloat(tempy[k]);
                                    }
                                }
                                //
                                if(parseFloat(tempy[k])<0){
                                var temparray = [];
                                temparray[0] = parseFloat(tempx[k]);
                                temparray[1] = parseFloat(tempy[k]);
                                temparray[2] = tempgenename[k];
                                temparray[3] = de_middle[i].tissuename;
                                temparray[4] = i;
                                middle_data_negative.push(temparray);
                                    if(mid_min > parseFloat(tempy[k])){
                                        mid_min = parseFloat(tempy[k]);
                                    }
                                    if(temp_each_min > parseFloat(tempy[k])){
                                       temp_each_min = parseFloat(tempy[k]);
                                    }
                                }
                                //
                                if(k+1 === tempgenename.length){
                                    each_max.push(temp_each_max-0.3);
                                    each_min.push(temp_each_min+0.3);
                                }
                            }
                        }
                        de_middle_option.series[0].data = middle_data_positive;
                        de_middle_option.series[1].data = middle_data_negative;
                        de_middle_option.yAxis.max = 10;
                        de_middle_option.yAxis.min = -10;   
                        var tempxname1 =[];
                        var tempxname2 =[];
                        for(var i=0;i<middle_tissuename.length;i++){
                            tempxname1[i] = de_middle_option.yAxis.max*0.05;
                            tempxname2[i] = de_middle_option.yAxis.max*(-0.05);
                        }
                        de_middle_option.series[2].data = tempxname1;
                        de_middle_option.series[3].data = tempxname2;
                        //控制灰色背景高度
                        de_middle_option.series[4].data = each_max;
                        de_middle_option.series[5].data = each_min;
                        //控制显示的标签
                        laber_y = laber_data;
                        myChart_middle.setOption(de_middle_option);
                        $("#start_tip").hide();
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');

                    }
                 });
            };
     
            var myChart_left = echarts.init(document.getElementById('container_left'));
            var myChart_right = echarts.init(document.getElementById('container_right'));
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn(); 
                $("#start_tip").show();
                $("#showtype").empty();
                $("#showtype").append("<option value='sr'>Celltype (SingleR)</option>"); 
                $('#showtype').prop('disabled', false);
                $('#showtype').css('cursor', 'default');
                var submit_options = {
                    url: "de?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showtype="+$("#showtype").val(),
                    target: "null",
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
                        //控制带颜色的小方块的名字
                        var middle_tissuename = [];
                        for(var i=0;i<de_middle.length;i++){
                            middle_tissuename.push(de_middle[i].tissuename);
                        }
                        de_middle_option.xAxis[0].data=middle_tissuename;
                        de_middle_option.xAxis[1].max=middle_tissuename.length;
                        //中级的数据处理
                        var middle_data_positive = [];//上面的数据
                        var middle_data_negative = [];//下面的数据
                        var mid_max =0;//总体最大值
                        var mid_min =0;//总体最小值
                        var each_max=[];//各个最大
                        var each_min=[];//各个最小
                        var laber_data=[];//存放显示标签的y值
                        for(var i=0;i<de_middle.length;i++){
                            var tempgenename = de_middle[i].genename.split(';');
                            var tempx = de_middle[i].x.split(';');
                            var tempy = de_middle[i].y.split(';');
                            //排序找出要标签的值
                            var data = tempy.slice();
                            data.sort(function(a, b) {
                                return a - b;
                            });
                            var temp=[];
                            for(var x=0;x<data.length;x++){
                                if(x ===0 && data[x] < 0){
                                    temp.push(parseFloat(data[x]));
                                 }
                                 if(x=== data.length-1 && data[x] > 0){
                                    temp.push(parseFloat(data[x]));
                                 }  
                            }
                            laber_data.push(temp);
                            //模块结束
                            var temp_each_max =0;
                            var temp_each_min =0;
                            for(var k=0;k<tempgenename.length;k++){
                                //
                                if(parseFloat(tempy[k])>0){
                                var temparray = [];
                                temparray[0] = parseFloat(tempx[k]);
                                temparray[1] = parseFloat(tempy[k]);
                                temparray[2] = tempgenename[k];
                                temparray[3] = de_middle[i].tissuename;
                                temparray[4] = i;
                                middle_data_positive.push(temparray);
                                    if(mid_max < parseFloat(tempy[k])){
                                        mid_max = parseFloat(tempy[k]);
                                    }
                                    if(temp_each_max < parseFloat(tempy[k])){
                                       temp_each_max = parseFloat(tempy[k]);
                                    }
                                }
                                //
                                if(parseFloat(tempy[k])<0){
                                var temparray = [];
                                temparray[0] = parseFloat(tempx[k]);
                                temparray[1] = parseFloat(tempy[k]);
                                temparray[2] = tempgenename[k];
                                temparray[3] = de_middle[i].tissuename;
                                temparray[4] = i;
                                middle_data_negative.push(temparray);
                                    if(mid_min > parseFloat(tempy[k])){
                                        mid_min = parseFloat(tempy[k]);
                                    }
                                    if(temp_each_min > parseFloat(tempy[k])){
                                       temp_each_min = parseFloat(tempy[k]);
                                    }
                                }
                                //
                                if(k+1 === tempgenename.length){
                                    each_max.push(temp_each_max-0.3);
                                    each_min.push(temp_each_min+0.3);
                                }
                            }
                        }
                        //
                        de_middle_option.series[0].data = middle_data_positive;
                        de_middle_option.series[1].data = middle_data_negative;
                        de_middle_option.yAxis.max = 10;
                        de_middle_option.yAxis.min = -10;   
//                        de_middle_option.yAxis.max = Math.ceil(mid_max)+1;
//                        de_middle_option.yAxis.min = Math.ceil(mid_min)-1;      
                        //控制带颜色的小方块的高度
                        var tempxname1 =[];
                        var tempxname2 =[];
                        for(var i=0;i<middle_tissuename.length;i++){
                            tempxname1[i] = de_middle_option.yAxis.max*0.05;
                            tempxname2[i] = de_middle_option.yAxis.max*(-0.05);
                        }
                        de_middle_option.series[2].data = tempxname1;
                        de_middle_option.series[3].data = tempxname2;
                        //控制灰色背景高度
                        de_middle_option.series[4].data = each_max;
                        de_middle_option.series[5].data = each_min;
                        //控制显示的标签
                        laber_y = laber_data;
                        myChart_middle.setOption(de_middle_option);
                        $("#start_tip").hide();
                        setTimeout(function() {
                        $('.loader-mask1').fadeOut();
                      }, 500);
                   }
                };
                     $("#dc_form").ajaxForm(submit_options);    
            });
</script>
</body>
</html>