var Baroption_CellCount = {
      title: [
//    {
//      text: 'Cell Count',
//      left: 'center',
//      top:20
//    }
  ],
    xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
          axisPointer: {
            show: true, // 显示坐标轴指示器
            type: 'line', // 坐标轴指示器样式为直线，阴影(shadow)
            label: {
                show: true, // 显示坐标轴指示器的文本标签
                backgroundColor: 'red', // 文本标签的背景色
                fontSize: 12, // 文本标签的字体大小
                formatter: function (params) {
                    var dataIndex = params.value; // 获取鼠标悬停的 x 轴标签索引
                    // 在此处添加高亮显示的样式逻辑，例如添加 CSS 类或者设置其他样式
                    return params.value; // 返回文本标签内容
                }
            }
        },      
        axisLabel: {
            rotate: 40, //横坐标旋转
            //设置坐标某个值的颜色
            formatter: function (value) {
                if (value === $("#dataset").val()) {
                    return '{a|' + value + '}';
                } else {
                    return value;
                }
            },
            rich: {
                a: {
                    color: '#a90000',
                    fontWeight: 800  // Set the font weight (bold) here
                }
            }
        }
    },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      data: [120, 200, 150, 80, 70, 110, 130],
      type: 'bar',
      itemStyle: {
        borderColor: '#000',  // 设置箱体线的颜色黑色
        color: function (params) {
          // 设置柱子的颜色
          if (params.name === $("#dataset").val()) { // 设置选中柱子的颜色
               return  '#a90000'; // Set color for the third bar to red
          } else {
               return '#E6E6FA'; // Set default color for other bars
          }
        }
      },
      label: {
         show: true,
         position: 'top',
        formatter: function (params) {
          // Check for a specific condition and set font color accordingly
          if (params.name === $("#dataset").val()) {
              return '{a|' + params.value + '}';
          } else {
              return '{b|' + params.value + '}';
          }
        },
        rich: {
          a: {
            color: '#a90000', 
            fontWeight: 800
          },
          b: {
            color: 'black' 
          }
        }
      }
    }
  ]
};

// 初始样式设置
var textStyle = {
  text:  'Click box for detail', // 文本内容
  fill: '#a90000', // 文本颜色
  fontSize: 12, // 文本字体大小
};

var Box_option_nCount = {
  title: [
//    {
//      text: 'nCount',
//      left: 'center'
//    }
  ],
  graphic: [
    {
      type: 'text',
      left: 50, 
      top: 10, 
      style: textStyle
    }
  ],
  tooltip: [
      {
            trigger: 'item', //柱体触发事件
            axisPointer: {
                type: 'shadow'
            },
            formatter: function (params) {
                if (params.seriesType === 'boxplot') {
                    var data = params.data;
                    var value = data.value;
                    var itemName = params.name;
                    var tooltipContent = 'Dataset：' + itemName + '<br/>';
                    tooltipContent += 'Max：' + value[5] + '<br/>';
                    tooltipContent += 'Upper quartile：' + value[4] + '<br/>';
                    tooltipContent += 'Median：' + value[3] + '<br/>';
                    tooltipContent += 'Low quartile：' + value[2] + '<br/>';
                    tooltipContent += 'Min：' + value[1] + '<br/>';
                    return tooltipContent;
                }
            }
        },
        {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        }
    ],
   dataZoom: [
            {
                type: 'slider',
                show: true,
                start: 40,
                end: 80,
                showDataShadow: false,
                showDetail: false,
                handleSize: '10',
                orient:'horizontal',
                bottom: 30,
                handleIcon:'M-9.35,34.56V42m0-40V9.5m-2,0h4a2,2,0,0,1,2,2v21a2,2,0,0,1-2,2h-4a2,2,0,0,1-2-2v-21A2,2,0,0,1-11.35,9.5Z',
                moveHandleIcon: 'M-320.9-50L-320.9-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-348-41-339-50-320.9-50z M-212.3-50L-212.3-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-239.4-41-230.4-50-212.3-50z M-103.7-50L-103.7-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-130.9-41-121.8-50-103.7-50z'
            },
            {
                type: 'inside',
                orient:'horizontal',
                start: 0,
                end: 50
            }
        ],
  grid: {
    left: '10%',
    right: '10%',
    top:'15%',
    bottom: '10%'
  },
  xAxis: {
    type: 'category',
    data:["a1","a2","a3","a4","a5"],
    position: 'top', // 将 x 坐标轴位置设置为顶端
    
        axisLabel: {
            rotate: 33, //横坐标旋转
            fontSize:12, // 设置默认字体大小
            //设置坐标某个值的颜色
            formatter: function (value) {
                if (value === $("#dataset").val()) {
                    return '{a|' + value + '}';
                } else {
                    return value;
                }
            },
            
            rich: {
                a: {
                    color: '#a90000',
                    fontWeight: 800, // Set the font weight (bold) here
//                    fontSize: 16, // 设置鼠标悬停时的字体大小
                    cursor: 'pointer' // 设置鼠标悬停时的鼠标样式为手型
                }
            }
        },
  },
  yAxis: {
    type: 'value',
//    name: 'km/s minus 299,000',
    splitArea: {
      show: true
    }
  },
series: [
    {
      type: 'boxplot',
      itemStyle: {
          color: '#E6E6FA' // 设置箱体的颜色
            },
      data: [
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体2',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体3',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体4',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体5',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体6',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体7',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
       {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },      
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        
        
        
        
      ]
    }
  ]
};

var Box_option_nFeature = {
  title: [
//    {
//      text: 'nFeature',
//      left: 'center'
//    }
  ],
  graphic: [
    {
      type: 'text',
      left: 50, 
      top: 10, 
      style: textStyle
    }
  ],
  
  tooltip: [
      {
            trigger: 'item', //柱体触发事件
            axisPointer: {
                type: 'shadow'
            },
            formatter: function (params) {
                if (params.seriesType === 'boxplot') {
                    var data = params.data;
                    var value = data.value;
                    var itemName = params.name;
                    var tooltipContent = 'Dataset：' + itemName + '<br/>';
                    tooltipContent += 'Max：' + value[5] + '<br/>';
                    tooltipContent += 'Upper quartile：' + value[4] + '<br/>';
                    tooltipContent += 'Median：' + value[3] + '<br/>';
                    tooltipContent += 'Low quartile：' + value[2] + '<br/>';
                    tooltipContent += 'Min：' + value[1] + '<br/>';
                    return tooltipContent;
                }
            }
        },
        {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        }
    ],

   dataZoom: [
            {
                type: 'slider',
                show: true,
                start: 40,
                end: 80,
                showDataShadow: false,
                showDetail: false,
                handleSize: '10',
                orient:'horizontal',
                bottom: 30,
                handleIcon:'M-9.35,34.56V42m0-40V9.5m-2,0h4a2,2,0,0,1,2,2v21a2,2,0,0,1-2,2h-4a2,2,0,0,1-2-2v-21A2,2,0,0,1-11.35,9.5Z',
                moveHandleIcon: 'M-320.9-50L-320.9-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-348-41-339-50-320.9-50z M-212.3-50L-212.3-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-239.4-41-230.4-50-212.3-50z M-103.7-50L-103.7-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-130.9-41-121.8-50-103.7-50z'
            },
            {
                type: 'inside',
                orient:'horizontal',
                start: 0,
                end: 50
            }
        ],
  grid: {
    left: '10%',
    right: '10%',
    top:'15%',
    bottom: '10%'
  },
  xAxis: {
    type: 'category',
    data:["a1","a2","a3","a4","a5"],
    position: 'top', // 将 x 坐标轴位置设置为顶端
    
        axisLabel: {
            rotate: 33, //横坐标旋转
            fontSize:12, // 设置默认字体大小
            //设置坐标某个值的颜色
            formatter: function (value) {
                if (value === $("#dataset").val()) {
                    return '{a|' + value + '}';
                } else {
                    return value;
                }
            },
            
            rich: {
                a: {
                    color: '#a90000',
                    fontWeight: 800, // Set the font weight (bold) here
                    cursor: 'pointer' // 设置鼠标悬停时的鼠标样式为手型
                }
            }
        },
  },
  yAxis: {
    type: 'value',
    splitArea: {
      show: true
    }
  },
series: [
    {
      type: 'boxplot',
      itemStyle: {
          color: '#E6E6FA', // 设置箱体的颜色
            },
      data: [
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体2',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体3',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体4',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体5',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体6',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体7',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
       {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },      
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
                {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
      ]
    }
  ]
};

var Box_option_PMT = {
  title: [
//    {
//      text: 'MT-Percent',
//      left: 'center'
//    }
  ],
  graphic: [
    {
      type: 'text',
      left: 50, 
      top: 10, 
      style: textStyle
    }
  ],
  tooltip: [
      {
            trigger: 'item', //柱体触发事件
            axisPointer: {
                type: 'shadow'
            },
            formatter: function (params) {
                if (params.seriesType === 'boxplot') {
                    var data = params.data;
                    var value = data.value;
                    var itemName = params.name;
                    var tooltipContent = 'Dataset：' + itemName + '<br/>';
                    tooltipContent += 'Max：' + value[5] + '<br/>';
                    tooltipContent += 'Upper quartile：' + value[4] + '<br/>';
                    tooltipContent += 'Median：' + value[3] + '<br/>';
                    tooltipContent += 'Low quartile：' + value[2] + '<br/>';
                    tooltipContent += 'Min：' + value[1] + '<br/>';
                    return tooltipContent;
                }
            }
        },
        {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        }
    ],

   dataZoom: [
            {
                type: 'slider',
                show: true,
                start: 60,
                end: 80,
                showDataShadow: false,
                showDetail: false,
                handleSize: '10',
                orient:'horizontal',
                bottom: 30,
                handleIcon:'M-9.35,34.56V42m0-40V9.5m-2,0h4a2,2,0,0,1,2,2v21a2,2,0,0,1-2,2h-4a2,2,0,0,1-2-2v-21A2,2,0,0,1-11.35,9.5Z',
                moveHandleIcon: 'M-320.9-50L-320.9-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-348-41-339-50-320.9-50z M-212.3-50L-212.3-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-239.4-41-230.4-50-212.3-50z M-103.7-50L-103.7-50c18.1,0,27.1,9,27.1,27.1V85.7c0,18.1-9,27.1-27.1,27.1l0,0c-18.1,0-27.1-9-27.1-27.1V-22.9C-130.9-41-121.8-50-103.7-50z'
            },
            {
                type: 'inside',
                orient:'horizontal',
                start: 0,
                end: 50
            }
        ],
  grid: {
    left: '10%',
    right: '10%',
    top:'15%',
    bottom: '10%'
  },
  xAxis: {
    type: 'category',
    data:["a1","a2","a3","a4","a5"],
    position: 'top', // 将 x 坐标轴位置设置为顶端
    
        axisLabel: {
            rotate: 33, //横坐标旋转
            fontSize:12, // 设置默认字体大小
            //设置坐标某个值的颜色
            formatter: function (value) {
                if (value === $("#dataset").val()) {
                    return '{a|' + value + '}';
                } else {
                    return value;
                }
            },
            
            rich: {
                a: {
                    color: '#a90000',
                    fontWeight: 800, // Set the font weight (bold) here
                    cursor: 'pointer' // 设置鼠标悬停时的鼠标样式为手型
                }
            }
        },
  },
  yAxis: {
    type: 'value',
//    name: 'km/s minus 299,000',
    splitArea: {
      show: true
    }
  },
series: [
    {
      type: 'boxplot',
      itemStyle: {
          color: '#E6E6FA', // 设置箱体的颜色
            },
      data: [
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体2',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体3',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体4',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体5',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体6',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体7',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
       {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },      
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },{
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        {
          name: '箱体1',
          value: [1, 2, 3, 4, 5],
          itemStyle: {
          }
        },
        
        
        
        
      ]
    }
  ]
};

function Beeswarm(data,max,min) {
     var total = new Array();
     var tmp=new Array();
     for (var i = 0; i < data.length; i++) {
          var idx_x=Math.random()*(max-min)+min;
          tmp=[idx_x,data[i]];
          total.push(tmp);
  }
  return total;
}
function myBoxdata(arr) {
     var total = new Array();
//     myarr.forEach((item,index,myarr)=> {
//         arr[index]=myarr[index]*1;
//    })
     var min=Math.min.apply(null, arr);
     var max=Math.max.apply(null, arr);
     var quartiles = calculateQuartiles(arr);
     total=[min,quartiles.Q1,quartiles.MID,quartiles.Q3,max];        
//     alert(total);
     return total;
}

function calculateQuartiles(arr) {
    // 对数组进行排序
    arr.sort(function(a, b) {
        return a - b;
    });

    var len = arr.length;
    var q1,mid, q3;

        q1 = arr[Math.floor(len * 1 / 4)];
        mid =arr[Math.floor(len * 1 / 2)];
        q3 = arr[Math.floor(len * 3 / 4)];

    return {
        Q1: q1,
        MID:mid,
        Q3: q3
    };
}


var BeeswarmOption_nCount_data1=[850, 740, 900, 1070, 930];
var BeeswarmOption_nCount_data2=[850, 740, 900, 1070, 930];

var BeeswarmOption_nCount = {
    chart: {
        type: 'boxplot',
        events: {
            // 鼠标悬停在坐标轴上时触发
            mouseOver: function (event) {
                // 获取鼠标相对于图表容器的位置
                var x = event.clientX - this.plotLeft;
                var y = event.clientY - this.plotTop;

                // 添加文字
                this.renderer.text('X: ' + this.xAxis[0].toValue(x) + ', Y: ' + this.yAxis[0].toValue(y), x, y)
                        .attr({
                            id: 'custom-text',
                            zIndex: 5,
                            backgroundColor: 'white',
                            padding: 5,
                            borderRadius: 5
                        })
                        .add();
            },

            // 鼠标移出坐标轴时触发
            mouseOut: function () {
                // 移除之前添加的文字
                this.renderer.getById('custom-text').destroy();
            },
            load: function () {
                var chart = this;
                var renderer = chart.renderer;
                // 添加文字
//                             var text = renderer.text('P-value=0.01', 300, 220)
//                                           .css({
//                                                  'font-size': '16px',
//                                                   'fill': '#000',
////                                                   'font-style': 'italic',
//                                                   'font-family': 'Times New Roman',
//                                                     }).add();
                // 添加图片
                var myimage = renderer.image('myimg/back.jpg', 550, 15, 20, 20)
                        .css({
                            cursor: 'pointer',
                        })
                        .attr({
                            'data-point': 'custom-data'
                        })
                        .add();
                myimage.on('mouseover', function () {

                    customText = renderer.text('Go Back', 540, 55).css({
                        'font-size': '12px',
                        'fill': '#000',
                        'font-family': 'Times New Roman',
                    })
                            .attr({
                                'class': 'custom-text'
                            })
                            .add();
                });

                myimage.on('mouseout', function () {
                    // 鼠标移出时移除文字
                    customText.destroy();
                });
                // 定义点击函数
                myimage.on('click', function () {//                                               
                    $("#container_left_1").css("display", "block");//显示元素
                    $("#container_left_2").css("display", "none");// 隐藏元素，占位置
                    // 执行其他点击操作
                });
            }
        }
    },
    title: {
        text: 'Highcharts 箱线图',
        style: {
            fontSize: '18px', // 设置字体大小
            fontWeight: 'bold', // 设置字体粗细
            color: '#a90000' // 设置字体颜色
        }
    },
    legend: {
        enabled: false
    },
    xAxis: {
        categories: ['Primary', 'Metastasis'],
        labels: {
            style: {
                fontSize: '18px', // 设置字体大小
                fontWeight: 'bold', // 设置字体粗细
                color: '#333333' // 设置字体颜色
            }
        }
    },
    yAxis: {
        title: {
            text: 'nCount',
            style: {
                fontSize: '18px', // 设置字体大小
                fontWeight: 'bold', // 设置字体粗细
                color: '#333333' // 设置字体颜色
            }
        },
        labels: {
            style: {
                fontSize: '15px', // 设置字体大小
                fontWeight: 'bold', // 设置字体粗细
                color: '#333333' // 设置字体颜色
            }
        },
    },
    credits: {
        enabled: false//删除highcharts标记
    },

    tooltip: {
        style: {
            fontSize: '15px' // 设置字体大小

        }
    },
    plotOptions: {
        boxplot: {
            color: "#a90000",
            lineWidth: 2, // 设置箱线图的宽度
            fillOpacity: 0.1 // 设置箱体的填充透明度为 0.5
        },                 
    },
    series: [{
            name: 'nCount',
            data: [
                myBoxdata(BeeswarmOption_nCount_data1),
                myBoxdata(BeeswarmOption_nCount_data2)
            ],
            tooltip: {
                headerFormat: 'Sampletype： {point.key}<br>',
            },
            zIndex: 2
        },
        {
            name: 'Data',
            type: 'scatter',
            data: Beeswarm(BeeswarmOption_nCount_data1, -0.25, 0.25).concat(Beeswarm(BeeswarmOption_nCount_data2, 0.75, 1.25)),
            tooltip: {
                pointFormat: function () {}
            },
            marker: {
                radius: 1.5//设置标记点的大小
            },
            dataLabels: {// 设置数据标签
                enabled: false // 禁用数据标签，即不显示文字
            },
            zIndex: 1
        }]
};

var BeeswarmOption_nFeature_data1=[850, 740, 900, 1070, 930];
var BeeswarmOption_nFeature_data2=[850, 740, 900, 1070, 930];
var BeeswarmOption_nFeature={
         chart: {
                    type: 'boxplot',
                    events: {
            // 鼠标悬停在坐标轴上时触发
            mouseOver: function (event) {
                // 获取鼠标相对于图表容器的位置
                var x = event.clientX - this.plotLeft;
                var y = event.clientY - this.plotTop;

                // 添加文字
                this.renderer.text('X: ' + this.xAxis[0].toValue(x) + ', Y: ' + this.yAxis[0].toValue(y), x, y)
                        .attr({
                            id: 'custom-text',
                            zIndex: 5,
                            backgroundColor: 'white',
                            padding: 5,
                            borderRadius: 5
                        })
                        .add();
            },

            // 鼠标移出坐标轴时触发
            mouseOut: function () {
                // 移除之前添加的文字
                this.renderer.getById('custom-text').destroy();
            },
                         load: function () {
                             var chart = this;
                             var renderer = chart.renderer;
                             var myimage = renderer.image('myimg/back.jpg', 550, 15, 20, 20)
                                                     .css({
                                                         cursor: 'pointer',
                                                     })
                                                     .attr({
                                                         'data-point': 'custom-data'
                                                     })
                                                     .add();
                            myimage.on('mouseover', function () {

                                customText = renderer.text('Go Back', 540, 55).css({
                                    'font-size': '12px',
                                    'fill': '#000',
                                    'font-family': 'Times New Roman',
                                })
                                        .attr({
                                            'class': 'custom-text'
                                        })
                                        .add();
                            });

                            myimage.on('mouseout', function () {
                                // 鼠标移出时移除文字
                                customText.destroy();
                            });
                                             // 定义点击函数
                            myimage.on('click', function () {//                                               
                                $("#container_middle_1").css("display", "block");//显示元素
                                $("#container_middle_2").css("display", "none");// 隐藏元素，占位置
                                // 执行其他点击操作
                            });
                                         }
                                }
                },
         title: {
            text: 'Highcharts 箱线图',
            style: {
                fontSize: '18px', // 设置字体大小
                fontWeight: 'bold', // 设置字体粗细
                color: '#a90000' // 设置字体颜色
            }
        },
         legend: {
            enabled: false
        },
                xAxis: {
                    categories: ['Primary', 'Metastasis'],
                    labels: {
                         style: {
                             fontSize: '18px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        }
                    },
                yAxis: {
                    title: {
                        text: 'nFeature',
                        style: {
                             fontSize: '18px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        },
                    labels: {
                         style: {
                             fontSize: '15px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        },
                    },
                credits: {
                  enabled: false//删除highcharts标记
                },

                 tooltip: {
                    style: {
                        fontSize: '15px' // 设置字体大小

                    }

                },
               plotOptions: {
                  boxplot: {
                      color:"#a90000",
                      lineWidth: 2, // 设置箱线图的宽度
                      fillOpacity: 0.1 // 设置箱体的填充透明度为 0.5
                     },
//                   scatter: {
//                      fillOpacity: 0.5
//                     },                    
                },
                series: [{
                        name: 'nCount',
                        data: [
                             myBoxdata(BeeswarmOption_nFeature_data1),
			     myBoxdata(BeeswarmOption_nFeature_data2)
                        ],
                        tooltip: {
                            headerFormat: 'Sampletype： {point.key}<br>',
                        },
                        zIndex:2
                    }, 
                     {
				name: 'Data',
				type: 'scatter',
                                data:Beeswarm(BeeswarmOption_nFeature_data1,-0.25,0.25).concat(Beeswarm(BeeswarmOption_nFeature_data2,0.75,1.25)),
                                tooltip: {
                                    pointFormat:  function (){}
                                },
				marker: {
				     radius: 1.5//设置标记点的大小
				},
                                dataLabels: { // 设置数据标签
                                    enabled: false // 禁用数据标签，即不显示文字
                                 },
                                 zIndex:1
		}]               
            };

var BeeswarmOption_PMT_data1=[850, 740, 900, 1070, 930];
var BeeswarmOption_PMT_data2=[850, 740, 900, 1070, 930];
var BeeswarmOption_PMT={
         chart: {
                    type: 'boxplot',
                    events: {
            // 鼠标悬停在坐标轴上时触发
            mouseOver: function (event) {
                // 获取鼠标相对于图表容器的位置
                var x = event.clientX - this.plotLeft;
                var y = event.clientY - this.plotTop;

                // 添加文字
                this.renderer.text('X: ' + this.xAxis[0].toValue(x) + ', Y: ' + this.yAxis[0].toValue(y), x, y)
                        .attr({
                            id: 'custom-text',
                            zIndex: 5,
                            backgroundColor: 'white',
                            padding: 5,
                            borderRadius: 5
                        })
                        .add();
            },

            // 鼠标移出坐标轴时触发
            mouseOut: function () {
                // 移除之前添加的文字
                this.renderer.getById('custom-text').destroy();
            },
                         load: function () {
                             var chart = this;
                             var renderer = chart.renderer;
                             var myimage = renderer.image('myimg/back.jpg', 550, 15, 20, 20)
                                                     .css({
                                                         cursor: 'pointer',
                                                     })
                                                     .attr({
                                                         'data-point': 'custom-data'
                                                     })
                                                     .add();
                            myimage.on('mouseover', function () {

                                customText = renderer.text('Go Back', 540, 55).css({
                                    'font-size': '12px',
                                    'fill': '#000',
                                    'font-family': 'Times New Roman',
                                })
                                        .attr({
                                            'class': 'custom-text'
                                        })
                                        .add();
                            });

                            myimage.on('mouseout', function () {
                                // 鼠标移出时移除文字
                                customText.destroy();
                            });
                                             // 定义点击函数
                            myimage.on('click', function () {//                                               
                                $("#container_right_1").css("display", "block");//显示元素
                                $("#container_right_2").css("display", "none");// 隐藏元素，占位置
                                // 执行其他点击操作
                            });
                                         }
                                }
                },
         title: {
            text: 'Highcharts 箱线图',
            style: {
                fontSize: '18px', // 设置字体大小
                fontWeight: 'bold', // 设置字体粗细
                color: '#a90000' // 设置字体颜色
            }
        },
         legend: {
            enabled: false
        },
                xAxis: {
                    categories: ['Primary', 'Metastasis'],
                    labels: {
                         style: {
                             fontSize: '18px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        }
                    },
                yAxis: {
                    title: {
                        text: 'MT-percent',
                        style: {
                             fontSize: '18px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        },
                    labels: {
                         style: {
                             fontSize: '15px', // 设置字体大小
                             fontWeight: 'bold', // 设置字体粗细
                             color: '#333333' // 设置字体颜色
                            }
                        },
                    },
                credits: {
                  enabled: false//删除highcharts标记
                },

                 tooltip: {
                    style: {
                        fontSize: '15px' // 设置字体大小

                    }
                },
               plotOptions: {
                  boxplot: {
                      color:"#a90000",
                      lineWidth: 2, // 设置箱线图的宽度
                      fillOpacity: 0.1 // 设置箱体的填充透明度为 0.5
                     },               
                },
                series: [{
                        name: 'nCount',
                        data: [
                             myBoxdata(BeeswarmOption_PMT_data1),
			     myBoxdata(BeeswarmOption_PMT_data2)
                        ],
                        tooltip: {
                            headerFormat: 'Sampletype： {point.key}<br>',
                        },
                        zIndex:2
                    }, 
                     {
				name: 'Data',
				type: 'scatter',
                                data:Beeswarm(BeeswarmOption_PMT_data1,-0.25,0.25).concat(Beeswarm(BeeswarmOption_PMT_data2,0.75,1.25)),
                                tooltip: {
                                    pointFormat:  function (){}
                                },
				marker: {
				     radius: 1.5//设置标记点的大小
				},
                                dataLabels: { // 设置数据标签
                                    enabled: false // 禁用数据标签，即不显示文字
                                 },
                                 zIndex:1
		}]               
            };
            