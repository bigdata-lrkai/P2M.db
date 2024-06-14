<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.6/css/dataTables.bootstrap.css">
<link href="css/dataTables.bootstrap.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<style>
.cart_box {
  border-radius: 6px;
  background-color: hsl(210 25% 97%);
  backdrop-filter: blur(12px);
  box-shadow: 0px 5px 10px 0px rgba(197, 196, 201, 0.25);
}
.cart_border{
  box-shadow: 0px 10px 20px 0px rgba(100, 149, 237, 0.3); /* 边缘阴影变为柔和的蓝色 */
  border: 2px solid #6495ED; /* 明确边框颜色为蓝色 */
}
.ht_btn::before {
    background:#254575;  
}
.ht_btn{
    background: #e9eaec;
    border: none;
}
#datatable1_wrapper > div:nth-child(3) > div.col-sm-6.text-left{
    z-index:-1;
}
#datatable2_wrapper > div:nth-child(3) > div.col-sm-6.text-left{
    z-index:-1;
}
</style>
</head>
<body>
<div id="wrapper">
<div class="loader-mask">
  <div class="loader">
      <div></div>
      <div></div>
  </div>
</div>
  <%@include file="header.jsp" %>
<section id="inner-headline">
    <div style="background-image: url('img/breadcrumb-gradient-bg.png');height: 250px;display: block;">
        <div class="container">
            <div class="row justify-content-center" style="margin-top: 90px;">
                 <div class="text-center row">
                        <ul class="flx-align gap-2 mb-2 justify-content-center">
                            <a href="index.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Home</a>
                                <span>></span>
                            <a href="statisticsindex.jsp" style="text-decoration: none;font-size:16px;font-weight: bold;">Download</a>
                        </ul>
                        <h1 style="margin-left:5%;"><strong>Data Download</strong></h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
        <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 50px;">
            <button class="ht_btn col-lg-2" style="margin-left:20px;border-radius: 6px;width: 200px" id="Button1">scRNA-seq Data</button>
            <button class="ht_btn col-lg-2" style="margin-left:20px;border-radius: 6px;width: 200px" id="Button2">Bulk Data</button>
        </div>
</section>
        <!--下面填内容-->
         <section style="margin-top:0px;margin-left: 30px;margin-right: 30px;margin-bottom: 160px;" id="single">
              <hr>
                <table id="datatable1" class="table table-striped table-bordered cart_box" style="width:100%;display:block">
                    <!--    表格头部-->
                    <thead>
                        <tr>
                            <th rowspan="1" colspan="1" >
                                Accession
                            </th>
                             <th rowspan="1" colspan="1" >
                                Cancer type
                            </th>
                             <th rowspan="1" colspan="1" >
                                Primary Site
                            </th>
                             <th rowspan="1" colspan="1" >
                                Metastatic Site
                            </th>
                             <th rowspan="1" colspan="1" >
                                Tools
                            </th>
                             <th rowspan="1" colspan="1" >
                                DEG
                            </th>
                             <th rowspan="1" colspan="1" >
                                GO/KEGG
                            </th>
                             <th rowspan="1" colspan="1" >
                                Cell Interaction
                            </th>
                             <th rowspan="1" colspan="1" >
                                Cell Trajectory
                            </th>
                             <th rowspan="1" colspan="1">
                                Functional State
                            </th>
                            <th rowspan="1" colspan="1" >
                                Platform
                            </th>
                            <th rowspan="1" colspan="1" >
                                Data Type
                            </th>
                            <th rowspan="1" colspan="1" style="text-align:left;">
                                Cell Number
                            </th>
                            <th rowspan="1" colspan="1">
                                Annotation
                            </th>
                            <th rowspan="1" colspan="1">
                                Database
                            </th>
                            <th rowspan="1" colspan="1" >
                                PMID
                            </th>
                        </tr>
                    </thead>
                    <!--    表格身体-->
                    <tbody>
                    </tbody>
                </table>

    </section>
        
      <section style="margin-top:0px;margin-left: 30px;margin-right: 30px;margin-bottom: 160px;" id="bulk">
          <hr>
                <table id="datatable2" class="table table-striped table-bordered cart_box" style="width:100%;display:block">
                    <!--    表格头部-->
                    <thead>
                        <tr>
                            <th rowspan="1" colspan="1">
                                Accession
                            </th>
                            <th rowspan="1" colspan="1">
                              Time
                            </th>
                            <th rowspan="1" colspan="1">
                                Cancer type
                            </th>
                            <th rowspan="1" colspan="1">
                                Primary Site
                            </th>
                            <th rowspan="1" colspan="1">
                                Metastatic Site
                            </th>
                             <th rowspan="1" colspan="1" >
                                Tools
                            </th>
                            <th rowspan="1" colspan="1">
                                DEG
                            </th>
                            <th rowspan="1" colspan="1">
                                GO/KEGG
                            </th>
                            <th rowspan="1" colspan="1">
                                Immune Infiltration
                            </th>
                            <th rowspan="1" colspan="1">
                                Protein Interaction
                            </th>
                            <th rowspan="1" colspan="1">
                                Platform
                            </th>
                            <th rowspan="1" colspan="1">
                              Technique
                            </th>
                            <th rowspan="1" colspan="1" style="text-align:left;">
                                Sample Number
                            </th>
                            <th rowspan="1" colspan="1">
                                Database
                            </th>
                            <th rowspan="1" colspan="1">
                                PMID
                            </th>
                        </tr>
                    </thead>
                    <!--    表格身体-->
                    <tbody>
                    </tbody>
                </table>
    </section>
 <%@include file="footer.jsp" %>
</div>   
<script src="https://cdn.datatables.net/2.0.6/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.0.6/js/dataTables.bootstrap.js"></script>
<script type="text/javascript">
                var activeTooldiv = null;
                $(document).ready(function() {
                  // 使用事件委托给document，处理动态添加的.divbtn按钮
                  $(document).on('click', '.divbtn', function(e) {
                    e.preventDefault();
                    var id = $(this).attr('id');

                    var tooldiv = $('#' + id);
                    tooldiv.show();
                  });

                  // 窗口点击事件保持不变，因为它已经能正确处理动态生成的.tooldiv
                  $(window).click(function(e) {
                    if ($(e.target).hasClass('divbtn') || $(e.target).hasClass('tooldiv')) {
                      return;
                    }

                    if (activeTooldiv) {
                      activeTooldiv.hide();
                      activeTooldiv = null;
                    }
                  });
                });
                window.onload = function () {
                    var searchValue = getParameterByName("searchValue");
                    var isbulk = getParameterByName("bulk");
                    if (searchValue !== null) {
                        seachfunction(searchValue);
                    }
                    if (isbulk === "1") {
                        $("#Button2").click();
                    }
                };

                function seachfunction() {
                    var searchValue = getParameterByName("searchValue");
                    $('input[type="search"]').val(searchValue);
                    var table = $('#datatable1').DataTable(); 
                    table.search(searchValue).draw();
                }

               function showsingletable(){
                     $('#datatable1').DataTable({
                   ajax: {
                     url: 'singledownload',
                     type: 'GET',
                     dataSrc: ''
                   },
                   ordering: true,
                   paging: true,
                   pagingType: "full_numbers",//分页样式的类型
                   searching: true,//搜索
                   columns: [
                     {
                       data: 'accession',
                       render: function(data, type, row, meta) {
                         if(data.charAt(0) === 'E'){
                          return `<a href="https://www.ebi.ac.uk/biostudies/arrayexpress" target="_blank">`+ data +`</font>`;
                          }else{
                          return `<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=`+data+`" target="_blank">`+ data +`</font>`;
                            }
                       }
                     },
                     { data: 'cancer_type',
                       render: function(data, type, row, meta) {
                        return `<font>`+data+`</font>`;
                      }
                     }, 
                     { data: 'primary_site'},
                     { data: 'metastatic_site'},
                     { data: 'download', 
                        render: function(data, type, row, meta) {
                          // 从data中提取需要的值
                          var metastaticSite = (data.metastatic_site || '').split(';')[0];
                          var cancerType = data.cancer_type || '';
                          var accession = data.accession || '';
                          // 构造链接，携带参数
                          var linkUrl = '?metastatic_site=' + metastaticSite +
                                        '&cancer_type=' + cancerType +
                                        '&accession=' + accession;
                          // Popover的HTML内容，包含一个链接
                          var popoverContent = `
                            <div class="tooldiv cart_box cart_border" id="`+ accession +`_div" style="position:absolute;display:none;z-index:9999;margin-left:-85px;margin-top:5px;">
                               <div style="margin:10px;">
                              <a href="dc.jsp`+ linkUrl +`"><h5>Data Characteristics</h5></a>
                              <a href="ccc.jsp`+ linkUrl +`"><h5>Cell Cluster and Celltype</h5></a>
                              <a href="de.jsp`+ linkUrl +`"><h5>Differential Gene Expression</h5></a>
                              <a href="fc.jsp`+ linkUrl +`"><h5>Functional Characteristics</h5></a>
                              <a href="ci.jsp`+ linkUrl +`"><h5>Cell Interaction Characteristics</h5></a>
                              <a href="gc.jsp`+ linkUrl +`"><h5>Cell Similarity(Please manually<br> select gene)</h5></a>
                              <a href="tc.jsp`+ linkUrl +`"><h5>Cell Trajectory Analysis</h5></a>
                              <a href="cs.jsp`+ linkUrl +`"><h5>Cell Functional State</h5></a>
                                </div>
                            </div>
                          `;

                          // 返回一个按钮，该按钮的data-toggle属性用于激活Popover，并设置title作为Popover的标题
                          return `
                            <button class="divbtn" id="`+ accession +`" style="border-radius: 6px;border:none;background:#f5c598;">
                              Detail
                            </button>`+ popoverContent;
                        }
                     },
                     { data: 'deg',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                  <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z" fill="#ffb980" p-id="9175"></path>
                                </svg>
                              </a>
                            `;
                        }
                     },
                     { data: 'functional_enrichment',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                   <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#5ab1ef" p-id="9175"> </path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'cell_interaction',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                    <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#b6a2de" p-id="9175"></path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'cell_trajectory',
                         render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                    <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#2ec7c9" p-id="9175"></path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'cell_function',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                  <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z" fill="#ffb980" p-id="9175"></path>
                                </svg>
                              </a>
                            `;
                      }
                     },
                     { data: 'platform' },
                     { data: 'data_type' },
                     {
                        data: 'cell number',
                        render: function(data, type, row, meta) {
                          return `<p style="text-align:left">`+ data +`</p>`;
                        }
                      },
                     { data: 'cell_annotation' },
                     { data: 'database' },
                     { data: 'pubmed_id',
                        render: function(data, type, row, meta) {
                            return `<a href="https://pubmed.ncbi.nlm.nih.gov/`+data+`/" target="_blank">`+ data +`</font>`;
                        }
                     }],
                       language: {
                             loadingRecords: "Loading data...",
                             zeroRecords: "No data!Maybe in the bulk data table?",
                             info: "_START_ - _END_ of _TOTAL_",
                             search: '<span>Search：</span>',
                             searchPlaceholder: "Enter Keywords Here",
                             infoEmpty: "0条记录",
                             infoFiltered: "",
                             paginate: {//分页的样式内容。
                                    previous: "Previous",
                                    next: "Next",
                                    first: "First",
                                    last: "Last"
                                }
                           },
                             drawCallback: function() {
                                // 使用事件委托来处理动态生成的元素
                                $(document).on('click', '.divbtn', function(e) {
                                  e.preventDefault();
                                  var id = $(this).attr('id');
                                  var tooldiv = $('#' + id + '_div');

                                  if (activeTooldiv) {
                                    activeTooldiv.hide();
                                  }

                                  tooldiv.show();
                                  activeTooldiv = tooldiv;
                                });

                                // 窗口点击事件保持不变，因为它已经能正确处理动态生成的.tooldiv
                                $(window).click(function(e) {
                                  if ($(e.target).hasClass('divbtn') || $(e.target).hasClass('tooldiv')) {
                                    return;
                                  }

                                  if (activeTooldiv) {
                                    activeTooldiv.hide();
                                    activeTooldiv = null;
                                  }
                                });
                              }
                         });
                         $("#datatable1_filter input[type=search]").css({ width: "auto" });
               };
                
                 function showbulktable(){
                     $('#datatable2').DataTable({
                   ajax: {
                     url: 'bulkdownload',
                     type: 'GET',
                     dataSrc: ''
                   },
                   ordering: true,
                   paging: true,
                   pagingType: "full_numbers",//分页样式的类型
                   searching: true,//搜索
                   columns: [
                     {
                       data: 'accession',
                       render: function(data, type, row, meta) {
                          if(data.charAt(0) === 'T'){
                          return `<a href="https://portal.gdc.cancer.gov/" target="_blank">`+ data +`</font>`;
                          }else{
                          return `<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=`+data+`" target="_blank">`+ data +`</font>`;
                            }
                        }
                     },
                     { data: 'time'},
                     { data: 'cancer_type',
                       render: function(data, type, row, meta) {
                        return `<font>`+data+`</font>`;
                      }
                     }, 
                     { data: 'primary_site'},
                     { data: 'metastatic_site'},
                     { data: 'download', 
                        render: function(data, type, row, meta) {
                          // 从data中提取需要的值
                          var metastaticSite = (data.metastatic_site || '').split(';')[0];
                          var cancerType = data.cancer_type || '';
                          var accession = data.accession || '';
                          var survival = data.survival || '';
                          // 构造链接，携带参数
                          var linkUrl = '?metastatic_site=' + metastaticSite +
                                        '&cancer_type=' + cancerType +
                                        '&accession=' + accession;
                         if(survival === "no"){
                          var popoverContent = `
                            <div class="tooldiv cart_box cart_border" id="`+ accession +`_div" style="position:absolute;display:none;z-index:9999;margin-left:-78px;margin-top:5px;">
                               <div style="margin:10px;">
                              <a href="bde.jsp`+ linkUrl +`"><h5>Differential Gene Expression</h5></a>
                              <a href="bfc.jsp`+ linkUrl +`"><h5>Functional Characteristics</h5></a>
                              <a href="ppi.jsp`+ linkUrl +`"><h5>Protein-protein interaction</h5></a>
                              <a href="imu.jsp`+ linkUrl +`"><h5>Immune Infiltration analysis</h5></a>
                                </div>
                            </div>
                          `;
                          }else{
                              var popoverContent = `
                            <div class="tooldiv cart_box cart_border" id="`+ accession +`_div" style="position:absolute;display:none;z-index:9999;margin-left:-78px;margin-top:5px;">
                               <div style="margin:10px;">
                              <a href="bde.jsp`+ linkUrl +`"><h5>Differential Gene Expression</h5></a>
                              <a href="bfc.jsp`+ linkUrl +`"><h5>Functional Characteristics</h5></a>
                              <a href="ppi.jsp`+ linkUrl +`"><h5>Protein-protein interaction</h5></a>
                              <a href="imu.jsp`+ linkUrl +`"><h5>Immune Infiltration analysis</h5></a>
                              <a href="survival.jsp`+ linkUrl +`"><h5>Survival Analysis(Please manually<br> select gene)</h5></a>
                                </div>
                            </div>
                          `; 
                          }
                          // 返回一个按钮，该按钮的data-toggle属性用于激活Popover，并设置title作为Popover的标题
                          return `
                            <button class="divbtn" id="`+ accession +`" style="border-radius: 6px;border:none;background:#f5c598;">
                              Detail
                            </button>`+ popoverContent;
                        }
                     },
                     { data: 'deg',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                  <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z" fill="#ffb980" p-id="9175"></path>
                                </svg>
                              </a>
                            `;
                        }
                     },
                     { data: 'functional_enrichment',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                   <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#5ab1ef" p-id="9175"> </path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'imu',
                        render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                    <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#b6a2de" p-id="9175"></path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'ppi',
                         render: function(data, type, row, meta) {
                            return `
                              <a style="border:none; box-shadow:none; display: inline-block; position: relative; z-index: 1; background: transparent;" href="`+data+`">
                                    <svg t="1660322059049" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" p-id="9174" width="30" height="30">
                                        <path d="M877.49 381.468H668.638V68.191H355.36v313.277H146.51l365.489 365.49 365.49-365.49zM146.51 851.383v104.425h730.98V851.383H146.51z"
                                            fill="#2ec7c9" p-id="9175"></path>
                                    </svg>
                              </a>
                            `;
                        }
                     }, 
                     { data: 'platform' },
                     { data: 'technique' },
                     { data: 'sample number' ,
                        render: function(data, type, row, meta) {
                          return `<p style="text-align:left">`+ data +`</p>`;
                        }
                },
                     { data: 'database' },
                     { data: 'pubmed_id',
                        render: function(data, type, row, meta) {
                            return `<a href="https://pubmed.ncbi.nlm.nih.gov/`+data+`/" target="_blank">`+ data +`</font>`;
                        }
                     }],
                           language: {
                             loadingRecords: "Loading data...",
                             zeroRecords: "No data!Maybe in the single data table?",
                             info: "_START_ - _END_ of _TOTAL_",
                             search: '<span>Search：</span>',
                             searchPlaceholder: "Enter Keywords Here",
                             infoEmpty: "0条记录",
                             infoFiltered: "",
                             paginate: {//分页的样式内容。
                                    previous: "Previous",
                                    next: "Next",
                                    first: "First",
                                    last: "Last"
                                }
                           }
                         });
                         $("#datatable2_filter input[type=search]").css({ width: "auto" });
               };

          var datatable1_ready = 0;
          var datatable2_ready = 0;
          $(document).ready(function () {
          $('#download').addClass('active');
          const button1 = document.getElementById('Button1');
          const button2 = document.getElementById('Button2');
          const table1 = document.getElementById('datatable1');
          const table2 = document.getElementById('datatable2');
          function toggleContainers(buttonId) {
            switch (buttonId) {
              case 'Button1':
                button1.style.backgroundColor = '#254575'; // 改变内部填充色
                button1.style.color = '#b0f82d'; // 改变字体颜色
                  button2.style.backgroundColor = '#eeeeee'; // 改变内部填充色
                  button2.style.color = '#212529'; // 改变字体颜色
                if(datatable1_ready === 0){
                  showsingletable();
                  datatable1_ready += 1;
                }
                $('#bulk').hide();
                $('#single').show();
                break;
              case 'Button2':
                button2.style.backgroundColor = '#254575'; // 改变内部填充色
                button2.style.color = '#b0f82d'; // 改变字体颜色
                  button1.style.backgroundColor = '#eeeeee'; // 改变内部填充色
                  button1.style.color = '#212529'; // 改变字体颜色
                if(datatable2_ready === 0){
                  showbulktable();
                  datatable2_ready += 1;
                }
                 $('#single').hide();
                 $('#bulk').show();;
                break;
              default:
                console.error('Invalid button ID.');
            }
          }

          button1.addEventListener('click', function() {
            toggleContainers('Button1');
          });

          button2.addEventListener('click', function() {
            toggleContainers('Button2');
          });
          
          toggleContainers('Button1');
          });
</script>
</body>
</html>