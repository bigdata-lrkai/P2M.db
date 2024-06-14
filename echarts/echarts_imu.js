var imu_left_option = {
  tooltip: {
    trigger: 'item',
    formatter: '{a} <br/>{b} : {c} ({d}%)'
  },
  grid: {
    top:'10%',
    containLabel: true
  },
  toolbox:{
    feature:{
      dataView:{}
    }
  },
  legend: {
    type: 'scroll',
    left: 10,
    top: 70,
    formatter: function (name) {
    // 如果字符长度超过10，则在第一个空格处换行
    return name.length > 15 ? name.replace(/(.{10})\s/, '$1\n') : name;
    }
  },
  series: [
    {
      name: 'cell type:',
      type: 'pie',
      radius: ['25%', '50%'],
      data: [],
       label: {
//        normal: {
//           formatter: function (params) {
//            // 查找第一个空格出现的位置
//            let spaceIndex = params.name.indexOf(' ');
//            // 如果文本长度超过10并且存在空格，则在第一个空格处换行
//            if (params.name.length > 10 && spaceIndex !== -1) {
//              return params.name.substring(0, spaceIndex) + '\n' + params.name.substring(spaceIndex + 1);
//            }
//            // 如果文本长度不超过10或没有空格，则不换行
//            return params.name;
//          }
//        }
      },
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

var imu_right_option = {
  tooltip: {
    trigger: 'item',
    formatter: '{a} <br/>{b} : {c} ({d}%)'
  },
  grid: {
    top:'10%',
    containLabel: true
  },
  toolbox:{
    feature:{
      dataView:{}
    }
  },
  legend: {
    type: 'scroll',
    top: 70,
    formatter: function (name) {
    // 如果字符长度超过10，则在第一个空格处换行
    return name.length > 15 ? name.replace(/(.{10})\s/, '$1\n') : name;
    }
  },
  series: [
    {
      name: 'cell type:',
      type: 'pie',
      radius: ['25%', '50%'],
      data: [],
       label: {
//        normal: {
//           formatter: function (params) {
//            // 查找第一个空格出现的位置
//            let spaceIndex = params.name.indexOf(' ');
//            // 如果文本长度超过10并且存在空格，则在第一个空格处换行
//            if (params.name.length > 10 && spaceIndex !== -1) {
//              return params.name.substring(0, spaceIndex) + '\n' + params.name.substring(spaceIndex + 1);
//            }
//            // 如果文本长度不超过10或没有空格，则不换行
//            return params.name;
//          }
//        }
      },
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


var imu_middle_option = {
  tooltip: {
    trigger: 'item'
  },
  legend: {},
  toolbox:{
    feature:{
      dataView:{}
    }
  },
  grid: {
    left: '5%',
    right: '5%',
    bottom: '15%',
    containLabel: true
  },
   dataZoom: 
    {
        type: 'slider', // 使用滑动条类型
        xAxisIndex: 0, 
        filterMode: 'empty', // 当拖动时，被排除的数据项显示为空（保持原有数据顺序）
        showDetail: true,
        bottom:'10%'
  },
  xAxis: {
    type: 'category',
    data: [],
    axisLabel:{
      rotate: 45,
      interval: 0,
      hideOverlap: false
   }
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      name: 'Primary',
      type: 'bar',
      stack: 'total',
      label: {
        show: false
      },
      emphasis: {
        focus: 'series'
      },
      data: [320, 302, 301, 334, 390, 330, 320]
    },
    {
      name: 'Metastasis',
      type: 'bar',
      stack: 'total',
      label: {
        show: false
      },
      emphasis: {
        focus: 'series'
      },
      data: [120, 132, 101, 134, 90, 230, 210]
    }
  ]
};