var data_middle=[{name:'AAACCTGAGGAGCGAG.1',value:[-7.815,2.321,'26.43']},{name:'AAACCTGAGGCTAGGT.1',value:[2.437,-0.752,'17.284']},{name:'AAACCTGCACGGCGTT.1',value:[15.971,2.133,'1.969']},{name:'AAACCTGCACTTACGA.1',value:[15.45,3.961,'2.47']},{name:'AAACCTGCAGACGTAG.1',value:[14.638,3.742,'3.283']},{name:'AAACCTGCAGCTATTG.1',value:[-8.862,2.174,'27.473']},{name:'AAACCTGCATGGTCTA.1',value:[3.151,-0.06,'16.7']},{name:'AAACCTGGTATAGTAG.1',value:[-15.189,1.275,'33.832']},
    {name:'AAACCTGGTCACCTAA.1',value:[-15.916,0.199,'34.755']},
    {name:'AAACCTGGTCGCATAT.1',value:[-2.318,2.045,'20.986']}];

var lines=[{coords:[[-14.311,1.057],[-13.991,1.117]]},{coords:[[-14.311,1.057],[-14.628,0.993]]},{coords:[[-13.991,1.117],[-13.671,1.176]]},{coords:[[-13.349,1.234],[-13.027,1.289]]},{coords:[[-13.349,1.234],[-13.671,1.176]]},{coords:[[-13.027,1.289],[-12.703,1.343]]},{coords:[[-12.378,1.395],[-12.703,1.343]]},{coords:[[-12.378,1.395],[-12.052,1.445]]},{coords:[[-11.725,1.494],[-12.052,1.445]]},{coords:[[-11.395,1.541],[-11.725,1.494]]},{coords:[[-11.064,1.586],[-11.395,1.541]]},{coords:[[-11.064,1.586],[-10.732,1.629]]},{coords:[[-10.732,1.629],[-10.397,1.671]]},{coords:[[-10.397,1.671],[-10.060,1.712]]},{coords:[[-9.722,1.752],[-10.060,1.712]]},{coords:[[-9.382,1.789],[-9.722,1.752]]},{coords:[[-9.040,1.825],[-9.382,1.789]]},{coords:[[-8.696,1.860],[-9.040,1.825]]},{coords:[[-8.696,1.860],[-8.349,1.890]]},{coords:[[-8.000,1.916],[-8.349,1.890]]},{coords:[[-7.649,1.939],[-7.296,1.960]]},{coords:[[-7.649,1.939],[-8.000,1.916]]},{coords:[[-7.296,1.960],[-6.939,1.957]]},{coords:[[13.153,3.208],[13.485,3.217]]},{coords:[[13.153,3.208],[12.820,3.197]]},
    {coords:[[13.485,3.217],[13.817,3.222]]},
    {coords:[[14.148,3.226],[13.817,3.222]]}];

var trajectory_option_left = {
    title: {
        top: '2%',
        text: 'Pseudotime',
        textAlign: 'left',
        right: '0%',
        subtext: '',
        textStyle: {
            align: 'center',
            color: '#464646',
            fontSize: 18,
            fontWeight: '600'
        }
    },
    
    grid: {
        left: '5%',
        right: '10%',
        bottom: '10%',
        top: '15%',
        containLabel: true
    },

    brush: {
        xAxisIndex: 'all',
        yAxisIndex: 'all',
        toolbox: ['rect', 'polygon', 'clear'],
        brushStyle: {
            borderWidth: 1,
            color: 'rgba(242, 135, 5,0.3)',
            borderColor: 'rgba(242, 135, 5,0.8)'

        },
        outOfBrush: {
            colorAlpha: 0.1
        }
    },

    toolbox: {
        show: true,
        showTitle: true,
        top: 10,
        left: '13%',
        feature: {

            dataView: {
                show: true,
                title: 'Data View',
                lang: ['Data View', 'Close', 'Refresh'],
                buttonColor: '#F28705',
                optionToContent: function (opt) {
                    var series = opt.series;
                    // console.log(series);                           
                    var length = series[0].data.length  //get length                          
                    //console.log(length);                                                        
                    var name = series[0].data[1].name;
                    // console.log(name);                           
                    var x = series[0].data[1].value[0];
                    // console.log(x);                 
                    var table = '<table  class="altrowstable"  style="width:100%;text-align:center"><tbody><tr>'
                            + '<td>Cell name</td>'
                            + '<td>x</td>'
                            + '<td>y</td>'
                            + '<td>pseudotime</td>'
                            + '</tr>';
                    for (var i = 0, l = length; i < l; i++) {
                        table += '<tr>'
                                + '<td>' + series[0].data[i].name + '</td>'
                                + '<td>' + series[0].data[i].value[0] + '</td>'
                                + '<td>' + series[0].data[i].value[1] + '</td>'
                                + '<td>' + series[0].data[i].value[2] + '</td>'
                                + '</tr>';
                    }
                    table += '</tbody></table>';
                    return table;
                }
            },
            restore: {
                show: true,
                title: 'Restore'
            },
            saveAsImage: {
                show: true,
                title: 'Save As Image'
            },
            dataZoom: {
                show: true,
                title: {
                    zoom: 'Zoom Region',
                    back: 'Zoom Region Back'
                }
            },
            brush: {
                title: {rect: 'Rectangular Region', polygon: 'Polygon Region', clear: 'Clear Region'}
            }


        }},

    visualMap: {

        type: 'continuous',
        min: 0, 
        max: 50,
        padding: [
            10, 
            60, 
            5, 
            10 
        ],
        showLabel: true, 

        itemWidth: 15, precision: 3,

        // dimension: 0,
        orient: 'vertical',
        left: '82%',
        top: 'center',
        text: ['pseudotime', ''],

        calculable: true,
        inRange: {
//            color: ['#4DA9EF', '#366B9A', '#193753'], symbolSize: 2
            color: ['#5c01a5', '#a82196', '#f8df25'], 
            symbolSize: 3
        },
        textStyle: {

            fontWeight: 'bold'
        }

    },

    tooltip: {

        showDelay: 0,
        trigger: 'item',

        //   formatter:'{c}'

        formatter: function (params) {

            return '<span style="font-weight:bold">' + 'pseudotime: '
                    + params.value[2] + '</span>' + '<br/>' +
                    params.name + '<br/>' + '('
                    + params.value[0] + ',' + params.value[1] + ')';


        },
        axisPointer: {
            show: true,
            type: 'cross',

            lineStyle: {
                type: 'dashed',
                width: 1
            }
        }
    },

    xAxis: {
        max:50,
        name: "Umap1",
        nameLocation: "middle", //middle start end
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14
        },

        nameGap: 30

    },

    yAxis: {

        name: "Umap2",
        nameLocation: "middle", //middle start end
        nameGap: 30,
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14

        }
    },

    series: [
        //points 
        {
            //    name: 'price-area',
            type: 'scatter',
            animationDelay: function (idx) {
                return idx * 5;
            },
            symbolSize: 2,
            data: data_middle
        }, {
            type: 'lines',
            coordinateSystem: 'cartesian2d',
            zlevel: 1,

            // 动画效果
            effect: {
                show: true,
                //period: 13, //特效动画的时间，单位为 s
                trailLength: 0.2, //特效尾迹的长度。0~1数值越大尾迹越长
                color: '#888888', //#64f2ff,#bfbfbf,#e4ae88,#4c4c4c
                symbol: 'circle', //箭头图标 arrow
                symbolSize: 2.8, //图标大小
                constantSpeed: 10
            },

            lineStyle: {
                normal: {
                    color: '#fff', //线被挡住了 颜色不重要
                    width: 1
                    // curveness:-0.24
                }
            },
            data: lines

        }],
    animationEasing: 'elasticIn'
};

 function generateArray (start, end) {
   return Array.from(new Array(end + 1).keys()).slice(start);
 }
//let arr =generateArray(1,9);//for left, the number of clusters
//let arr1=generateArray(1,1);//for middle part,the number of clusters

//clustering_left JS文件    
var trajectory_option_middle = {
    title: {
        text: 'Cell Cluster',
        right: 60,
        top: 10,
        subtext: 'Type: cell_type'
    },

    brush: {
        xAxisIndex: 'all',
        yAxisIndex: 'all',
        toolbox: ['rect', 'polygon', 'clear'],
        brushStyle: {
            borderWidth: 1,
            color: 'rgba(242, 135, 5,0.3)',
            borderColor: 'rgba(242, 135, 5,0.8)'

        },
        outOfBrush: {
            colorAlpha: 0.1
        }
    },

    grid: {
         left: '5%',
        right: '10%',
        bottom: '10%',
        top: '15%',
        containLabel: true
    },
    toolbox: {
        show: true,
        showTitle: true,
        top: 8,
        left: 40,
        feature: {
            dataView: {
                show: true,
                title: 'Data View',
                lang: ['Data View', 'Close', 'Refresh'],
                buttonColor: '#F28705',
                optionToContent: function (opt) {
                    var series = opt.series;
                    //console.log(series);                           
                    var length = series[0].data.length;  //get length                          
                    //console.log(length);                                                        
                    var name = series[0].data[1].name;
                    // console.log(name);                           
                    var x = series[0].data[1].value[0];
                    // console.log(x);                 
                    var table = '<table  class="altrowstable"  style="width:100%;text-align:center"><tbody><tr>'
                            + '<td>Cell name</td>'
                            + '<td>x</td>'
                            + '<td>y</td>'
                            + '<td>cell_type</td>'
                            + '</tr>';
                    for (var i = 0, l = length; i < l; i++) {
                        table += '<tr>'
                                + '<td>' + series[0].data[i].name + '</td>'
                                + '<td>' + series[0].data[i].value[0] + '</td>'
                                + '<td>' + series[0].data[i].value[1] + '</td>'
                                + '<td>' + series[0].data[i].value[2] + '</td>'
                                + '</tr>';
                    }
                    table += '</tbody></table>';
                    return table;
                }
            },
            restore: {
                show: true,
                title: 'Restore'
            },
            saveAsImage: {
                show: true,
                title: 'Save As Image'
            },
            dataZoom: {
                show: true,
                title: {
                    zoom: 'Zoom Region',
                    back: 'Zoom Region Back'
                }
            },
            brush: {
                title: {rect: 'Rectangular Region', polygon: 'Polygon Region', clear: 'Clear Region'}
            }


        }},

    visualMap: {

        type: 'piecewise',
        padding: [
            10, // 上
           0, // 右
            5, // 下
            50 // 左
        ],
        showLabel: true, 
        itemHeight: 10,
        itemWidth: 10, 
        itemGap: 5,    
        orient: 'vertical',
        right: '0%',
        top: 'center',
        text: ['Cluster', ''],
        calculable: true,
        inRange: {
            symbol: 'circle', color: ['#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf', '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e', '#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf',  '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e']
        },
        textStyle: {

            fontWeight: 'bold'
        }


    },

    tooltip: {

        showDelay: 0,
        trigger: 'item',


        formatter: function (params) {
            //console.log(params.value);
            if (params.value.length > 1) {
                return '<span style="font-weight:bold">' + 'cell_type: ' + params.value[2] + '</span>' + '<br/>' +
                        params.name + '<br/>' + '('
                        + params.value[0] + ',' + params.value[1] + ')';
            } else {
                return params.seriesName + ' :<br/>'
                        + params.name + ' : '
                        + params.value;
            }
        },
        axisPointer: {
            show: true,
            type: 'cross',

            lineStyle: {
                type: 'dashed',
                width: 1
            }
        }
    },

    xAxis: {

        name: "Umap1",
        nameLocation: "middle", //middle start end
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14
        },

        nameGap: 30

    },

    yAxis: {

        name: "Umap2",
        nameLocation: "middle", //middle start end
        nameGap: 30,
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14

        }
    },

    series: [{
            type: 'scatter',
            animationDelay: function (idx) {
                return idx * 5;
            },
            symbolSize: 3
        }],
    animationEasing: 'elasticIn'


};

var trajectory_option_right = {
    title: {
        text: 'Important Genes',
        right: 58,
        top: 10,
        subtext: ''
    },

    brush: {
        xAxisIndex: 'all',
        yAxisIndex: 'all',
        toolbox: ['rect', 'polygon', 'clear'],
        brushStyle: {
            borderWidth: 1,
            color: 'rgba(242, 135, 5,0.3)',
            borderColor: 'rgba(242, 135, 5,0.8)'

        },
        outOfBrush: {
            colorAlpha: 0.1
        }
    },

    grid: {
        left: '5%',
        right: '10%',
        bottom: '10%',
        top: '15%',
        containLabel: true
    },

    // Ã¥Â·Â¥Ã¥ÂÂ·Ã§Â®Â±
    toolbox: {
        show: true,
        showTitle: true,
        top: 8,
        left: 40,
        feature: {

            dataView: {
                show: true,
                title: 'Data View',
                lang: ['Data View', 'Close', 'Refresh'],
                buttonColor: '#F28705',
                optionToContent: function (opt) {
                    var series = opt.series;
                    //console.log(series);                           
                    var length = series[0].data.length;  //get length                          
                    //console.log(length);                                                        
                    var name = series[0].data[1].name;
                    // console.log(name);                           
                    var x = series[0].data[1].value[0];
                    // console.log(x);                 
                    var table = '<table  class="altrowstable"  style="width:100%;text-align:center"><tbody><tr>'
                            + '<td>Cell name</td>'
                            + '<td>x</td>'
                            + '<td>y</td>'
                            + '<td>cell_type</td>'
                            + '</tr>';
                    for (var i = 0, l = length; i < l; i++) {
                        table += '<tr>'
                                + '<td>' + series[0].data[i].name + '</td>'
                                + '<td>' + series[0].data[i].value[0] + '</td>'
                                + '<td>' + series[0].data[i].value[1] + '</td>'
                                + '<td>' + series[0].data[i].value[2] + '</td>'
                                + '</tr>';
                    }
                    table += '</tbody></table>';
                    return table;
                }
            },
            // ?¨?????￥????
            restore: {
                show: true,
                title: 'Restore'
            },
            saveAsImage: {
                show: true,
                title: 'Save As Image'
            },
            // ?￥???o?￥?????§?????|????
            dataZoom: {
                show: true,
                title: {
                    zoom: 'Zoom Region',
                    back: 'Zoom Region Back'
                }
            },
            brush: {
                title: {rect: 'Rectangular Region', polygon: 'Polygon Region', clear: 'Clear Region'}
            }


        }},

  visualMap: {

        type: 'continuous',
        min: 0, 
        max: 3,
        padding: [
            10, 
            60, 
            5, 
            10 
        ],
        showLabel: true, 

        itemWidth: 15, precision: 3,

        // dimension: 0,
        orient: 'vertical',
        left: '82%',
        top: 'center',
        text: ['gene exp'],

        calculable: true,
        inRange: {
//            color: ['#4DA9EF', '#366B9A', '#193753'], symbolSize: 2
            color: ['#CCCCCC', '#f8df25', '#a82196'], 
            symbolSize: 3
        },
        textStyle: {

            fontWeight: 'bold'
        }

    },

    tooltip: {

        showDelay: 0,
        trigger: 'item',

        //   formatter:'{c}'

        formatter: function (params) {
            //console.log(params.value);
            if (params.value.length > 1) {
                return '<span style="font-weight:bold">' + 'cell_type: ' + params.value[2] + '</span>' + '<br/>' +
                        params.name + '<br/>' + '('
                        + params.value[0] + ',' + params.value[1] + ')';
            } else {
                return params.seriesName + ' :<br/>'
                        + params.name + ' : '
                        + params.value;
            }
        },
        axisPointer: {
            show: true,
            type: 'cross',

            lineStyle: {
                type: 'dashed',
                width: 1
            }
        }
    },

    xAxis: {

        name: "umap1",
        nameLocation: "middle", //middle start end
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14
        },

        nameGap: 30

    },

    yAxis: {

        name: "umap2",
        nameLocation: "middle", //middle start end
        nameGap: 30,
        nameTextStyle: {

            fontWeight: 'bolder',
            fontSize: 14

        }
    },

    series: [{
            //    name: 'price-area',
            type: 'scatter',
            animationDelay: function (idx) {
                return idx * 5;
            },
            symbolSize: 3
//            data: data_middle
        }],
    animationEasing: 'elasticIn'


};