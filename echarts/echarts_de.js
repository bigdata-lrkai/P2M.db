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
var laber_y =[];
var labeldatal =[];
var labeldatar =[];
de_left_option = {
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


de_right_option = {
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


de_middle_option = {
    tooltip: {
        backgroundColor: 'rgba(255,255,255,0.9)',
        trigger: 'item', // 设置触发类型为单个数据项
        formatter: function (params) {
            if (params.seriesIndex === 0 || params.seriesIndex === 1) {
                return '<div>'+'log2FC:'+ params.value[1]+'<div/>'
                 + 'Gene : ' + params.value[2] + '<br>'
                 + 'Cell : ' + params.value[3] + '<br>';
            } else {
                return; // 不显示 tooltip
            }
        }
    },
    grid: {
         left:'10%'
    },
    xAxis: [{
            type: 'category',
            data: [],
            offset: -265,  
            axisLabel: {
                show: true,
                inside: true,
                color: '#000',
                fontSize: 10,
                interval: 0,
                formatter: function (value) {
                    var newValue = "";
                    var count = 0;
                    for (var i = 0; i < value.length; i++) {
                        if (value[i] === "_") {
                            if (count >= 9) {
                                newValue += "\n";
                            }
                        } else {
                            newValue += value[i];
                            count++;
                        }
                    }
                    if (count <13) {
                        newValue += "\n";
                    }
                    return newValue;
                }
            },
            axisTick: {
                show: false
            },
            axisLine: {
                show: false
            },
            splitLine: {
                show: false
            },
            z: 10
        },
        {
            axisTick: {
                show: false
            },
            axisLine: {
                show: false
            },
            splitLine: {
                show: false
            },
            axisLabel: {
                show: false
            },
            max: 7
        }
    ],
    yAxis: {
        axisTick: {
            show: true
        },
        axisLine: {
            show: true,
            lineStyle: {
                width: 1.5, // 设置轴线的宽度
                color: 'black' // 设置轴线的颜色
            }
        },
        splitLine: {
            show: true
        }
    },
    series: [
        {
            symbolSize: 6,
            type: 'scatter',
            data:[],
            itemStyle: {
                color: '#d62a28' // 设置散点的颜色为红色
            },
            z: 10,
            xAxisIndex: 1,
            label: {
                show: true,
                position: 'top',
                formatter: function (params) {
                        if (laber_y[params.data[4]].includes(params.data[1])) {
                          return params.data[2]; // 如果 params.data[1] 的值在 laber_y 数组中存在，则返回 params.data[2]
                        } else {
                          return ''; // 其他情况不显示标签
                        }
               }
            }
        },
         {
            symbolSize: 6,
            type: 'scatter',
            data:[],
            itemStyle: {
                color: '#0095d1' // 设置散点的颜色为蓝色
            },
            z: 10,
            xAxisIndex: 1,
            label: {
                show: true,
                position: 'top',
                formatter: function (params) {
                        if (laber_y[params.data[4]].includes(params.data[1])) {
                          return params.data[2]; // 如果 params.data[1] 的值在 laber_y 数组中存在，则返回 params.data[2]
                        } else {
                          return ''; // 其他情况不显示标签
                        }
               }
            }
        },
        {
            data: [],
            barCategoryGap: 0,
            stack: 'A',
            silent: true,
            type: 'bar',
            itemStyle: {
                color: function (params) {
                    var colorList = ['#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf','#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf','#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf'];
                    return colorList[params.dataIndex];
                },
                emphasis: {}
            },
            xAxisIndex: 0,
            z: 1
        },
        {
            data: [],
            barCategoryGap: 0,
            stack: 'A',
            type: 'bar',
            silent: true,
            itemStyle: {
                color: function (params) {
                    var colorList = ['#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf','#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf','#f77573', '#d39200', '#90ab04', '#00ba37', '#01c3a1', '#06b5ec', '#5f9aff', '#d37af2', '#f863bf'];
                    return colorList[params.dataIndex];
                }
            },
            xAxisIndex: 0,
            z: 1
        },
        {
            data: [],
            barCategoryGap: 0,
            stack: 'A',
            type: 'bar',
            silent: true,
            itemStyle: {
                color: function (params) {
                    var colorList = ['#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF','#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF','#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF'];
                    return colorList[params.dataIndex];
                }
            },
            xAxisIndex: 0,
            z: 1
        },
        {
            data: [],
            barCategoryGap: 0,
            stack: 'A',
            type: 'bar',
            silent: true,
            itemStyle: {
                color: function (params) {
                    var colorList = ['#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF','#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF','#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF', '#eeeeee','#FFFFFF'];
                    return colorList[params.dataIndex];
                }
            },
            xAxisIndex: 0,
            z: 1
        }
    ]
};
