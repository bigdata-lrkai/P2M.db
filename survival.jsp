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
                        <h1 style="margin-left:5%;"><strong>Survival Analysis</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
<section>
    <div style="padding-top:30px;margin-left: 10%;margin-right: 10%;">
                 <h5 align="left" style="color:#01345F;font-weight: 300;margin-bottom:15px;font-size:25px">
                               Comparing the effects of different genes on the Survival Status of <font style="font-weight: bold">Primary(</font><font style="color:red;font-weight: bold">P</font>) and <font style="font-weight: bold;">Metastatic(</font><font style="font-weight: bold;color:red;">M</font>) samples
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
                            <input type="text"  AutoComplete="off" name="siteset" id="siteset" value="Peritoneum" maxlength="20"  onclick="siteList()"
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
            <div class="row" style="margin-top:-30px;">
                <div class="col-lg-4">
                            <h3>Gene:</h3>  
                            <input type="text"  AutoComplete="off" name="gene" id="gene" value="MFGE8" maxlength="20"  onclick="geneList()"
                             style="width: 100%;height: 50px;font-size: 2.0rem;font-weight: 400;color:black;line-height: 1.5;margin-top: 5px;text-indent:20px;background-color:#f6f7f9;
                             border: none;border-radius: 4px;outline: none;"/>
                            <div id="suggest4" style="width: 92%; overflow: auto; font-size: 22px; height: 150px;display: none;position: absolute;z-index: 99;background-color: #fbfbfd;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-4">
                </div>
                <div class="col-lg-4">
                    <button id="mySubmit1" class="ht_btn" style="background-color:#306998;text-decoration: none;  border-radius: 12px;margin-left: 73%;margin-top: 10%;"> 
                        Submit
                    </button>
                    <div id="start_tip" style="position: absolute;margin-left: 76%;height: 10px;display: none;"><h5 style="color: red;">Loading...</h5></div>
                </div>
            <div>
            </form>
            </div>
</section>
        
      <section style="margin-top:120px;">
            <hr style="margin-bottom:50px;">
           <div class="row" style="margin-left: 20px;margin-right: 20px;">
                <div class="col-lg-6">
                     <h5 class="detail-ccc-title">
                         <span>Primary</span>
                     </h5>
                               
                </div>

                  <div class="col-lg-6">
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
                <div class="col-lg-6" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_left" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
                <div class="col-lg-6" style="padding-top:10px;padding-bottom: 10px;">
                <div class="echart_container" id="container_right" style="background-color:white;height: 700px;border-radius: 12px;"></div>
                </div>
            </div>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script type="text/javascript" src="js/j.suggest.js"></script>
<script src="js/pdfobject.js"></script>
<script>
     function cancerList() {//如果第一个下拉列表的值改变则调用此方法
                            $('#cancer').val('');
                            $('#siteset').val('');
                            $('#dataset').val('');
                            $('#gene').val('');
                            var url = "surcancerlist";
                            $.post(url, {},
                                    function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                        var res = JSON.parse(data);//把后台传回的json数据解析
                                        var myCancers = new Array();
                                        $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                            myCancers[i] = n.cancer;
                                        });
                                        myCancers = myCancers.sort();
                                        $("#cancer").suggest_list(cancer, {source: myCancers, hot_list: myCancers, attachObject: '#suggest1'});
                                        //gene是要重新写入数据的下拉框之上的文本框id;source是全部的列表数据，hot_list是热点的列子数据，这里设置为与source一样的；attachObject是下拉框id
                                    }
                            );
                        }

            function siteList() {//如果第一个下拉列表的值改变则调用此方法
                            $('#siteset').val('');
                            $('#dataset').val('');
                            $('#gene').val('');
                            var cancer = $("#cancer").val();//得到第一个下拉列表的值;  
                            var url = "sursitelist";
                            if (cancer !== null && "" !== cancer && -1 !== cancer) {
                                //通过ajax传入后台，把cancer数据传到后端
                                $.post(url, {cancer: cancer},
                                        function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(data);//把后台传回的json数据解析

                                            var Sitesets = new Array();

                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                Sitesets = Sitesets.concat(n.site.toString().split(";"));
                                            });

                                            var mySitesets = new Array();
                                            Sitesets.forEach((item) => {
                                                // 空数组newList2 不包含item为false ,取反为true 执行数组添加操作
                                                // 如果数组包含了 item为true 取反为false 不执行数组添加操作
                                                if (mySitesets.indexOf(item.trim()) === -1) {
                                                    mySitesets.push(item.trim());
                                                }
                                            })
                                            mySitesets = mySitesets.sort();
                                            $("#siteset").suggest_list(siteset, {source: mySitesets, hot_list: mySitesets, attachObject: '#suggest2'});

                                            //gene是要重新写入数据的下拉框之上的文本框id;source是全部的列表数据，hot_list是热点的列子数据，这里设置为与source一样的；attachObject是下拉框id
                                        }
                                );
                            }
                        }

            function datasetList() {//如果第一个下拉列表的值改变则调用此方法
                            $('#dataset').val('');
                            $('#gene').val('');
                            var cancer = $("#cancer").val();//得到第一个下拉列表的值
                            var site = $("#siteset").val();//得到第二个下拉列表的值
                            var url = "surdatasetlist";
                            if (cancer !== null && "" !== cancer && -1 !== cancer) {
                                //通过ajax传入后台，把cancer数据传到后端
                                $.post(url, {cancer: cancer, site: site},
                                        function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                            var res = JSON.parse(data);//把后台传回的json数据解析
                                            var myDatasets = new Array();
                                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                                myDatasets[i] = n.dataset;
                                            });
                                            $("#dataset").suggest_list(dataset, {source: myDatasets, hot_list: myDatasets, attachObject: '#suggest3'});
                                        }
                                );
                            }
                        }

             function geneList() {//如果第一个下拉列表的值改变则调用此方法
                            $('#gene').val('');
                             var dataset = $("#dataset").val();//得到第二个下拉列表的值
                             var site = $("#siteset").val();//得到第二个下拉列表的值
                             var url = "surgenelist";
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
                                )
                            }
             }
             $(document).ready(function() {
                var submitButton = $('#mySubmit1');
                var input1 = $('#cancer');
                var input2 = $('#siteset');
                var input3 = $('#dataset');
                var input4 = $('#gene');
              function checkInputs() {
                    var submitButton = $('#mySubmit1');
                  if (input1.val() && input2.val() && input3.val() && input4.val()) {
                    submitButton.removeAttr('disabled');
                  } else {
                    submitButton.attr('disabled', 'disabled');
                  }
                }
                submitButton.on('mouseenter', checkInputs);
                $('.loader-mask1').fadeOut();
              });
</script>
<script type="text/javascript">
            $("#mySubmit1").click(function () {
                $('.loader-mask1').fadeIn();
                $("#start_tip").show();
                $('#mySubmit1').css('cursor', 'not-allowed');
                var submit_options = {
                    url: "myR_Survival_online",
                    dataType:"script",
                    type: "post",
                    success: function () {
                        $('#mySubmit1').prop('disabled', true);
                        var options = {
                            pdfOpenParams: { pagemode: "none" },
                            toolbar: 0 // 禁用侧边栏
                        };
                        setTimeout(function () {
                            PDFObject.embed(mySurvival_plot1, "#container_left", options);
                            PDFObject.embed(mySurvival_plot2, "#container_right", options);
                            $("#start_tip").hide();
                            $('#mySubmit1').css('cursor', 'default');
                            $('.loader-mask1').fadeOut();
                            $('#mySubmit1').prop('disabled', false);
                        }, 10000); // 指定延迟时间，单位为毫秒
                    },
                    error: function () {
                    }
                };
                  $("#dc_form").ajaxForm(submit_options);
            });
</script>
</body>
</html>