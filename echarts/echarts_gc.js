//比例的双向柱状图
var lrbar_option_middle_1 = {

    //tooltip:配置用于在鼠标悬停在数据点上时显示提示框，
      tooltip: {
         formatter: function (params) {
                  return (
                      params.seriesName +
                      '<br/>&nbsp&nbsp' + params.marker+params.name+ 
                      '&nbsp<b>'+ Math.abs(params.data)+'%</b>'
                    );
             }
        },
      title: [

        {
          text: '{a|Hello} {b|ECharts}',// 使用 {a|文本} 表示不同的样式
          left: '55%',
          textAlign: 'center',
          textStyle: {
            rich: {
                a: {
                    color: '#a90000', // 设置颜色为红色
                    fontWeight: 'bold',
                    fontSize: 16 // 设置字体大小
                },
                b: {
                    color: '#318EFE', // 设置颜色为自定义颜色
                    fontWeight: 'bold',
                    fontSize: 16 // 设置字体大小
                }
            }
        }
        }
      ],
    legend: {
        left: '32%',
        top: 30,
        data: [ 'Primary', 'Metastasis'],
        textStyle: {
        color: '#333', // 字体颜色
        fontSize: 15,  // 字体大小
        fontWeight: 'bold', // 字体粗细，可以是 'normal', 'bold', 'bolder', 'lighter' 等
        fontFamily: 'Arial, sans-serif' // 字体族
    }
  },
  
     //grid:配置图像分区的关键，
      grid: [
        {
    //      top: 50,
          width: '90%',
          bottom: '5%',
          left: '0%',
          containLabel: true
        }
      ],
  xAxis: [
    {
      type: 'value',
      position: 'bottom', // 将横轴放在上方

      splitLine: {
        show: true
        },
      axisLabel: {
            formatter: function(value) {
                // 将负值部分的标签显示为正数形式
                var absValue = Math.abs(value);
                return absValue.toString()+"%";
            }
        }
    }
  ],
  yAxis: [
    {     
      type: 'category',
      axisTick: {
        show: false
      },
      axisLabel: {
            // 设置字体样式
            textStyle: {
                fontFamily: 'Arial, sans-serif', // 设置字体，优先使用Arial字体，如果无法使用，则使用sans-serif字体
                fontSize: 14, // 设置字体大小
                fontWeight: 'bold' // 设置字体加粗
            },
            rotate: 40 // 设置旋转角度，这里是40度
        },
      data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    }
  ],
  series: [
    {
      name: 'Primary',
      type: 'bar',
      stack: 'Total',
      stackStrategy:"none",

      label: {
        show: true,
        position: 'left',
        formatter: function(params) {
             var value = Math.abs(params.value);
             return value.toString()+"%";
         }
      },
      emphasis: {
        focus: 'series'
      },
      data: [-120, -132, -101, -134, -190, -230, -210]
    },
    
    {
      type: 'bar',
      name: 'Metastasis',
      stack: 'Total',
      barWidth: '50%', // 设置条宽度为50%（相对于类目间距的百分比）
      stackStrategy:"none",
      label: {
        show: true,
        position: 'right',
        formatter: function(params) {
        // 将负值转换为正数显示
          var value = Math.abs(params.value);
          return value.toString()+"%";
         }
      },
      emphasis: {
        focus: 'series'
      },
         


      data: [320, 302, 341, 374, 390, 450, 420]
    }    
  ],
        graphic: [
        {
        type: 'text',
        left: 'center', // 水平居中
        bottom: 0, // 距离底部的距离
        style: {
            text: 'Proportion of cell types that express the gene', // 要显示的注释内容
            fontWeight: 'bold', // 设置文本字体为粗体
            fill: '#318EFE', // 文字颜色
            fontSize: 15
                }
        }
                ]
};

//均值的双向柱状图
var lrbar_option_middle_2 = {
    //tooltip:配置用于在鼠标悬停在数据点上时显示提示框，
      tooltip: {
         formatter: function (params) {
                  return (
                      params.seriesName +
                      '<br/>&nbsp&nbsp' + params.marker+params.name+ 
                      '&nbsp<b>'+ Math.abs(params.data)+'</b>'
                    );
             }
        },
      title: [
        {
          text: '{a|Hello} {b|ECharts}',// 使用 {a|文本} 表示不同的样式
          left: '55%',
          textAlign: 'center',
          textStyle: {
            rich: {
                a: {
                    color: '#a90000', // 设置颜色为红色
                    fontWeight: 'bold',
                    fontSize: 16 // 设置字体大小
                },
                b: {
                    color: '#EFAF51', // 设置颜色为自定义颜色
                    fontWeight: 'bold',
                    fontSize: 16 // 设置字体大小
                }
//                image: {
//                    height: 24, // 图片高度
//                    width: 24, // 图片宽度
//                    backgroundColor: {
//                        image: './myimg/play.png' // 图片链接
//                    }
//                }
            }
        }
        }
      ],
//        graphic: [{
//    type: 'image',
//    left: 10,        // 图片左上角的横坐标
//    top: 10,         // 图片左上角的纵坐标
//    z: -1,           // 图片层级，确保图片位于其他元素之后
//    bounding: 'raw', // 图片的包围盒策略
//    style: {
//      image: './myimg/play.png',  // 图片地址
//      width: 20,               // 图片宽度
//      height: 20               // 图片高度
//    }
//  }],
    legend: {
        left: '32%',
        top: 30,
        data: [ 'Primary', 'Metastasis'],
        textStyle: {
        color: '#333', // 字体颜色
        fontSize: 15,  // 字体大小
        fontWeight: 'bold', // 字体粗细，可以是 'normal', 'bold', 'bolder', 'lighter' 等
        fontFamily: 'Arial, sans-serif' // 字体族
    }
  },
  
     //grid:配置图像分区的关键，
      grid: [
        {
    //      top: 50,
          width: '90%',
          bottom: '5%',
          left: '0%',
          containLabel: true
        }
      ],
  xAxis: [
    {
      type: 'value',
      position: 'bottom', // 将横轴放在上方

      splitLine: {
        show: true
        },
      axisLabel: {
            formatter: function(value) {
                // 将负值部分的标签显示为正数形式
                var absValue = Math.abs(value);
                return absValue.toString();
            }
        }
    }
  ],
  yAxis: [
    {     
      type: 'category',
      axisTick: {
        show: true
      },
      axisLabel: {
            // 设置字体样式
            textStyle: {
                fontFamily: 'Arial, sans-serif', // 设置字体，优先使用Arial字体，如果无法使用，则使用sans-serif字体
                fontSize: 14, // 设置字体大小
                fontWeight: 'bold' // 设置字体加粗
            },

            rotate: 40 // 设置旋转角度，这里是40度
        },
      data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    }
  ],
  series: [
    {
      name: 'Primary',
      type: 'bar',
      stack: 'Total',
      stackStrategy:"none",

      label: {
        show: true,
        position: 'left',
        formatter: function(params) {
             var value = Math.abs(params.value);
             return value.toString();
         }
      },
      emphasis: {
        focus: 'series'
      },
      data: [-120, -132, -101, -134, -190, -230, -210]
    },
    
    {
      name: 'Metastasis',
      type: 'bar',
      stack: 'Total',
      barWidth: '50%', // 设置条宽度为50%（相对于类目间距的百分比）
      stackStrategy:"none",
      label: {
        show: true,
        position: 'right',
        formatter: function(params) {
        // 将负值转换为正数显示
          var value = Math.abs(params.value);
          return value.toString();
         }
      },
      emphasis: {
        focus: 'series'
      },
      data: [320, 302, 341, 374, 390, 450, 420]
    }
  ],
          graphic: [
        {
        type: 'text',
        left: 'center', // 水平居中
        bottom: 0, // 距离底部的距离
        style: {
            text: 'Mean expression in each cell type', // 要显示的注释内容
            fontWeight: 'bold', // 设置文本字体为粗体
            fill: '#EFAF51', // 文字颜色
            fontSize: 15
                }
        }
                ]
};

//高变基因的rank散点图
var scatter_option_middle = {

    //tooltip:配置用于在鼠标悬停在数据点上时显示提示框，
      tooltip: {
        formatter: function (params) {
            if (params.seriesName === "gene_top") {
                return (
                        params.marker + '<b>' + params.name + '</b>' +
                        '<br/>Rank:&nbsp&nbsp<b>' + params.value[1] + '</b>' +
                        '<br/>Variance:&nbsp&nbsp<b>' + params.value[0] + '</b>'
                        );
            }
        }
        },
      title: [
        {
          text: 'Coefficient of variation',
    //      subtext: '总计 ' + builderJson.all,
          left: '45%',
          textAlign: 'center',
          textStyle: {
          fontSize: 16 // 设置标题文字大小为16像素
        }
        }
      ],
 
     //grid:配置图像分区的关键，
      grid: [
        {
    //      top: 50,
          width: '90%',
          bottom: '0%',
          left: '0%',
          containLabel: true
        }
      ],
  xAxis: [
    {
         type: 'value',
//         inverse: true, // 将横坐标轴左右颠倒
//         name: 'Variance', // 坐标轴注释 
         nameLocation: 'middle', // 注释位置
         nameGap: -15, // 注释与轴之间的间隔
         nameTextStyle: {
             fontWeight: 'bold' // 设置字体加粗
        }
    }
  ],
  yAxis: [
    {
         type: 'value',
         inverse: true, // 将纵坐标轴上下颠倒
         name: 'Rank', // 坐标轴注释
         nameLocation: 'start', // 注释位置
         nameGap: 10, // 注释与轴之间的间隔
         nameTextStyle: {
             fontSize: 13,  // 字体大小
             fontWeight: 'bold' // 设置字体加粗
        }
    }
  ],
  series: [
    {
      type: 'scatter',
      name: 'gene',
      symbolSize: 10,
      data: [
            { name: 'g1', value: [24.53379384, 1] },
            { name: 'g2', value: [23.93773815, 2], itemStyle: { color: 'red' } },
            { name: 'g3', value: [23.9211406, 3] }
        ],
      label: {
          show: false
    }
    },
    {
      type: 'scatter',
      name: 'gene_top',
      symbolSize: 10,
      data: [
            { name: 'g1', value: [24.53379384, 1] },
            { name: 'g2', value: [23.93773815, 2], itemStyle: { color: 'red' } },
            { name: 'g3', value: [23.9211406, 3] }
        ],
      label: {
          show: false
    }
    }    
  ]
};

//左上角的bar图
var bar_option_left_top = {
    tooltip: {
        formatter: function (params) {
            if(params.seriesName==="ratio"){
            return (
                    params.marker +'Percentage of cells expressing <font color="#a90000">'+ params.name + "</font>"+
                    '&nbsp<b>'+ Math.abs(params.data) + '%</b>'
                    );
        }
        }
    },
    
    grid: {
        left: '15%', // 防止基因名太长显示不全
        right:'10%'
    },
    
    xAxis: {
        type: 'value',
         max: 100
    },
    yAxis: {
        type: 'category',
        data: ['Mon'],
        axisLabel: {
            verticalAlign: 'bottom',
            lineHeight: -15,
            margin:3,   
            textStyle: {
                fontSize: 16 // 设置标题文字大小为16像素
            }
        }
    },
    series: [
        {
            name:"ratio",
            data: [80],
            type: 'bar',
            stack: 'chart'
        },
        {
             type: 'bar',
             stack: 'chart',
             color:'rgba(180, 180, 180, 0.2)',
             data: [20]
        }
    ]
};

//左下角的highcharts雷达图
myGeneExpCellRatio_left=new Array();myNOGeneExpCellRatio_left=new Array();myCelltype_ratio_left=new Array();
//function customTooltipFormatter() {
//  var point = this.point; // 当前数据点
//  var tooltipText = 'X: ' +myRatio[point.x] + '<br>' + 'Y: ' + point.y;
//  return tooltipText;
//}
var Highchart_PolarBar_option_left_bottom = {
         credits: {
             enabled: false//删除highcharts标记
            },
            colors: ['#5470C6', '#C0C0C0'],
            chart: {
                type: 'column',
                inverted: true,
                polar: true
            },
            title: {
                text: ''
            },
            //tooltip:配置用于在鼠标悬停在数据点上时显示提示框，
            tooltip: {
                enabled: true,
                outside: true,
//                formatter:customTooltipFormatter,
//                pointFormat: '<span style="color:red">{series.name}</span>: <b>{point.y}%</b><br/>',
                formatter: function() {
//                     这里是自定义的函数逻辑，返回最终的工具提示框内容
//                     this 关键字指向当前数据点对象
//                     alert(this.series.name);
                     if(this.series.name.includes("NO")){
                           return  '<b>'+this.x + '</b> accounts for <font style="color: red;"><b>'+ myCelltype_ratio_left[this.point.x].toFixed(2)+'%</font></b> of all cells.<br>'+
                                    '<b><font style="color: red;">&nbsp&nbsp&nbsp&nbsp'+ myNOGeneExpCellRatio_left[this.point.x].toFixed(2)+'%</font></b> cells in this celltype NOT expressing <b>'+$("#gene").val()+'</b>.';   
                    }else{
                          return  '<b>'+this.x + '</b> accounts for <font style="color: red;"><b>'+ myCelltype_ratio_left[this.point.x].toFixed(2)+'%</font></b> of all cells.<br>'+
                                    '<b><font style="color: red;">&nbsp&nbsp&nbsp&nbsp'+ myGeneExpCellRatio_left[this.point.x].toFixed(2)+'%</font></b> cells in this celltype expressing <b>'+$("#gene").val()+'</b>.';   
                    }
                  },
                backgroundColor: '#FCFFC5', // 背景颜色
                borderColor: 'black', // 边框颜色
                borderRadius: 10, // 边框圆角
                borderWidth: 1, // 边框宽度
                shadow: false, // 是否显示阴影
                animation: true, // 是否启用动画效果
                
                style: {// 文字内容相关样式
//                    color: "black",
                    fontSize: "16px",
                    fontWeight: "blod",
                    fontFamily: "Courir new"
                }
            },
            legend: {
                itemStyle: {
                    fontSize: '16px'  // 设置字体大小为16像素
                }
            },
            pane: {
                size: '85%',
                endAngle: 270
            },
            xAxis: {
                tickInterval: 1,
                labels: {
                    align: 'right',
                    useHTML: true,
                    
//                    allowOverlap: true,
//                    step: 1,
//                    y: 4,
                    overflow: 'allow',//坐标轴的label全部显示而不自动省略
                    style: {
                        fontSize: '14px'
                    }
                },
                lineWidth: 0,
                categories: [
                    'Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway'
                ]
            },
            yAxis: {
                lineWidth: 0,
                tickInterval: 5,
                reversedStacks: false,
                endOnTick: true,
                showLastLabel: true,
                labels: {
                    overflow: 'justify',//坐标轴的label全部显示而不自动省略
                    style: {
                        fontSize: '14px'
                    }
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal',
                    borderWidth: 0,
                    pointPadding: 0,
                    groupPadding: 0.15
                }
            },
            series: [{
                    name: 'Percent of cells Expressing This Gene',
                    data: [132, 105, 92, 73, 64, 57, 55, 47, 45, 43]
                }, {
                    name: 'Percent of cells NOT Expressing This Gene',
                    data: [125, 110, 86, 64, 81, 46, 46, 38, 44, 63]
                }]
        };

//左下角的echarts雷达图
var polar_option_left_bottom = {
    grid: {
        left: '10%', // 调整左边距
        right: '10%', // 调整右边距
        top: '0%', // 调整上边距
        bottom: '10%'  // 调整下边距
    },
    angleAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    radiusAxis: {},
    polar: {},
    series: [
        {
            type: 'bar',
            data: [1, 2, 3, 4, 3, 5, 1],
            coordinateSystem: 'polar',
            name: 'Percent of Gene Exp in this celltype',
            stack: 'a',
            emphasis: {
                focus: 'series'
            },
            itemStyle: {
                color: '#5C7BD9'
            }
        },
        {
            type: 'bar',
            data: [2, 4, 6, 1, 3, 2, 1],
            coordinateSystem: 'polar',
            name: 'Percent of this celltype in all cells',
            stack: 'a',
            emphasis: {
                focus: 'series'
            },
            itemStyle: {
                color: '#D3D3D3'
            }
        }
    ],
    legend: {
        show: true,
        bottom: '0%', // 距离底部的偏移
        orient: 'vertical', // 垂直排列
        itemWidth: 20, // 图例项宽度
        itemHeight: 15, // 图例项高度
        textStyle: {
            fontSize: 14 // 设置字体大小为14像素
                    // 其他文本样式属性...
        },
        data: ['Percent of Gene Exp in this celltype', 'Percent of this celltype in all cells']
    }
};

//右上角的bar图
var bar_option_right_top = {
            tooltip: {
                formatter: function (params) {
                    if (params.seriesName === "ratio") {
                        return (
                                params.marker + 'Percentage of cells expressing <font color="#a90000">' + params.name + "</font>" +
                                '&nbsp<b>' + Math.abs(params.data) + '%</b>'
                                );
                    }
                }
            },
            grid: {
                left: '15%', // 防止基因名太长显示不全
                right:'10%'
                    },
            xAxis: {
                type: 'value',
                max: 100
            },
            yAxis: {
                type: 'category',
                data: ['Mon'],
                axisLabel: {
                    verticalAlign: 'bottom',
                    lineHeight: -15,
                    margin:3,   
                    textStyle: {
                        fontSize: 16 // 设置标题文字大小为16像素
                    }
                }
            },
            series: [
                {
                    name: "ratio",
                    data: [80],
                    type: 'bar',
                    stack: 'chart',
                    color: '#91CC75'
                },
                {
                    type: 'bar',
                    stack: 'chart',
                    color: 'rgba(180, 180, 180, 0.2)',
                    data: [20]
                }
            ]
        };

//右下角的highcharts雷达图
myGeneExpCellRatio_right=new Array();myNOGeneExpCellRatio_right=new Array();myCelltype_ratio_right=new Array();
var Highchart_PolarBar_option_right_bottom = {
         credits: {
             enabled: false//删除highcharts标记
            },
            colors: ['#9FE080', '#C0C0C0'],
            chart: {
                type: 'column',
                inverted: true,
                polar: true
            },
            title: {
                text: ''
            },
            //tooltip:配置用于在鼠标悬停在数据点上时显示提示框，
            tooltip: {
                enabled: true,
                outside: true,
//                formatter:customTooltipFormatter,
//                pointFormat: '<span style="color:red">{series.name}</span>: <b>{point.y}%</b><br/>',
                formatter: function() {
//                     这里是自定义的函数逻辑，返回最终的工具提示框内容
//                     this 关键字指向当前数据点对象
//                     alert(this.series.name);
                     if(this.series.name.includes("NO")){
                           return  '<b>'+this.x + '</b> accounts for <font style="color: red;"><b>'+ myCelltype_ratio_right[this.point.x].toFixed(2)+'%</font></b> of all cells.<br>'+
                                    '<b><font style="color: red;">&nbsp&nbsp&nbsp&nbsp'+ myNOGeneExpCellRatio_right[this.point.x].toFixed(2)+'%</font></b> cells in this celltype NOT expressing <b>'+$("#gene").val()+'</b>.';   
                    }else{
                          return  '<b>'+this.x + '</b> accounts for <font style="color: red;"><b>'+ myCelltype_ratio_right[this.point.x].toFixed(2)+'%</font></b> of all cells.<br>'+
                                    '<b><font style="color: red;">&nbsp&nbsp&nbsp&nbsp'+ myGeneExpCellRatio_right[this.point.x].toFixed(2)+'%</font></b> cells in this celltype expressing <b>'+$("#gene").val()+'</b>.';   
                    }
                  },
                backgroundColor: '#FCFFC5', // 背景颜色
                borderColor: 'black', // 边框颜色
                borderRadius: 10, // 边框圆角
                borderWidth: 1, // 边框宽度
                shadow: false, // 是否显示阴影
                animation: true, // 是否启用动画效果
                
                style: {// 文字内容相关样式
//                    color: "black",
                    fontSize: "16px",
                    fontWeight: "blod",
                    fontFamily: "Courir new"
                }
            },
            legend: {
                itemStyle: {
                    fontSize: '16px'  // 设置字体大小为16像素
                }
            },
            pane: {
                size: '85%',
                endAngle: 270
            },
            xAxis: {
                tickInterval: 1,
                labels: {
                    align: 'right',
                    useHTML: true,
                    
//                    allowOverlap: true,
//                    step: 1,
//                    y: 4,
                    overflow: 'allow',//坐标轴的label全部显示而不自动省略
                    style: {
                        fontSize: '14px'
                    }
                },                
                lineWidth: 0,
                categories: [
                    'Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway','Norway'
                ]
            },
            yAxis: {
                lineWidth: 0,
                tickInterval: 5,
                reversedStacks: false,
                endOnTick: true,
                showLastLabel: true,
                labels: {
                    overflow: 'justify',//坐标轴的label全部显示而不自动省略
                    style: {
                        fontSize: '14px'
                    }
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal',
                    borderWidth: 0,
                    pointPadding: 0,
                    groupPadding: 0.15
                }
            },
            series: [{
                    name: 'Percent of cells Expressing This Gene',
                    data: [132, 105, 92, 73, 64, 57, 55, 47, 45, 43]
                }, {
                    name: 'Percent of cells NOT Expressing This Gene',
                    data: [125, 110, 86, 64, 81, 46, 46, 38, 44, 63]
                }]
        };        

//右下角的echarts雷达图
var polar_option_right_bottom = {
      grid: {
    left: '10%',   // 调整左边距
    right: '10%',  // 调整右边距
    top: '0%',    // 调整上边距
    bottom: '10%'  // 调整下边距
  },
  angleAxis: {
    type: 'category',
    data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  },
  radiusAxis: {},
  polar: {},
  series: [
    {
      type: 'bar',
      data: [1, 2, 3, 4, 3, 5, 1],
      coordinateSystem: 'polar',
      name: 'Percent of this celltype in all cells',
      stack: 'a',
      emphasis: {
        focus: 'series'
      },
      itemStyle: {
        color: '#91CC75'
      }
    },
    {
      type: 'bar',
      data: [2, 4, 6, 1, 3, 2, 1],
      coordinateSystem: 'polar',
      name: 'Percent of Gene Exp in this celltype',
      stack: 'a',
      emphasis: {
        focus: 'series'
      },
      itemStyle: {
        color: '#D3D3D3'
      }
    }
  ],
  legend: {
    show: true,
    bottom: '0%', // 距离底部的偏移
    orient: 'vertical', // 垂直排列
    itemWidth: 20, // 图例项宽度
    itemHeight: 15, // 图例项高度
    textStyle: {
        fontSize: 14 // 设置字体大小为14像素
        // 其他文本样式属性...
                },
    data: ['Percent of this celltype in all cells', 'Percent of Gene Exp in this celltype']
  }
};