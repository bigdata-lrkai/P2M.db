 /* global dc_search_data, arr */

/**
  * 生成一个从 start 到 end 的连续数组 
  * @param start
  * @param end
  */
 function generateArray (start, end) {
   return Array.from(new Array(end + 1).keys()).slice(start);
 }
//let arr =generateArray(1,9);//for left, the number of clusters
//let arr1=generateArray(1,1);//for middle part,the number of clusters

//clustering_left JS文件                

CellType_option_left = {
    title: {
        text: 'CellCluster(cell_type)',
        right: 40,
        top: 10,
        subtext: 'Type: Primary'
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

        type: 'piecewise',
        padding: [
            10, // 上
            0, // 右
            5, // 下
            50 // 左
        ],
        showLabel: true, //Ã¦ÂÂ¾Ã§Â¤ÂºÃ¦Â¯ÂÃ¤Â¸ÂÃ©Â¡Â¹Ã§ÂÂÃ¦Â ÂÃ§Â­Â¾
        itemHeight: 10,itemWidth: 10, itemGap: 5,       

        orient: 'vertical',
        right: 20,
        top: 'center',
        text: [],

        calculable: true,
        inRange: {
            symbol: 'circle', color: ['#de2d26', '#c3c3c3', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf', '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e', '#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf',  '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e']
        },
        textStyle: {

            fontWeight: 'bold'
        }

//        categories: ['Malignant_cell']
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
CellType_option_right = {
    title: {
        text: 'CellCluster(cell_type)',
        right: 40,
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

        type: 'piecewise',
        padding: [
            10, // 上
           0, // 右
            5, // 下
            50 // 左
        ],
        showLabel: true, //Ã¦ÂÂ¾Ã§Â¤ÂºÃ¦Â¯ÂÃ¤Â¸ÂÃ©Â¡Â¹Ã§ÂÂÃ¦Â ÂÃ§Â­Â¾
        itemHeight: 10,itemWidth: 10, itemGap: 5,    

        orient: 'vertical',
        right: 0,
        top: 'center',
        text: ['', ''],

        calculable: true,
        inRange: {
            symbol: 'circle', color: ['#4169e1', '#c3c3c3', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf', '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e', '#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf',  '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e']
        },
        textStyle: {

            fontWeight: 'bold'
        }

//        categories: ['Malignant_cell']
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
CellType_option_middle = {
    title: {
        text: 'CellCluster(cell_type)',
        right: 40,
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

        type: 'piecewise',
        padding: [
            10, // 上
           0, // 右
            5, // 下
            50 // 左
        ],
        showLabel: true, //Ã¦ÂÂ¾Ã§Â¤ÂºÃ¦Â¯ÂÃ¤Â¸ÂÃ©Â¡Â¹Ã§ÂÂÃ¦Â ÂÃ§Â­Â¾
        itemHeight: 10,itemWidth: 10, itemGap: 5,    

        orient: 'vertical',
        right: 0,
        top: 'center',
        text: ['Cluster', ''],

        calculable: true,
        inRange: {
            symbol: 'circle', color: ['#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf', '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e', '#ffb980', '#5ab1ef', '#b6a2de', '#2ec7c9', '#fc97af', '#87f7cf',  '#72ccff', '#f7c5a0', '#e01f54', '#d2f5a6', '#76f2f2', '#516b91', '#59c4e6', '#edafda', '#93b7e3', '#a5e7f0', '#cbb0e3', '#588dd5', '#f5994e']
        },
        textStyle: {

            fontWeight: 'bold'
        }

//        categories: ['Malignant_cell']
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