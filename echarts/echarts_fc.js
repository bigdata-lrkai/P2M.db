function fontSize(res){
	const clientWidth = window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;
	if (!clientWidth) return;
	let fontSize = clientWidth / 1920;
	return res*fontSize;
}

var fc_left_option = {
        title: {
        },
        tooltip:{
        },
        toolbox: {
            feature: {
              saveAsImage: {},
              dataView: {},
              magicType: {
                type: ['line', 'bar']
              }
            },
            right:70
        },
        grid:{
            left:'2%',
            bottom:'10%',
            width:"50%",
            height:"85%"
        },
        xAxis: {
                name:'P-value(-log10)',
                type:'value',
                max:20,
                nameLocation: 'center',
                nameGap: 30, 
                axisLabel: {
                        color: '#000'
                },
                axisTick: {
                        show: true
                },
                axisLine: {
                        show: true
                },
                nameTextStyle: {
                        fontSize: 14 // 设置名称字体大小
                }
         },
         yAxis: {
                type:'category',
                data: [],
                position:'right',
                axisLine: {
                        show: false
                },
                axisTick: {
                        show: false
                },
                axisLabel: {
                    color: '#000', 
                    fontSize: fontSize(13),
                formatter: function(value) {
                    if (value.length > 40) {
                        var index = value.lastIndexOf(' ',40);
                        if (index !== -1) {
                            return value.slice(0, index) + '\n' + value.slice(index + 1);
                        }
                    }
                    return value;
                }
                 },
                z: 10
        },
        dataZoom: [
                {
                type: 'inside',
                        orient:'vertical'
                }
        ],
        series: [
                {
                type: 'bar',
                        showBackground: true,
                        itemStyle: {
                        color: '#a6abf1'
                        },
                        emphasis: {
                        itemStyle: {
                        color: '#FF0000'
                        }
                        },
                        data: []
                }
                ]
};
        
var fc_right_option = {
        title: {
        },
        tooltip:{
        },
        toolbox: {
            feature: {
              saveAsImage: {},
              dataView: {},
              magicType: {
                type: ['line', 'bar']
              }
            },
            right:25
        },
        grid:{
            right:'2%',
            bottom:'10%',
            width:"50%",
            height:"85%"
        },
        xAxis: {
                name:'P-value(-log10)',
                type:'value',
                max:20,
                nameLocation: 'center',
                nameGap: 30, 
                axisLabel: {
                        color: '#000'
                },
                axisTick: {
                        show: true
                },
                axisLine: {
                        show: true
                },
                nameTextStyle: {
                        fontSize: 14 // 设置名称字体大小
                }
                },
         yAxis: {
                type:'category',
                data: [],
                axisLine: {
                        show: false
                },
                axisTick: {
                        show: false
                },
                axisLabel: {
                    color: '#000', 
                    fontSize: fontSize(13),
                formatter: function(value) {
                    if (value.length > 40) {
                        var index = value.lastIndexOf(' ',40);
                        if (index !== -1) {
                            return value.slice(0, index) + '\n' + value.slice(index + 1);
                        }
                    }
                    return value;
                }
                },
                z: 10
        },
        dataZoom: [
                {
                type: 'inside',
                        orient:'vertical'
                }
        ],
        series: [
                {
                type: 'bar',
                        showBackground: true,
                        itemStyle: {
                        color: '#FFA500'
                        },
                        emphasis: {
                        itemStyle: {
                        color: '#FF0000'
                        }
                        },
                        data: []
                }
                ]
};