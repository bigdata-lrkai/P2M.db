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
                        <h1 style="margin-left:5%;"><strong>Cell Interaction Characteristics</strong></h1>
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
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>CellInteraction Score (Primary)</span>
                     </h5>
                               
                </div>
                <div class="col-lg-4">
                     <h5 class="detail-ccc-title">
                         <span>CellInteraction</span>
                     </h5>     
                </div>
                  <div class="col-lg-4">
                        <h5 class="detail-ccc-title">
                            <span>CellInteraction Score (Metastasis)</span>
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
                <div class="echart_container" id="container_middle" style="background-color:white;height: 680px;border-radius: 12px;"></div>
                <div style="margin-top:5px;display: flex;justify-content: center;">
                <button class="btn" onclick="showLinksAll()" style="width: 150px;background-color:#edda99;">All</button>
                <button class="btn" onclick="showLinksPrimary()" style="margin-left:10px;margin-right:10px;width: 150px;background-color:#edda99;">Primary</button>
                <button class="btn" onclick="showLinksMetastasis()" style="width: 150px;background-color:#edda99;">Metastasis</button>
                </div>
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
<script src="echarts/echarts_ci.js"></script>     
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
            var myChart_middle = echarts.init(document.getElementById('container_middle'));
            var submitted_options = {};
            $("#mySubmit").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                if($("#showtype").val() === null){
                $("#showtype").append("<option value='sr'>Celltype (SingleR)</option>"); //
                }
                submit_options = {
                    url: "ci_search_heatmap_circular?dataset=" + $("#dataset").val()+"&siteset="+$("#siteset").val()+"&showtype="+$("#showtype").val(),
                    dataType: "script",
                    type: "post",
                    success: function () {
                        var myCellnamelist_left = new Array();
                        var myHeatmapdata_left = new Array();
                        var max_left=0;
                        $.each(ci_search_data_left, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象                         
                            if (typeof n.cellname !== 'undefined') {
                                myCellnamelist_left.push(n.cellname);
                            }                         
                            if (typeof n.index_value !== 'undefined') {
                                myHeatmapdata_left.push(n.index_value);
                                if(n.index_value[2]>max_left){max_left=n.index_value[2];}
                            }
                        });
                        max_left=max_left+0.01;
                        heatmap_option_left.xAxis.data = myCellnamelist_left;
                        heatmap_option_left.yAxis.data = myCellnamelist_left;
                        heatmap_option_left.visualMap.max=max_left;
                        heatmap_option_left.visualMap.range=[0,max_left];
                        heatmap_option_left.series[0].data = myHeatmapdata_left;
                        myChart_left.setOption(heatmap_option_left);                    

                        var myCellnamelist_right = new Array();
                        var myHeatmapdata_right = new Array();
                        var max_right=0;

                        $.each(ci_search_data_right, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象                         
                            if (typeof n.cellname !== 'undefined') {
                                myCellnamelist_right.push(n.cellname);
                            }                         
                            if (typeof n.index_value !== 'undefined') {
                                myHeatmapdata_right.push(n.index_value);
                                if(n.index_value[2]>max_right){max_right=n.index_value[2];}
                            }
                        });
                         max_right=max_right+0.01;
                         heatmap_option_right.xAxis.data = myCellnamelist_right;
                         heatmap_option_right.yAxis.data = myCellnamelist_right;
                         heatmap_option_right.visualMap.max=max_right;
                         heatmap_option_right.visualMap.range=[0,max_right];
                         heatmap_option_right.series[0].data = myHeatmapdata_right;  
                         myChart_right.setOption(heatmap_option_right);  
                        var myCellnamelist_middle = new Array();
                        var mySTALL_middle = new Array();
                        linksAttr =[]; linksAttr1 =[]; linksAttr2 =[];
                        circular_option_middle.series[0].data=[];
                        circular_option_middle.series[0].categories=[];
                        var cell_idx=0;
                        $.each(ci_search_data_middle, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象    
                            var ST=n.STV[1]+"--"+n.STV[2];
                            let obj_edge = {
                                      source: n.STV[1],
                                      target: n.STV[2],
                                      value: parseFloat(n.STV[3]),
                                      curveness: 0.2,
                                      category: n.STV[0]
                                    };   
                            if(n.STV[0]==="Primary"){
//                                 mySTP_middle.push(ST);                                 
                                 obj_edge.color='green';
//                                 if (n.STV[1]!==n.STV[2] && mySTP_middle.indexOf(ST2) !== -1) {//重复项,
//                                     obj_edge.curveness= 0.8;
//                                 }
                                 linksAttr1.push(obj_edge);                        
                            }
                            if(n.STV[0]==="Metastasis"){
//                                 mySTM_middle.push(ST);  
                                 obj_edge.color='red';
//                                 if (n.STV[1]!==n.STV[2] && mySTM_middle.indexOf(ST2) !== -1) {//重复项,
//                                     obj_edge.curveness= 0.8;
////                                     alert(obj_edge.curveness);
//                                 }
                                 linksAttr2.push(obj_edge);                        
                            }                            
                            if (mySTALL_middle.indexOf(ST) === -1) {//删除重复项,
                                mySTALL_middle.push(ST);  
                                 linksAttr.push(obj_edge);
                             }
                            if (mySTALL_middle.indexOf(ST) !== -1) {//重复项,
                                 obj_edge.curveness=0.8;
                                 linksAttr.push(obj_edge);
                             }  
                             //设置节点属性
                            if (myCellnamelist_middle.indexOf(n.STV[1]) === -1) {//删除重复项,
                                myCellnamelist_middle.push(n.STV[1]);
                                let obj_node1 = {
                                      name: n.STV[1],
                                      category:cell_idx
                                    };                                
                                let obj_node2 = {
                                      name: n.STV[1]
                                    };
                                circular_option_middle.series[0].data.push(obj_node1);
                                circular_option_middle.series[0].categories.push(obj_node2);
                                cell_idx++;
                            }
                        });
                        
                        circular_option_middle.legend.data = myCellnamelist_middle;
                        currentLinks=linksAttr;
                        circular_option_middle.series[0].links=currentLinks.map(function(currentLinks) {
                                                                 return {
                                                                            source: currentLinks.source,
                                                                            target: currentLinks.target,
                                                                            value: currentLinks.value,
                                                                            lineStyle: {
//                                                                                normal: {
                                                                                    width: Math.log(currentLinks.value+1) * 2, // 根据value值设置线的粗细
                                                                                    color:currentLinks.color, // 设置点的颜色为数据中的Color字段的值
                                                                                    curveness: currentLinks.curveness
//                                                                                }
                                                                            }
                                                                        };
                                                                    }),
                        
                        myChart_middle.setOption(circular_option_middle);                                                        
                        mylinksAttr =linksAttr;
                        mylinksAttr1=linksAttr1;
                        mylinksAttr2=linksAttr2;     
                        $('#showtype').prop('disabled', false);
                        $('#showtype').css('cursor', 'default');
                        $("#start_tip").hide();
                        $('.loader-mask1').fadeOut();
                   }
                };
                $("#dc_form").ajaxForm(submit_options);      
            });
            
            var mouseDown_left = false; // 用于记录鼠标是否按下的状态                        
                        var InitRange_left=[0,3];// 用于记录初始范围
                        var selectedRange_left = null; // 用于记录选中范围
                        myChart_left.getZr().on('mousedown', function () {
                            mouseDown_left = true;
                        });

                        myChart_left.getZr().on('mouseup', function () {
                            if (mouseDown_left) {
                                var option_left = myChart_left.getOption();
                                var visualMap_left = option_left.visualMap[0];

                                // 获取滑动条当前选中范围
                                selectedRange_left = visualMap_left.range;
                                if(InitRange_left[0]!==selectedRange_left[0]||InitRange_left[1]!==selectedRange_left[1]){
                                    InitRange_left=selectedRange_left;

                                    mylinksAttr1=[];
                                    for (let i = 0; i < linksAttr1.length; i++) {
                                         if(linksAttr1[i].value>=selectedRange_left[0]&&linksAttr1[i].value<=selectedRange_left[1]){
                                             mylinksAttr1.push(linksAttr1[i]);
                                         }
                                     }  
                                     
                                     mylinksAttr=[];
                                     mylinksAttr=mylinksAttr1.concat(mylinksAttr2);
                                     currentLinks = mylinksAttr;
                                     updateCircularChart();
                                }
                                mouseDown_left = false; // 重置鼠标按下的状态
                            }
                        });
                        
// 右侧滑动条与关系图的联动

                        // 监听 visualMap 的 'finished' 事件【不添加延迟】
                        var mouseDown_right = false; // 用于记录鼠标是否按下的状态                        
                        var InitRange_right=[0,3];// 用于记录初始范围
                        var selectedRange_right = null; // 用于记录选中范围
                        myChart_right.getZr().on('mousedown', function () {
                            mouseDown_right = true;
                        });

                        myChart_right.getZr().on('mouseup', function () {
                            if (mouseDown_right) {
                                var option_right = myChart_right.getOption();
                                var visualMap_right = option_right.visualMap[0];

                                // 获取滑动条当前选中范围
                                selectedRange_right = visualMap_right.range;
                                if(InitRange_right[0]!==selectedRange_right[0]||InitRange_right[1]!==selectedRange_right[1]){
                                    InitRange_right=selectedRange_right;

                                    mylinksAttr2=[];
                                    for (let i = 0; i < linksAttr2.length; i++) {
                                         if(linksAttr2[i].value>=selectedRange_right[0]&&linksAttr2[i].value<=selectedRange_right[1]){
                                             mylinksAttr2.push(linksAttr2[i]);
                                         }
                                     }             
                                     mylinksAttr=[];
                                     mylinksAttr=mylinksAttr1.concat(mylinksAttr2);
                                     
                                     currentLinks = mylinksAttr;
                                     updateCircularChart();
                                }
                                mouseDown_right = false; // 重置鼠标按下的状态
                            }
                        });
                        
        // 用户选择展示 linksAttr 的连接
        function showLinksAll() {
            if(mylinksAttr.length===0){mylinksAttr=linksAttr;}
            currentLinks = mylinksAttr;
            updateCircularChart();
        }        

        // 用户选择展示 linksAttr1 的连接
        function showLinksPrimary() {
            if(mylinksAttr1.length===0){mylinksAttr1=linksAttr1;}
            currentLinks = mylinksAttr1;
            updateCircularChart();
        }

        // 用户选择展示 linksAttr2 的连接
        function showLinksMetastasis() {
            if(mylinksAttr2.length===0){mylinksAttr2=linksAttr2;}
            currentLinks = mylinksAttr2;
            updateCircularChart();
        }

        // 动态更新图表数据
        function updateCircularChart() {
            circular_option_middle.series[0].links=currentLinks.map(function(currentLinks) {
                    return {
                        source: currentLinks.source,
                        target: currentLinks.target,
                        value: currentLinks.value,
                        lineStyle: {
//                            normal: {
                                width: Math.log(currentLinks.value+1) * 2, // 根据value值设置线的粗细
                                color: currentLinks.color, // 设置点的颜色为数据中的Color字段的值
                                curveness: currentLinks.curveness
//                            }
                        }
                    };
                });
             myChart_middle.setOption(circular_option_middle); 
        }   
     
</script>
</body>
</html>