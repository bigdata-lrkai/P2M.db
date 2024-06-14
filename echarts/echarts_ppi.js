var ppi_left_option = {
    tooltip: {
      trigger: 'item', // 触发类型，默认数据项触发
      formatter: function (params) {
        if (params.dataType === 'edge') {
          // 如果是连线的话，显示连线的信息
          return 'value: '+ params.data.PORN + params.data.lineStyle.width/10;
        } else {
          // 如果是节点的话，显示节点的信息
          return params.data.name;
        }
      }
    },
    color: ['#dd7cd0', '#eeb1b0'], 
      legend: {
          top:30,
          left:120,
          data:["highly expressed In P","highly expressed In M"]
      },
      toolbox:{
        feature:{
          dataView:{}
        }
      },
      series: [
        {
          name: 'Gene:',
          type: 'graph',
          top:120,
          left:50,
          layout: 'circular',
          circular: {
          rotateLabel: true
          },
          data: [],
          links: [],
          categories: [{"name":"highly expressed In P"},{"name":"highly expressed In M"}],
          roam: false,
          label: {
            show: true,
            position: 'right',
            formatter: '{b}'
          },
          labelLayout: {
            hideOverlap: true
          },
          scaleLimit: {
            min: 0.4,
            max: 2
          },
          lineStyle: {
            color: 'source',
            curveness: 0.3
          },
          emphasis: {
          focus: 'adjacency',
          lineStyle: {
            width: 3
          }
        }
        }
      ]
 };


var ppi_right_option = {
    tooltip: {
      trigger: 'item', // 触发类型，默认数据项触发
      formatter: function (params) {
        if (params.dataType === 'edge') {
          // 如果是连线的话，显示连线的信息
          return 'value: '+ params.data.PORN + params.data.lineStyle.width/10;
        } else {
          // 如果是节点的话，显示节点的信息
          return params.data.name;
        }
      }
    },
    color: ['#dd7cd0', '#eeb1b0'], 
      legend: {
          top:30,
          data:["highly expressed In P","highly expressed In M"]
      },
      toolbox:{
        feature:{
          dataView:{}
        }
      },
      series: [
        {
          name: 'Gene:',
          type: 'graph',
          top:120,
          layout: 'circular',
          circular: {
          rotateLabel: true
          },
          data: [],
          links: [],
          categories: [{"name":"highly expressed In P"},{"name":"highly expressed In M"}],
          roam: false,
          label: {
            show: true,
            position: 'right',
            formatter: '{b}'
          },
          labelLayout: {
            hideOverlap: true
          },
          scaleLimit: {
            min: 0.4,
            max: 2
          },
          lineStyle: {
            color: 'source',
            curveness: 0.3
          },
          emphasis: {
          focus: 'adjacency',
          lineStyle: {
            width: 3
          }
        }
        }
      ]
    };

    var yAxisLabels = [];
    var ppi_middle_option_1 = {
            title: {
        top: '2%',
        text: 'Gene expression similarity in P',
        subtext: '',
        x: 'center',
        textStyle: {
            align: 'center',
            color: '#000000',
            fontSize: 18,
            fontWeight: 'bold'
        }
    },
    tooltip: {
        trigger: 'item',
        formatter: function (params) {
            var xAxisValue = params.name; // X轴的标签
            var yAxisIndex = params.value[1]; // Y轴的索引
            var value = params.value[2]; // 数据点的值
            return 'X轴: ' + xAxisValue + '<br />' +
                   'Y轴: ' + yAxisLabels[yAxisIndex] + '<br />' +
                   '值: ' + value;
        }
    },
      grid: {
        height: '70%',
        top: '13%',
        left:'17%'
      },
//        dataZoom: [
//          {
//            type: 'slider',
//            xAxisIndex: 0, 
//            filterMode: 'empty',
//            start:0,
//            end:70,
//            maxSpan:100
//          },
//          {
//            type: 'slider',
//            yAxisIndex: 0, // 指定作用于第一个 y 轴
//            filterMode: 'empty',
//            start:0,
//            end:70,
//            maxSpan:100
//          }
//        ],
      xAxis: {
        type: 'category',
        data: [],
        splitArea: {
          show: true
        },
         axisLabel: {
         interval: 0,
          rotate: 60,
         fontSize: 12
       },
          axisTick: {
    alignWithLabel: true  // 设置为 true，使刻度线与标签对齐
  }
      },
      yAxis: {
        type: 'category',
        data: [],
        splitArea: {
          show: true
        },
        axisLabel: {
             interval: 0
        },
                  axisTick: {
    alignWithLabel: true  // 设置为 true，使刻度线与标签对齐
  }
      },
      visualMap: {
        min: -1,
        max: 1,
        calculable: true,
        orient: 'horizontal',
        top: '5%',
        right:'5%',
        inRange: {
        color: ['#9e97cd','#fbf9fa', '#d79e91']
        },
                    precision: 2,
         splitNumber: 5, 
         text: ['Low', 'High']
      },
      series: [
        {
          name: 'Gene',
          type: 'heatmap',
          data: [],
          label: {
            show: false
          },
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        }
      ]
    };
    
   var ppi_middle_option_2 = {
           title: {
        top: '2%',
        text: 'Gene expression similarity in M',
        subtext: '',
        x: 'center',
        textStyle: {
            align: 'center',
            color: '#000000',
            fontSize: 18,
            fontWeight: 'bold'
        }
    },
    tooltip: {
        trigger: 'item',
        formatter: function (params) {
            var xAxisValue = params.name; // X轴的标签
            var yAxisIndex = params.value[1]; // Y轴的索引
            var value = params.value[2]; // 数据点的值
            return 'X轴: ' + xAxisValue + '<br />' +
                   'Y轴: ' + yAxisLabels[yAxisIndex] + '<br />' +
                   '值: ' + value;
        }
    },
      grid: {
        height: '70%',
        top: '13%',
        left:'17%'
      },
      xAxis: {
        type: 'category',
        data: [],
        splitArea: {
          show: true
        },
         axisLabel: {
         interval: 0,
          rotate: 60
       },
        xisLabel: {
          fontSize: 8
        },
          axisTick: {
            alignWithLabel: true  // 设置为 true，使刻度线与标签对齐
          }
      },
      yAxis: {
        type: 'category',
        data: [],
        splitArea: {
          show: true
        },
        axisLabel: {
          fontSize: 12,
          interval: 0
        },
         axisTick: {
            alignWithLabel: true  // 设置为 true，使刻度线与标签对齐
          }
      },
      visualMap: {
        min: -1,
        max: 1,
        calculable: true,
        orient: 'horizontal',
        top: '5%',
        right:'5%',
        inRange: {
        color: ['#9e97cd','#fbf9fa', '#d79e91']
        },
            precision: 2,
         splitNumber: 5, 
         text: ['Low', 'High']
      },
      series: [
        {
          name: 'Gene',
          type: 'heatmap',
          data: [],
          label: {
            show: false
          },
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        }
      ]
    };