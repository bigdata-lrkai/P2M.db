function fontSize(res){
	const clientWidth = window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;
	if (!clientWidth) return;
	let fontSize = clientWidth / 1920;
	return res*fontSize;
}

const itemStyle = {
    opacity: 0.8,
    shadowBlur: 10,
    shadowOffsetX: 0,
    shadowOffsetY: 0,
    shadowColor: 'rgba(0,0,0,0.3)'
};
var labeldata1 =[];
var labeldata2 =[];
var labeldatal =[];
var labeldatar =[];
var de_left_option = {
    color: ['#a6abf1'],
    grid: {
        
    },
    tooltip: {
        backgroundColor: 'rgba(255,255,255,0.7)',
        formatter: function (param) {
            var value = param.value;
            // prettier-ignore
            return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
                    + 'log2FC：' + value[1]
                    + '</div>'
                    + 'Gene :' + value[2] + '<br>';
        }
    },
     toolbox: {
    feature: {
      dataView: {}
    }
  },
    xAxis: {
        type: 'value',
        axisLabel: {
            show: false
        },
        splitLine: {
            show: false
        }
    },
    yAxis: {
        type: 'value',
        name: 'log2FC',
        nameLocation: 'end',
        nameTextStyle: {
            fontSize: 12
        },
        splitLine: {
            show: false
        },
        axisLine: {
            onZero: false
        }
    },
    visualMap: [
        {
            right: '2%',
            top: '5%',
            dimension: 1,
            itemWidth: 25,
            itemHeight: 120,
            calculable: true,
            precision: 0.1,
            text: ['log2FC'],
            textGap: 20,
            inRange: {
                symbolSize: [4, 20]
            },
            outOfRange: {
                symbolSize: [4, 20],
                color: ['rgba(255,255,255,0.4)']
            },
            controller: {
                inRange: {
                    color: ['#a6abf1']
                },
                outOfRange: {
                    color: ['#999']
                }
            }
        },
        {
            left: 'right',
            bottom: '5%',
            dimension: 1,
            itemHeight: 0,
            inRange: {
                colorLightness: [0.9, 0.2]
            },
            outOfRange: {
                color: ['rgba(255,255,255,0.4)']
            },
            controller: {
                inRange: {
                    color: ['#c23531']
                },
                outOfRange: {
                    color: ['#999']
                }
            }
        }
    ],
    series:
            {
                type: 'scatter',
                itemStyle: itemStyle,
                data: [],
                label: {
                    show: true,
                    position: 'top',
                    formatter: function (params) {
                      if (labeldatal.includes(params.value[1])) {
                        return params.value[2]; 
                    } else {
                        return ''; 
                    }
                    }
            }
            }
};


var de_right_option = {
    color: ['#ffa500'],
    grid: {
        left:'8%'
    },
    tooltip: {
        backgroundColor: 'rgba(255,255,255,0.7)',
        formatter: function (param) {
            var value = param.value;
            // prettier-ignore
            return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
                    + 'log2FC：' + value[1]
                    + '</div>'
                    + 'Gene : ' + value[2] + '<br>';
        }
    },
     toolbox: {
    feature: {
      dataView: {}
    }
  },
    xAxis: {
        type: 'value',
        splitLine: {
            show: false
        },
        axisLabel: {
            show: false
        }
    },
    yAxis: {    
        type: 'value',
        name: 'log2FC',
        nameLocation: 'end',
        nameTextStyle: {
            fontSize: 12
        },
        splitLine: {
            show: false
        },
        axisLine: {
            onZero: false
        }
    },
    visualMap: [
        {
            left: 'right',
            top: '5%',
            dimension: 1,
            itemWidth: 25,
            itemHeight: 120,
            calculable: true,
            precision: 0.1,
            text: ['log2FC'],
            textGap: 20,
            inRange: {
                symbolSize: [4, 20]
            },
            outOfRange: {
                symbolSize: [4, 20],
                color: ['rgba(255,255,255,0.4)']
            },
            controller: {
                inRange: {
                    color: ['#c23531']
                },
                outOfRange: {
                    color: ['#999']
                }
            }
        },
        {
            left: 'right',
            bottom: '5%',
            dimension: 1,
            itemHeight: 0,
            inRange: {
                colorLightness: [0.9, 0.2]
            },
            outOfRange: {
                color: ['rgba(255,255,255,0.4)']
            },
            controller: {
                inRange: {
                    color: ['#c23531']
                },
                outOfRange: {
                    color: ['#999']
                }
            }
        }
    ],
    series:
            {
                type: 'scatter',
                itemStyle: itemStyle,
                data: [],
                    label: {
                    show: true,
                    position: 'top',
                    formatter: function (params) {
                      if (labeldatar.includes(params.value[1])) {
                        return params.value[2]; 
                    } else {
                        return ''; 
                    }
                    }
            }
        }
};


var bde_middle_option = {
  title: [{
    text: 'Number of genes',
    top:'30',
    left: '12%',
    textStyle:{
      color:'black',
      fontSize: 13
    }
  },{
    left:'70%',
    top:'20',
    subtext: 'Number of gene',
    subtextStyle:{
      color:'black',
      fontWeight:'blod',
      fontSize: 13
    }
  }
  ],
  grid: {
    left: '3%',
    right: '7%',
    bottom: '7%',
    containLabel: true
  },
  tooltip: {
    showDelay: 0,
    formatter: function (params) {
      if (params.value.length > 1) {
        return (
          'Gene : '+ params.value[2] + '<br/>' +
          'Pval : '+params.value[1]
        );
      } else {
        return (
          params.name
        );
      }
    }
  },
  toolbox: {
    feature: {
      dataView: {}
    }
  },
  legend: {
    data: ['Supressed', 'Activated'],
    left: 'center',
    bottom: 10
  },
  xAxis: [
    {
      type: 'value',
      scale: true,
      axisLabel: {
        formatter: '{value}'
      },
      splitLine: {
        show: false
      }
    }
  ],
  yAxis: [
    {
      type: 'value',
      scale: true,
      axisLabel: {
        formatter: '{value}'
      },
      splitLine: {
        show: false
      },        
     axisLine: {
            onZero: false
       }
    }
  ],
  series: [
     {
      name: 'Activated',
      type: 'scatter',
      emphasis: {
        focus: 'series'
      },
     itemStyle: {
        color: '#795e29'
     },
     label: {
        show: true,
        position: 'top',
        labelLayout:{
         "overlap": "avoid"
        },
        formatter: function (params) {
          if (labeldata1.includes(params.value[1])) {
            return params.value[2]; 
        } else {
            return ''; 
        }
        }
      },
      data: [[-3.47, 8.57,'MMP1'], [-0.83,8.22,'CCNB1']]
    },
    {
      name: 'Supressed',
      type: 'scatter',
      emphasis: {
        focus: 'series'
      },
      label: {
        show: true,
        position: 'top',
        avoidLabelOverlap:true,
        formatter: function (params) {
          if (labeldata2.includes(params.value[1])) {
            return params.value[2]; 
        } else {
            return ''; 
          }
        }
      },
      itemStyle: {
        color: '#a8abf3'
      },
      // prettier-ignore
      data: [[1.28,8.64,'SELL'], [1.61,5.64,'CYP1B1']]
    },
    {
      name: 'none',
      type: 'scatter',
      emphasis: {
        focus: 'series'
      },
     itemStyle: {
        color: '#eeeeee'
     },
      // prettier-ignore
      data: [[-2,12,'SELL'], [1.61,5.64,'CYP1B1']]
    },
    {
      name: 'markline',
      type: 'scatter',
      data: [],
      markLine: {
        lineStyle: {
          type: 'dashed',
          color:'black',
          emphasis: {
            width:1
          }
        },
        label:{
            show:false
        },
        symbol: 'none',
        data: [{ xAxis: -0.5},{ xAxis: 0.5 },{ yAxis: 1.3 }]
      }
    }
  ]
};