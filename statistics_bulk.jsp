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
                            <a href="statisticsindex.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Statistics</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Bulk Data Statistics</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
        <!--下面填内容-->
        
      <section style="margin-top:120px;">
            <div class="row" style="margin-left: 10px;margin-right: 10px;">
                <%@include file="statistics_contents_bulk.jsp" %>
            </div>
    </section>
 <%@include file="footer.jsp" %>
</div>   
<script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script src="echarts/echarts_statistics_bulk.js"></script>
<script src="js/jquery.navScrollSpy.js"></script>
<script src="js/sideNav.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    // 选择ID为'home'的元素并给它添加'active'类
    $('#statistics').addClass('active');
});
 var myChart1_1 = echarts.init(document.getElementById('container-1_1'));
        var myChart1_2 = echarts.init(document.getElementById('container-1_2'));
        var myChart2_1 = echarts.init(document.getElementById('container-2_1'));
        var myChart2_2 = echarts.init(document.getElementById('container-2_2'));
        var myChart3_1 = echarts.init(document.getElementById('container-3_1'));
        var myChart3_2 = echarts.init(document.getElementById('container-3_2'));
        var myChart4_1 = echarts.init(document.getElementById('container-4_1'));
        var myChart4_2 = echarts.init(document.getElementById('container-4_2'));
        var myChart4_3 = echarts.init(document.getElementById('container-4_3'));
        var myChart4_4 = echarts.init(document.getElementById('container-4_4'));
        var options_getdata = {
            url: "statistics_bulk",
            type: "post",
            dataType: "script",
            success: function () {
                var one_left = [];
                var one_left_lengend = [];
                for(var i=0;i<first_left.length;i++){
                    one_left[i] = {};
                    one_left[i].name = first_left[i].name;
                    one_left[i].value = parseFloat(first_left[i].val);
                    one_left_lengend.push(first_left[i].name);
                }
                option1.legend.data = one_left_lengend;
                option1.title.text = "Sample number in Primary site";
                option1.series[0].data = one_left;
                option1.series[0].name = "Primary";
                myChart1_1.setOption(option1);
                //一右
                var one_right = [];
                var one_right_lengend = [];
                for(var i=0;i<first_right.length;i++){
                    one_right[i] = {};
                    one_right[i].name = first_right[i].name;
                    one_right[i].value = parseFloat(first_right[i].val);
                    one_right_lengend.push(first_right[i].name);
                }
                option1.legend.data = one_right_lengend;
                option1.title.text = "Sample number in Meatastatic site";
                option1.series[0].data = one_right;
                option1.series[0].name = "Metastasis";
                myChart1_2.setOption(option1);
                //二一
                var two_left_category = [];
                for(var i=0;i<second_left.length;i++){
                    two_left_category.push(second_left[i].name);
                }
               option2_1.xAxis[0].data = two_left_category;
               let left_stack = get_stack(second_left);
               let temp_left = compare_val(second_left, left_stack);
               let result_left = generate_finalarray(temp_left);
               for(var i=0;i<result_left.length;i++){
                   var temp_tis = result_left[i].tis;
                   var temp_val = result_left[i].val.split(";");
                   option2_1.series[i].name = temp_tis;
                   option2_1.series[i].data = temp_val;
               }
               myChart2_1.setOption(option2_1);
                //二二
               var two_right_category = [];
               for(var i=0;i<second_right.length;i++){
                    two_right_category.push(second_right[i].name);
                }
               option2_2.xAxis[0].data = two_right_category;
               let right_stack = get_stack(second_right);
               let temp_right = compare_val(second_right, right_stack);
               let result_right = generate_finalarray(temp_right);
               for(var i=0;i<result_right.length;i++){
                   var temp_tis = result_right[i].tis;
                   var temp_val = result_right[i].val.split(";");
                   option2_2.series[i].name = temp_tis;
                   option2_2.series[i].data = temp_val;
               }
               myChart2_2.setOption(option2_2);
               //三一
                var three_left = [];
                var three_left_legend = [];
                for(var i=0;i<third_left.length;i++){
                    three_left_legend[i] = third_left[i].name;
                    three_left[i] = parseFloat(third_left[i].val);
                }
                option3.title.text = "Frequency of Overexpressed Genes in Primary";
                option3.xAxis[0].data = three_left_legend;
                option3.series[0].data = three_left;
                option3.series[0].color = "#a6abf1";
                myChart3_1.setOption(option3);
               //三二
                var three_right = [];
                var three_right_legend = [];
                for(var i=0;i<third_right.length;i++){
                    three_right_legend[i] = third_right[i].name;
                    three_right[i] = parseFloat(third_right[i].val);
                }
                option3.title.text = "Frequency of Overexpressed Genes in Metastasis";
                option3.xAxis[0].data = three_right_legend;
                option3.series[0].data = three_right;
                option3.series[0].color = "#ffa500";
                myChart3_2.setOption(option3);
                //四一
                var four_one = [];
                var four_one_legend = [];
                for(var i=0;i<fourth_go_left.length;i++){
                    four_one_legend[i] = fourth_go_left[i].name;
                    four_one[i] = parseFloat(fourth_go_left[i].val);
                }
                option4_left.xAxis.data = four_one_legend;
                option4_left.series[0].data = four_one;
                option4_left.dataZoom.end = 10;
                option4_left.title.text = "Frequency of Activated GO Pathways in Primary";
                myChart4_1.setOption(option4_left);
                //四二
                var four_two = [];
                var four_two_legend = [];
                for(var i=0;i<fourth_go_right.length;i++){
                    four_two_legend[i] = fourth_go_right[i].name;
                    four_two[i] = parseFloat(fourth_go_right[i].val);
                }
                option4_right.xAxis.data = four_two_legend;
                option4_right.dataZoom.end = 10;
                option4_right.series[0].data = four_two;
                option4_right.title.text = "Frequency of Activated GO Pathways in Metastasis";
                myChart4_2.setOption(option4_right);
                //四三
                var four_three = [];
                var four_three_legend = [];
                for(var i=0;i<fourth_kegg_left.length;i++){
                    four_three_legend[i] = fourth_kegg_left[i].name;
                    four_three[i] = parseFloat(fourth_kegg_left[i].val);
                }
                option4_left.xAxis.data = four_three_legend;
                option4_left.dataZoom.end = 20;
                option4_left.series[0].data = four_three;
                option4_left.title.text = "Frequency of Activated KEGG Pathways in Primary";
                myChart4_3.setOption(option4_left);
                //四四
                var four_four = [];
                var four_four_legend = [];
                for(var i=0;i<fourth_kegg_right.length;i++){
                    four_four_legend[i] = fourth_kegg_right[i].name;
                    four_four[i] = parseFloat(fourth_kegg_right[i].val);
                }
                option4_right.xAxis.data = four_four_legend;
                option4_right.dataZoom.end = 20;
                option4_right.series[0].data = four_four;
                option4_right.title.text = "Frequency of Activated KEGG Pathways in Metastasis";
                myChart4_4.setOption(option4_right);
            }
        };
        
        //下面是功能函数
         //统计堆叠图里共有多少个堆栈(tissue)
        function get_stack(arr) {
                 let tis_values = [];
                 let tis_obj = {};
                 for (let i = 0; i < arr.length; i++) {
                   let tis_str = arr[i].tis;
                   if (tis_str !== "") {
                     let tis_arr = tis_str.split(";");
                     for (let j = 0; j < tis_arr.length; j++) {
                       let tis_val = tis_arr[j];
                       if (!tis_obj[tis_val]) {
                         tis_obj[tis_val] = true;
                       }
                     }
                   }
                 }
                 for (let key in tis_obj) {
                   tis_values.push(key);
                 }
                 tis_values.sort();
                 return tis_values;
        }
        
        //补全数组
        function compare_val(arr, result) {
          for (let i = 0; i < arr.length; i++) {
            let tis_str = arr[i].tis;
            let val_str = arr[i].val;
            let new_val = [];
            if (tis_str !== "") {
              let tis_arr = tis_str.split(";");
              let val_arr = val_str.split(";");
              let val_index = 0;
              for (let j = 0; j < result.length; j++) {
                let result_val = result[j];
                //如果tis数组中包含这个值，就把val数组中对应的值加入新的val数组，并增加val索引
                if (tis_arr.includes(result_val)) {
                  new_val.push(val_arr[val_index]);
                  val_index++;
                } else {
                  //否则，就把0加入新的val数组
                  new_val.push("0");
                }
              }
            } else {
              //如果tis属性为空，就把结果数组的长度个0加入新的val数组
              for (let j = 0; j < result.length; j++) {
                new_val.push("0");
              }
            }
            //把新的val数组按照分号连接成一个字符串
            let new_val_str = new_val.join(";");
            //把对象的tis属性替换成结果数组按照分号连接成的字符串
            arr[i].tis = result.join(";");
            //把对象的val属性替换成新的val字符串
            arr[i].val = new_val_str;
          }
          return arr;
        }
        
        //生成需要的数组
        function generate_finalarray(arr) {
            let new_array = [];
            if (arr.length > 0) {
              let first_obj = arr[0];
              let tis_str = first_obj.tis;
              let tis_arr = tis_str.split(";");
              for (let i = 0; i < tis_arr.length; i++) {
                let tis_val = tis_arr[i];
                let new_val = "";
                for (let k = 0; k < arr.length; k++) {
                  let val_str = arr[k].val;
                  let val_arr = val_str.split(";");
                  let val_val = val_arr[i];
                  if (new_val === "") {
                    new_val = val_val;
                  } else {
                    new_val = new_val + ";" + val_val;
                  }
                }
                let new_obj = {
                  tis: tis_val,
                  val: new_val
                };
                new_array.push(new_obj);
              }
            }
            return new_array;
          }
        $.ajax(options_getdata);
</script>
</body>
</html>