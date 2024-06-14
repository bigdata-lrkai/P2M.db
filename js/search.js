$(document).ready(function() {
  var input1 = $('#cancer');
  var input2 = $('#siteset');
  var input3 = $('#dataset');
  var submitButton = $('#mySubmit');
function checkInputs() {
    if (input1.val() && input2.val() && input3.val()) {
      submitButton.removeAttr('disabled');
    } else {
      submitButton.attr('disabled', 'disabled');
    }
  }
  submitButton.on('mouseenter', checkInputs);
});

 function cancerList() {//如果第一个下拉列表的值改变则调用此方法
                $('#gene').val('');
                $('#cancer').val('');
                $('#siteset').val('');
                $('#dataset').val('');
                $('#dataset').prop('disabled', true);
                $('#dataset').css('cursor', 'not-allowed');
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                var url = "cancerlist";
                $.post(url, {},
                        function (data) {//可以实现input框的模糊匹配下拉显示                                    
                            var res = JSON.parse(data);//把后台传回的json数据解析
                            var myCancers = new Array();
                            $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                myCancers[i] = n.cancer;
                            });
                            myCancers = myCancers.sort();
                            $("#cancer").suggest_list(cancer, {source: myCancers, hot_list: myCancers, attachObject: '#suggest1'});
                        }
                );
            }

function siteList() {//如果第一个下拉列表的值改变则调用此方法
                $('#gene').val('');
                $('#siteset').val('');
                $('#dataset').val('');
                $('#dataset').prop('disabled', false);
                $('#dataset').css('cursor', 'default');
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                var cancer = $("#cancer").val();//得到第一个下拉列表的值
//                     alert(cancer);  
                var url = "sitelist";
                if (cancer !== null && "" !== cancer && -1 !== cancer) {
                    //通过ajax传入后台，把cancer数据传到后端
                    $.post(url, {cancer: cancer},
                            function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                var res = JSON.parse(data);//把后台传回的json数据解析

                                var Sitesets = new Array();

                                $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                    Sitesets = Sitesets.concat(n.site.toString().split(";"));
                                });

                                var mySitesets = new Array();
                                Sitesets.forEach((item) => {
                                    // 空数组newList2 不包含item为false ,取反为true 执行数组添加操作
                                    // 如果数组包含了 item为true 取反为false 不执行数组添加操作
                                    if (mySitesets.indexOf(item.trim()) === -1) {
                                        mySitesets.push(item.trim());
                                    }
                                })
                                mySitesets = mySitesets.sort();
                                $("#siteset").suggest_list(siteset, {source: mySitesets, hot_list: mySitesets, attachObject: '#suggest2'});

                                //gene是要重新写入数据的下拉框之上的文本框id;source是全部的列表数据，hot_list是热点的列子数据，这里设置为与source一样的；attachObject是下拉框id
                            }
                    );
                }
            }
function datasetList() {//如果第一个下拉列表的值改变则调用此方法
                $('#gene').val('');
                $('#mySubmit').removeAttr('disabled');
                $('#dataset').val('');
                $('#showtype').prop('disabled', true);
                $('#showtype').css('cursor', 'not-allowed');
                $('#gene_r').val("");
                $('#gene_r').prop('disabled', true);
                $('#gene_r').css('cursor', 'not-allowed');
                var cancer = $("#cancer").val();//得到第一个下拉列表的值
                var site = $("#siteset").val();//得到第二个下拉列表的值
                var url = "datasetlist";
                if (cancer !== null && "" !== cancer && -1 !== cancer) {
                    //通过ajax传入后台，把cancer数据传到后端
                    $.post(url, {cancer: cancer, site: site},
                            function (data) {//可以实现input框的模糊匹配下拉显示                                    
                                var res = JSON.parse(data);//把后台传回的json数据解析

                                var myDatasets = new Array();

                                $.each(res, function (i, n) {//循环，i为下标从0开始，n为集合中对应的第i个对象
                                    myDatasets[i] = n.dataset;
                                });
                                $("#dataset").suggest_list(dataset, {source: myDatasets, hot_list: myDatasets, attachObject: '#suggest3'});
                            }
                    );
                }
            }