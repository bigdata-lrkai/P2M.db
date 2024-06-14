const max = 1;
const min = -1;
const radardata = [1,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05];

var radar_chart_left = {
    title: {
        top: '5%',
        text: 'Average function score in P',
        subtext: '',
        x: 'center',
        textStyle: {
            align: 'center',
            color: '#000000',
            fontSize: 20,
            fontWeight: 'bold'
        }
    },
    tooltip: {},
    radar: {
        radius: '54%',
        center: ['50%', '50%'],
        startAngle: -90,
        splitNumber: 5,
        nameGap: '15',
        name: {
            textStyle: {
                fontSize: 16
            }
        },
        axisLine: {
            lineStyle: {
                color: '#FF69B4'
            }
        },
        axisLabel: {
            show: false, 
            fontSize: 10, 
            color: '#333', 
            align: 'left', 
            fontWeight:'bold',
            formatter: function(value) {
                return value.toFixed(2);
            }
        },
        splitLine: {
            lineStyle: {
                width: 5,
                color: '#20B2AA'
            }
        },
        splitArea: {
            areaStyle: {
                color: ['#e7efff', '#fff', ].reverse()
            }
        },
        indicator: [
            {name: 'G1/S', min: min, max: max, color: "#333359"},
            {name: 'S', min: min, max: max, color: "#333359"},
            {name: 'G2/M', min: min, max: max, color: "#333359"},
            {name: 'M', min: min, max: max, color: "#333359"},
            {name: 'M/G1', min: min, max: max, color: "#333359"},
            {name: 'Angiogenesis', min: min, max: max, color: "#333359"},
            {name: 'Apoptosis', min: min, max: max, color: "#333359"},
            {name: 'Differentiation', min: min, max: max, color: "#333359"},
            {name: 'DNA damage', min: min, max: max, color: "#333359"},
            {name: 'DNA repair', axisLabel: { show: true }, min: min, max: max, color: "#333359"},
            {name: 'EMT', min: min, max: max, color: "#333359"},
            {name: 'Hypoxia', min: min, max: max, color: "#333359"},
            {name: 'Inflammation', min: min, max: max, color: "#333359"},
            {name: 'Invasion', min: min, max: max, color: "#333359"},
            {name: 'Metastasis', min: min, max: max, color: "#333359"},
            {name: 'Proliferation', min: min, max: max, color: "#333359"},
            {name: 'Quiescence', min: min, max: max, color: "#333359"},
            {name: 'Stemness', min: min, max: max, color: "#333359"}
        ]
    },
    series: [{
            type: 'radar',
            symbolSize: 4,
            itemStyle: {
                borderColor: '#32C5E9',
                borderWidth: 0.5,
                color: '#fff',
                emphasis: {
                    lineStyle: {
                        width: 4
                    },
                    areaStyle: {
                        opacity: 0.8,
                        shadowBlur: 10
                    }
                }
            },
            areaStyle: {
                normal: {
                    width: 1,
                    opacity: 0.3,
                    shadowColor: 'rgba(0, 0, 0, .3)',
                    shadowBlur: 0,
                    shadowOffsetX: 5,
                    shadowOffsetY: 5
                }
            },
            data: [{
                    itemStyle: {
                        color: '#7c16e2',
                        borderColor: 'rgba(51, 51, 51, 0.6)',
                        borderWidth: 10,
                        shadowColor: 'rgba(0, 0, 0, .5)',
                        shadowBlur: 5,
                        shadowOffsetX: 5,
                        shadowOffsetY: 5
                    },
                    value: radardata
                }]
        }]
};

        var radar_chart_right = {
            title: {
                top: '5%',
                text: 'Average function score in M',
                subtext: '',
                x: 'center',
                textStyle: {
                    align: 'center',
                    color: '#000000',
                    fontSize: 20,
                    fontWeight: 'bold'
                }
            },
            tooltip: {},
            radar: {
                radius: '54%',
                center: ['50%', '50%'],
                startAngle: -90,
                splitNumber: 5,
                nameGap: '15',
                name: {
                    textStyle: {
                        fontSize: 16
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: '#20B2AA'
                    }
                },
                axisLabel: {
                    show: false,
                    fontSize: 10,
                    color: '#333',
                    align: 'left',
                    fontWeight: 'bold',
                    formatter: function(value) {
                        return value.toFixed(2);
                    }
                },
                splitLine: {
                    lineStyle: {
                        width: 5,
                        color: '#20B2AA'
                    }
                },
                splitArea: {
                    areaStyle: {
                        color: ['#7FFFD4', '#fff', ].reverse()
                    }
                },
                indicator: [
                    {name: 'G1/S',  min: 0, max: 0, color: "#333359"},
                    {name: 'S', min: 0, max: 0, color: "#333359"},
                    {name: 'G2/M', min: 0, max: 0, color: "#333359"},
                    {name: 'M', min: 0, max: 0, color: "#333359"},
                    {name: 'M/G1', min: 0, max: 0, color: "#333359"},
                    {name: 'Angiogenesis', min: 0, max: 0, color: "#333359"},
                    {name: 'Apoptosis', min: 0, max: 0, color: "#333359"},
                    {name: 'Differentiation', min: 0, max: 0, color: "#333359"},
                    {name: 'DNA damage', min: 0, max: 0, color: "#333359"},
                    {name: 'DNA repair',axisLabel: { show: true }, min: 0, max: 0, color: "#333359"},
                    {name: 'EMT', min: 0, max: 0, color: "#333359"},
                    {name: 'Hypoxia', min: 0, max: 0, color: "#333359"},
                    {name: 'Inflammation', min: 0, max: 0, color: "#333359"},
                    {name: 'Invasion', min: 0, max: 0, color: "#333359"},
                    {name: 'Metastasis', min: 0, max: 0, color: "#333359"},
                    {name: 'Proliferation', min: 0, max: 0, color: "#333359"},
                    {name: 'Quiescence', min: 0, max: 0, color: "#333359"},
                    {name: 'Stemness', min: 0, max: 0, color: "#333359"}
                ]
            },
            series: [{
                type: 'radar',
                symbolSize: 5,
                itemStyle: {
                    borderColor: '#32C5E9',
                    borderWidth: 0.5,
                    color: '#fff',
                    emphasis: {
                        lineStyle: {
                            width: 4
                        },
                        areaStyle: {
                            opacity: 0.8,
                            shadowBlur: 10
                        }
                    }
                },
                areaStyle: {
                    normal: {
                        width: 1,
                        opacity: 0.3,
                        shadowColor: 'rgba(0, 0, 0, .3)',
                        shadowBlur: 0,
                        shadowOffsetX: 5,
                        shadowOffsetY: 5
                    }
                },
                data: [{
                    itemStyle: {
                        color: '#ee6666',
                        borderColor: 'rgba(255, 197, 0, 0.7)',
                        borderWidth: 10,
                        shadowColor: 'rgba(0, 0, 0, .5)',
                        shadowBlur: 5,
                        shadowOffsetX: 5,
                        shadowOffsetY: 5
                    },
                    value: radardata
                }]
            }]
        };
