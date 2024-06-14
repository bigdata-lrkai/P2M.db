//第一二个饼图

var option1 = {
  title: {
    text: '同名数量统计',
    left: '20%',
    top: '10%'
  },
  tooltip: {
    trigger: 'item',
    formatter: '{a} <br/>{b} : {c} ({d}%)'
  },
  legend: {
    type: 'scroll',
    orient: 'vertical',
    right: 10,
    top: 100,
    bottom: 20,
    data: []
  },
  series: [
    {
      name: '姓名',
      type: 'pie',
      radius: '55%',
      center: ['40%', '50%'],
      data: [],
      emphasis: {
        itemStyle: {
          shadowBlur: 10,
          shadowOffsetX: 0,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      }
    }
  ]
};


//第二个是堆叠图
var colors = ["#FF0000","#FF7F00", "#007fff", "#7FFF00", "#00FF00", "#00FF7F", "#00FFFF", "#007FFF", "#0000FF", "#7F00FF", "#FF00FF", "#FF007F", "#FF8080", "#FFBF80", "#FFFF80", "#BFFF80", "#80FF80", "#80FFBF", "#80FFFF", "#80BFFF", "#8080FF"];

var option2_1 =     {
  title: {
    text: 'Cell Type Distribution of singleR',
    left: '35%',
    top: '2%'
  },
  tooltip: {
    trigger: 'axis',
    textStyle: {
        fontSize: 10
    },
    axisPointer: {
      type: 'shadow'
    }
  },
  legend: {
      orient:"vertical",
      type: 'scroll',
      right:"20px",
      formatter: function (name) {
            if (name.length > 15) {
                var index = 15;
                while (index < name.length && name[index] !== ' ') {
                    index++;
                }
                if (index < name.length) {
                    return name.substring(0, index) + '\n' + name.substring(index + 1);
                }
            }
            return name;
     },
       textStyle: {
            fontSize: 10
        }
  },
  dataZoom:{
      show:true,
      type: 'slider',
      bottom:'15px'
  },
  grid: {
    left: '3%',
    right: '11%',
    bottom: '13%',
    containLabel: true
  },
  xAxis: [{
  axisLabel: {
    interval: 0, // 代表显示所有x轴标签
    rotate: 45, // 代表逆时针旋转 45 度
    textStyle: {
      color: "black", // 字体颜色
      fontSize: 12 // 字体大小
    }
  }
}],
  yAxis: [
    {
//      name:"Cell percentage",
      type: 'value',
      max:'100',
//      nameTextStyle: { 
//      color: '#000', 
//      fontSize: 14
//    },
    nameLocation: "middle",
     axisLabel: {
         show:true,
         type:"percentage",
         formatter: '{value} %' ,
         textStyle: {
              fontSize: 14 // 字体大小
          }
  }
    }
  ],
  series: [
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
      color:colors[0]
    },
    {
      name: 'Email',
      color:colors[1],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[2],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[3],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[4],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[5],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[6],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[7],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[8],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[9],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[10],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[11],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
        {
      name: 'Email',
      color:colors[12],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[13],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[14],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[15],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[16],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[17],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[18],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[19],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[20],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    }
  ]
};

var option2_2 = {
  title: {
    text: 'Cell Type Distribution of scType',
    left: '35%',
    top: '2%'
  },
  tooltip: {
    trigger: 'axis',
    axisPointer: {
      type: 'shadow'
    },
    textStyle: {
      fontSize: 10
    }
  },
  legend: {
      orient:"vertical",
      type: 'scroll',
      right:"-10px",
      formatter: function (name) {
            // 在这里可以自定义处理文本，超过15个字符且遇到空格时才进行换行
            if (name.length > 15) {
                var index = 15;
                while (index < name.length && name[index] !== ' ') {
                    index++;
                }
                if (index < name.length) {
                    return name.substring(0, index) + '\n' + name.substring(index + 1);
                }
            }
            return name;
        },
      textStyle: {
            fontSize: 11
        }
  },
  dataZoom:{
      show:true,
      type: 'slider',
      bottom:'15px'
  },
  grid: {
    left: '3%',
    right: '11%',
    bottom: '13%',
    containLabel: true
  },
  xAxis: [{
  axisLabel: {
    interval: 0, // 代表显示所有x轴标签
    rotate: 45, // 代表逆时针旋转 45 度
    textStyle: {
      color: "black", // 字体颜色
      fontSize: 12 // 字体大小
    }
  }
}],
  yAxis: [
    {
//      name:"Cell percentage",
      type: 'value',
      max:'100',
//      nameTextStyle: { 
//      color: '#000', 
//      fontSize: 14
//    },
    nameLocation: "middle",
     axisLabel: {
         show:true,
         type:"percentage",
         formatter: '{value} %' ,
         textStyle: {
              fontSize: 14 // 字体大小
          }
  }
    }
  ],
  series: [
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
      color:colors[0]
    },
    {
      name: 'Email',
      color:colors[1],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[2],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[3],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[4],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[5],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[6],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[7],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[8],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[9],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[10],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[11],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
        {
      name: 'Email',
      color:colors[12],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[13],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[14],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[15],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[16],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[17],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[18],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[19],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      color:colors[20],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
      color:colors[0]
    },
    {
      name: 'Email',
      color:colors[1],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      color:colors[2],
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },    
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210],
    },
    {
      name: 'Email',
      type: 'bar',
      stack: 'Ad',
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    }
  ]
};

//第三个是普通柱状图
var option3 = {
  title: {
    text: '同名数量统计',
    left: '35%',
    top: '0%'
  },
  tooltip: {
    trigger: 'axis',
    axisPointer: {
      type: 'shadow'
    }
  },
  dataZoom:{
      show:true,
      type: 'slider',
      bottom:'15px',
      start: 0,  
      end: 5
  },
  grid: {
    left: '3%',
    right: '4%',
    bottom: '13%',
    containLabel: true
  },
  xAxis: [
    {
      type: 'category',
      data: [],
      axisTick: {
        alignWithLabel: true
      },
    axisLabel: {
        interval: "auto", // 代表显示所有x轴标签
        rotate: 45, // 代表逆时针旋转 45 度
        textStyle: {
        fontSize: 12 // 字体大小
        }
    }
   }
  ],
  yAxis: [
    {
      type: 'value'
    }
  ],
  series: [
    {
      name: 'Direct',
      type: 'bar',
      barWidth: '60%',
      data: [],
      color:"#ffa500"
    }
  ]
};

//第四个是好看柱状图（大雾

var option4_left = {
  title: {
    text: '特性示例：渐变色 阴影 点击缩放',
    left:'35%'
  },
  tooltip:{},
  grid:{
      bottom:"40%"
  },
  dataZoom:{
      show:true,
      type: 'slider',
      bottom:'50px',
      start: 0,  
      end: 5
  },
  xAxis: {
    data: ['点', '击', '柱', '子', '或', '者', '两', '指', '在', '触', '屏', '上', '滑', '动', '能', '够', '自', '动', '缩', '放'],
    axisTick: {
      show: false
    },
    axisLine: {
      show: false
    },
    z: 10,
    axisLabel: {
        interval: "auto", // 代表显示所有x轴标签
        rotate: 45, // 代表逆时针旋转 45 度
        textStyle: {
        fontSize: 10 // 字体大小
        }
    }
  },
  yAxis: {
    axisLine: {
      show: false
    },
    axisTick: {
      show: false
    },
    axisLabel: {
      color: '#999'
    }
  },
  series: [
    {
      type: 'bar',
      showBackground: true,
      itemStyle: {
        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
          { offset: 0, color: '#83bff6' },
          { offset: 0.5, color: '#188df0' },
          { offset: 1, color: '#188df0' }
        ])
      },
      data: [220, 182, 191, 234, 290, 330, 310, 123, 442, 321, 90, 149, 210, 122, 133, 334, 198, 123, 125, 220]
    }
  ]
};

var option4_right = {
  title: {
    text: '特性示例：渐变色 阴影 点击缩放',
    left:'35.1%'
  },
  tooltip:{},
  grid:{
      bottom:"40%"
  },
  dataZoom:{
      show:true,
      type: 'slider',
      bottom:'50px',
      start: 0,  
      end: 40
  },
  xAxis: {
    data: ['点', '击', '柱', '子', '或', '者', '两', '指', '在', '触', '屏', '上', '滑', '动', '能', '够', '自', '动', '缩', '放'],
    axisTick: {
      show: false
    },
    axisLine: {
      show: false
    },
    z: 10,
    axisLabel: {
        interval: "auto", // 代表显示所有x轴标签
        rotate: 45, // 代表逆时针旋转 45 度
        textStyle: {
        fontSize: 10 // 字体大小
        }
    }
  },
  yAxis: {
    axisLine: {
      show: false
    },
    axisTick: {
      show: false
    },
    axisLabel: {
      color: '#999'
    }
  },
  series: [
    {
      type: 'bar',
      showBackground: true,
      itemStyle: {
        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
          { offset: 0, color: ' #ffd08c' },
          { offset: 0.5, color: '#ffc04d' },
          { offset: 1, color: '#ffa500' }
        ])
      },
      data: [220, 182, 191, 234, 290, 330, 310, 123, 442, 321, 90, 149, 210, 122, 133, 334, 198, 123, 125, 220]
    }
  ]
};
