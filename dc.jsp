<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
.echart_container:hover {
  /*box-shadow: 0px 20px 40px 0px rgba(100, 149, 237, 0.3);*/
  border: 2px solid #6495ED;
}
.cart_box {
  border-radius: 24px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 20px 30px 0px rgba(197, 196, 201, 0.25);
  /*transition: all 0.1s ease;  增加过渡时间以获得更柔和效果 */
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
	<!-- start header -->
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
                        <h1 style="margin-left:5%;"><strong>Dataset Characteristics</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>

        <!--下面填内容-->
<section>
    <div style="padding-top:20px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                            This function shows the difference in the number of <font style="font-weight: bold">Counts</font>, the number of <font style="font-weight: bold">Genes</font> and the percent of <font style="font-weight: bold">Mitochondrial</font> genes detected between the <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples, which can reflect the quality of the current data to a certain extent
                </h5> 
            <hr>
    </div>

</section>
 <section>
        <div style="padding-top:0px;margin-left: 10%;margin-right: 10%;">
            <form  method="get" role="form" id="dc_form">
            <div class="row" style="margin-bottom:40px;">
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
        
      <section style="margin-top:50px;">
            <hr style="margin-bottom:50px;">
            <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>nCount</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>nFeature</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>MT-Percent</span>
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
                <div class="col-lg-4" style="padding-top:10px;">
                <div class="echart_container" id="container_left_1" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                <div class="echart_container" id="container_left_2" style="background-color:white;height: 700px;margin: 10px 0 10px 0;border-radius: 12px;display: none;"></div>    
                </div>
                <div class="col-lg-4" style="padding-top:10px;">
                <div class="echart_container" id="container_middle_1" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                <div class="echart_container" id="container_middle_2" style="background-color:white;height: 700px;border-radius: 12px;display: none;"></div>      
                </div>
                <div class="col-lg-4" style="padding-top:10px;">
                <div class="echart_container" id="container_right_1" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                <div class="echart_container" id="container_right_2" style="background-color:white;height: 700px;border-radius: 12px;display: none;"></div>   
                </div>
                <div class="col-lg-12" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_second" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
            </div>
            </div>
    </section>
  <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="https://code.hcharts.cn/highcharts/highcharts.js"></script>
<script src="https://code.hcharts.cn/highcharts/highcharts-more.js"></script>
<script src="https://code.hcharts.cn/highcharts/modules/exporting.js"></script>
<script src="echarts/echarts_dc.js"></script>     
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/search.js"></script>
<script type="text/javascript">

 $("#mySubmit").click(function () {
                $("#start_tip").show();
                $('.loader-mask1').fadeIn();
                var options = {
                    url: "dc",
                    target: "null",
                    type: "post",
                    dataType: "script",
                    success: function () {
                        var myChart_left = echarts.init(document.getElementById('container_left_1'));
                        var myChart_middle = echarts.init(document.getElementById('container_middle_1'));
                        var myChart_right = echarts.init(document.getElementById('container_right_1'));
                        var myChart_second = echarts.init(document.getElementById('container_second'));
                        $("#container_left_1").css("display", "block");
                        $("#container_left_2").css("display", "none");
                        $("#container_middle_1").css("display", "block");
                        $("#container_middle_2").css("display", "none");
                        $("#container_right_1").css("display", "block");
                        $("#container_right_2").css("display", "none");                                                                     
                        ////////////////////////////////////////执行首次载入后的显示图像////////////////////////////////////////                                    
                        var selectedIdx = 0;
                        // 把后台传回的container_second json数据解析
                        var myDatasetlist = new Array();
                        var myCellCount = new Array();
                        $.each(dc_search_second_CellCount, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            myDatasetlist.push(n.dataset);
                            myCellCount.push(n.cellcount);
                            Box_option_nCount.series[0].data[i].itemStyle.borderColor = 'black';
                            Box_option_nCount.series[0].data[i].itemStyle.borderWidth = 1;
                            Box_option_nFeature.series[0].data[i].itemStyle.borderColor = 'black';
                            Box_option_nFeature.series[0].data[i].itemStyle.borderWidth = 1;
                            Box_option_PMT.series[0].data[i].itemStyle.borderColor = 'black';
                            Box_option_PMT.series[0].data[i].itemStyle.borderWidth = 1;
                            if (n.dataset === $("#dataset").val()) {
                                selectedIdx = i;
                                Box_option_nCount.series[0].data[i].itemStyle.borderColor = '#a90000';
                                Box_option_nCount.series[0].data[i].itemStyle.borderWidth = 2;
                                Box_option_nFeature.series[0].data[i].itemStyle.borderColor = '#a90000';
                                Box_option_nFeature.series[0].data[i].itemStyle.borderWidth = 2;
                                Box_option_PMT.series[0].data[i].itemStyle.borderColor = '#a90000';
                                Box_option_PMT.series[0].data[i].itemStyle.borderWidth = 2;
                            }
                        });
                        //初始坐标位置，不要那么复杂了，selectedIdx+1除以总数得到百分比，然后分别加十减十就行
                        var percent_index = (selectedIdx+1)/dc_search_second_CellCount.length;
                        console.log("percent_index",percent_index);
                        var showstart = percent_index*100-10;
                        var showend = percent_index*100+10;
                        if(showend > 90){
                            showstart =80;
                            showend =100;
                        }
                        if(showstart < 10){
                            showstart =0;
                            showend =20;
                        }
                        console.log("showstart",showstart);
                        console.log("showend",showend);
                        Baroption_CellCount.xAxis.data = myDatasetlist;
                        Baroption_CellCount.series[0].data = myCellCount;
                        myChart_second.setOption(Baroption_CellCount);
                        $.each(dc_search_left_nCount, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            Box_option_nCount.series[0].data[i].name = n.dataset;
                            Box_option_nCount.series[0].data[i].value = n.ncount.split(';');
                        });
                        Box_option_nCount.xAxis.data = myDatasetlist;
                        Box_option_nCount.dataZoom[0].start = showstart;
                        Box_option_nCount.dataZoom[0].end = showend;
                        myBox_option_nCount = Box_option_nCount;
                        myChart_left.setOption(myBox_option_nCount);

                        //                                   把后台传回的dc_search_middle_nFeature json数据解析
                        $.each(dc_search_middle_nFeature, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            Box_option_nFeature.series[0].data[i].name = n.dataset;
                            Box_option_nFeature.series[0].data[i].value = n.nfeature.split(';');
                        });
                        Box_option_nFeature.xAxis.data = myDatasetlist;
                        Box_option_nFeature.dataZoom[0].start = showstart;
                        Box_option_nFeature.dataZoom[0].end = showend;
                        myChart_middle.setOption(Box_option_nFeature);

                        //                                   把后台传回的dc_search_right_PMT json数据解析
                        $.each(dc_search_right_Pmt, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                            Box_option_PMT.series[0].data[i].name = n.dataset;
                            Box_option_PMT.series[0].data[i].value = n.pmt.split(';');
                        });
                        Box_option_PMT.xAxis.data = myDatasetlist;
                        Box_option_PMT.dataZoom[0].start = showstart;
                        Box_option_PMT.dataZoom[0].end = showend;
                        myChart_right.setOption(Box_option_PMT);
                        $("#start_tip").hide();

                        myChart_left.getZr().off('click'); //防止触发两次点击事件
                        myChart_left.getZr().on('click', function (params) {//为柱体添加函数
                            let op = myChart_left.getOption();//获取当前echart图的配置选项
                            let pointInPixel = [params.offsetX, params.offsetY];
                            if (myChart_left.containPixel('grid', pointInPixel)) {
                                const xIndex = myChart_left.convertFromPixel({seriesIndex: 0}, pointInPixel)[0];//当前点击的 x轴 的名称
                                var dataset = op.xAxis[0].data[xIndex];  // 当前点击的 x轴 的名称
                                //                                              var name = op.series[0].data[xIndex];  // 当前点击的 x轴 的数值                                        
                                $("#container_left_1").css("display", "none");// 隐藏元素，不占位置
                                $("#container_left_2").css("display", "none");// 隐藏元素，不占位置
                                $("#container_left").addClass("page_preloader");
                                var url = "dc_showBeeswarm";
                                $.post(url, {showtype: 'ncount_rna', dataset: dataset},
                                        function (response) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(response);//把后台传回的json数据解析 
                                            var step = 0;
                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                if (typeof n.Primary !== 'undefined') {
                                                    BeeswarmOption_nCount_data1[i] = parseFloat(n.Primary);
                                                    step++;
                                                }
                                                if (typeof n.Metastasis !== 'undefined') {
                                                    BeeswarmOption_nCount_data2[i - step] = parseFloat(n.Metastasis);
                                                }
                                            });
                                            BeeswarmOption_nCount.title.text = dataset;
                                            BeeswarmOption_nCount.series[0].data = [myBoxdata(BeeswarmOption_nCount_data1), myBoxdata(BeeswarmOption_nCount_data2)];
                                            BeeswarmOption_nCount.series[1].data = Beeswarm(BeeswarmOption_nCount_data1, -0.25, 0.25).concat(Beeswarm(BeeswarmOption_nCount_data2, 0.75, 1.25));
                                            Highcharts.chart('container_left_2', BeeswarmOption_nCount);
                                            $("#container_left").removeClass("page_preloader");
                                            $("#container_left_2").css("display", "block");// 显示元素
                                        }
                                );
                            }
                        });

                        myChart_middle.getZr().off('click'); //防止触发两次点击事件
                        myChart_middle.getZr().on('click', function (params) {//为柱体添加函数
                            let op = myChart_middle.getOption();//获取当前echart图的配置选项
                            let pointInPixel = [params.offsetX, params.offsetY];
                            if (myChart_middle.containPixel('grid', pointInPixel)) {
                                const xIndex = myChart_middle.convertFromPixel({seriesIndex: 0}, pointInPixel)[0];//当前点击的 x轴 的名称
                                var dataset = op.xAxis[0].data[xIndex];  // 当前点击的 x轴 的名称

                                $("#container_middle_1").css("display", "none");// 隐藏元素，不占位置
                                $("#container_middle_2").css("display", "none");// 隐藏元素，不占位置
                                $("#container_middle").addClass("page_preloader");
                                //                                              alert(dataset);
                                var url = "dc_showBeeswarm";
                                $.post(url, {showtype: 'nfeature_rna', dataset: dataset},
                                        function (response) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(response);//把后台传回的json数据解析 
                                            var step = 0;
                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                if (typeof n.Primary !== 'undefined') {
                                                    BeeswarmOption_nFeature_data1[i] = parseFloat(n.Primary);
                                                    step++;
                                                }
                                                if (typeof n.Metastasis !== 'undefined') {
                                                    BeeswarmOption_nFeature_data2[i - step] = parseFloat(n.Metastasis);
                                                }
                                            });
                                            BeeswarmOption_nFeature.title.text = dataset;
                                            BeeswarmOption_nFeature.series[0].data = [myBoxdata(BeeswarmOption_nFeature_data1), myBoxdata(BeeswarmOption_nFeature_data2)];
                                            BeeswarmOption_nFeature.series[1].data = Beeswarm(BeeswarmOption_nFeature_data1, -0.25, 0.25).concat(Beeswarm(BeeswarmOption_nFeature_data2, 0.75, 1.25));
                                            Highcharts.chart('container_middle_2', BeeswarmOption_nFeature);
                                            $("#container_middle").removeClass("page_preloader");
                                            $("#container_middle_2").css("display", "block");// 显示元素                                                              
                                        }
                                );
                            }
                        });

                        myChart_right.getZr().off('click'); //防止触发两次点击事件
                        myChart_right.getZr().on('click', function (params) {//为柱体添加函数
                            let op = myChart_right.getOption();//获取当前echart图的配置选项
                            let pointInPixel = [params.offsetX, params.offsetY];
                            if (myChart_right.containPixel('grid', pointInPixel)) {
                                const xIndex = myChart_right.convertFromPixel({seriesIndex: 0}, pointInPixel)[0];//当前点击的 x轴 的名称
                                var dataset = op.xAxis[0].data[xIndex];  // 当前点击的 x轴 的名称

                                $("#container_right_1").css("display", "none");// 隐藏元素，不占位置
                                $("#container_right_2").css("display", "none");// 隐藏元素，不占位置
                                $("#container_right").addClass("page_preloader");
                                //                                              alert(dataset);
                                var url = "dc_showBeeswarm";
                                $.post(url, {showtype: 'percent_mt', dataset: dataset},
                                        function (response) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(response);//把后台传回的json数据解析 
                                            var step = 0;
                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                if (typeof n.Primary !== 'undefined') {
                                                    BeeswarmOption_PMT_data1[i] = parseFloat(n.Primary);
                                                    step++;
                                                }
                                                if (typeof n.Metastasis !== 'undefined') {
                                                    BeeswarmOption_PMT_data2[i - step] = parseFloat(n.Metastasis);
                                                }
                                            });
                                            BeeswarmOption_PMT.title.text = dataset;
                                            BeeswarmOption_PMT.series[0].data = [myBoxdata(BeeswarmOption_PMT_data1), myBoxdata(BeeswarmOption_PMT_data2)];
                                            BeeswarmOption_PMT.series[1].data = Beeswarm(BeeswarmOption_PMT_data1, -0.25, 0.25).concat(Beeswarm(BeeswarmOption_PMT_data2, 0.75, 1.25));
                                            Highcharts.chart('container_right_2', BeeswarmOption_PMT);
                                            $("#container_right").removeClass("page_preloader");
                                            $("#container_right_2").css("display", "block");// 显示元素                                                              
                                        }
                                );
                            }
                        });
                        myChart_second.getZr().off('click'); //防止触发两次点击事件
                        myChart_second.getZr().on('click', function (params) {//为柱体添加函数
                            let op = myChart_second.getOption();//获取当前echart图的配置选项
                            let pointInPixel = [params.offsetX, params.offsetY];
                            if (myChart_second.containPixel('grid', pointInPixel)) {
                                const xIndex = myChart_second.convertFromPixel({seriesIndex: 0}, pointInPixel)[0];//当前点击的 x轴 的名称
                                var dataset = op.xAxis[0].data[xIndex];  // 当前点击的 x轴 的名称
                                //                                              var name = op.series[0].data[xIndex];  // 当前点击的 x轴 的数值
                                //                                              myChart_left.setOption(BeeswarmOption_CellCount);
                                var url = "dc_showCancerMS";
                                $.post(url, {dataset: dataset},
                                        function (response) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(response);//把后台传回的json数据解析 
                                            var step = 0;
                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                if (typeof n.Cancer !== 'undefined') {
                                                    $('#cancer').val(n.Cancer);
                                                }
                                                if (typeof n.MS !== 'undefined') {
                                                    $('#siteset').val(n.MS);
                                                }
                                            });
                                        }
                                );
                                $('#dataset').val(dataset);
                                $("#mySubmit").click();
                            }
                        });
                        $('.loader-mask1').fadeOut();
                    }
                };
                $("#dc_form").ajaxForm(options);
            });     
            
            
</script>
</body>
</html>