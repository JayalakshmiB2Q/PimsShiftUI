<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DBMDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBMDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    
    <link href='//www.zingchart.com/css/zcDocs.css' rel='stylesheet' type='text/css'>
     <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/bootstrap/Css/bootstrap.min.css" />
    <!--===============================================================================================-->

    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/fonts/font-awesome-4.7.0/Css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/perfect-scrollbar/perfect-scrollbar.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/main.css" />
    <!--===============================================================================================-->
    <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
    <style>
         .dbox {
    position: relative;
    background: rgb(255, 86, 65);
    background: -moz-linear-gradient(top, rgba(255, 86, 65, 1) 0%, rgba(253, 50, 97, 1) 100%);
    background: -webkit-linear-gradient(top, rgba(255, 86, 65, 1) 0%, rgba(253, 50, 97, 1) 100%);
    background: linear-gradient(to bottom, rgba(255, 86, 65, 1) 0%, rgba(253, 50, 97, 1) 100%);
    filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#ff5641', endColorstr='#fd3261', GradientType=0);
    border-radius: 4px;
    text-align: center;
    margin: 60px 0 50px;
}
.dbox__icon {
    position: absolute;
    transform: translateY(-50%) translateX(-50%);
    left: 50%;
}
.dbox__icon:before {
    width: 75px;
    height: 75px;
    position: absolute;
    background: #fda299;
    background: rgba(253, 162, 153, 0.34);
    content: '';
    border-radius: 50%;
    left: -17px;
    top: -17px;
    z-index: -2;
}
.dbox__icon:after {
    width: 60px;
    height: 60px;
    position: absolute;
    background: #f79489;
    background: rgba(247, 148, 137, 0.91);
    content: '';
    border-radius: 50%;
    left: -10px;
    top: -10px;
    z-index: -1;
}
.dbox__icon > i {
    background: #ff5444;
    border-radius: 50%;
    line-height: 40px;
    color: #FFF;
    width: 40px;
    height: 40px;
	font-size:22px;
}
.dbox__body {
    padding: 50px 20px;
}
.dbox__count {
    display: block;
    font-size: 30px;
    color: #FFF;
    font-weight: 300;
}
.dbox__title {
    font-size: 13px;
    color: #FFF;
    color: rgba(255, 255, 255, 0.81);
}
.dbox__action {
    transform: translateY(-50%) translateX(-50%);
    position: absolute;
    left: 50%;
}
.dbox__action__btn {
    border: none;
    background: #FFF;
    border-radius: 19px;
    padding: 7px 16px;
    text-transform: uppercase;
    font-weight: 500;
    font-size: 11px;
    letter-spacing: .5px;
    color: #003e85;
    box-shadow: 0 3px 5px #d4d4d4;
}


.dbox--color-2 {
    background: rgb(69, 104, 220);
    background: -moz-linear-gradient(top, rgba(69, 104, 220, 1) 1%, rgba(69, 185, 220, 1) 99%);
    background: -webkit-linear-gradient(top, rgba(69, 104, 220, 1) 1%, rgba(69, 185, 220, 1) 99%);
    background: linear-gradient(to bottom, rgba(69, 104, 220, 1) 1%, rgba(69, 185, 220, 1) 99%);
    filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#fcbe1b', endColorstr='#f85648', GradientType=0);
}
.dbox--color-2 .dbox__icon:after {
    background: #45b9dc;
    background: rgba(69, 104, 220, 0.81);
}
.dbox--color-2 .dbox__icon:before {
    background: #45b9dc;
    background: rgba(69, 104, 220, 0.64);
}
.dbox--color-2 .dbox__icon > i {
    background: #45b9dc;
}

.dbox--color-3 {
    background: rgb(183,71,247);
    background: -moz-linear-gradient(top, rgba(183,71,247,1) 0%, rgba(108,83,220,1) 100%);
    background: -webkit-linear-gradient(top, rgba(183,71,247,1) 0%,rgba(108,83,220,1) 100%);
    background: linear-gradient(to bottom, rgba(183,71,247,1) 0%,rgba(108,83,220,1) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b747f7', endColorstr='#6c53dc',GradientType=0 );
}
.dbox--color-3 .dbox__icon:after {
    background: #b446f5;
    background: rgba(180, 70, 245, 0.76);
}
.dbox--color-3 .dbox__icon:before {
    background: #e284ff;
    background: rgba(226, 132, 255, 0.66);
}
.dbox--color-3 .dbox__icon > i {
    background: #8150e4;
}
    div.cardin {
  width:100%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.12), 0 6px 20px 0 rgba(0, 0, 0, 0.07);
  
}
        div.cardintab {
            width:100%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.07);
        }
  .repss {
    background: linear-gradient(-68deg, #fdf8ff, #f5f5f5) !important;

  }
  .reps {
    background: linear-gradient(-68deg, #dfdfdf, #f5f5f5) !important;
}

 
  .dataTables_wrapper .dataTables_filter input {
            border: 1px solid rgba(0,0,0,.0625) !important;
            border-bottom: #101010 !important;
            border-bottom-color: black !important;
            border-left: none !important;
            border-right: none !important;
            border-top: none !important;
            border-bottom-style: double !important;
        }

        input {
            background: none !important;
            border:black!important;
        }


        </style>
         <style>
        .card-body {
            display: contents !important;
            padding: 0px;
            background: !important;
        }

        .content-body .container-fluid {
            padding: 15px 30px 0;
        }

        .container-fluid {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        .container-table100 {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

        .paginate_button.current:hover, .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            color: #fff !important;
            background: #1e7ee0 !important;
        }

        table.dataTable tbody tr {
            background-color: none !important;
            background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
            overflow:scroll !important;
        }

        .table100.ver6 table {
            background-color: transparent !important;

        }

        .table100.ver6 {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

            .table100.ver6 td {
                color: #232121;
            }

            .table100.ver6 th {
                color: #000 !important;
                background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
                /*background-color: lightgrey;*/
            }

        .m-b-110 {
            margin-bottom: 50px !important;
        }

       

        .btns {
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            
        }

        .btn-hight {
            width: 40px !important;
            height: 40px !important;
        }

       

        .bor {
            border: 1px solid #ced4da !important;
        }

        .apopbtn {
            background: linear-gradient(-68deg, #3618dc, #2b2f5d) !important;
            margin: 10px;
            color: #ffffff !important;
        }
        .fnt .mark, mark {
            background-color: #f0f3f500!important;
        }
        
    </style>
        <script type="text/javascript">
        $(document).ready(function () {

            console.log('in datatable')



            //ContentPlaceHolder1_SuggestionGridView

            $('.noticedt').DataTable({
                dom: 'flrtiBp',
                scrollY:        '70vh',
                scrollCollapse: true,
                paging:         false,
                buttons: [{
                    extend: 'excel', text: '<img src="../UI/assets/static/images/Icons/Excel2.jpg" width="30px" height="30px">', exportOptions: {
                        columns: "thead th:not(.noExport)"
                    }
                },

                    {
                        extend: 'pdf', text: '<img src="../UI/assets/static/images/Icons/Pdf.ico" width="30px" height="30px">', exportOptions: {
                            columns: "thead th:not(.noExport)"
                        }
                    },
                    {
                        extend: 'print', text: '<img src="../UI/assets/static/images/Icons/Print.ico" width="30px" height="30px">', exportOptions: {
                            columns: "thead th:not(.noExport)"
                        }
                    }],
                //{
                //    extend: 'copy', text: '<img src="../../UI/assets/static/images/Icons/Print.ico" width="30px" height="30px">', exportOptions: {
                //        columns: "thead th:not(.noExport)"
                //    }

                //}
                "lengthMenu": [[ 10, 25, -1], [ 10, 25, "All"]],

                
            });
           
            
        });
    </script>
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row gap-20 masonry pos-r ">
                        <div class="masonry-sizer col-md-6"></div>
                        <div class="masonry-item w-100">

                            <div class="row">
                                <div class="col-md-2">

                                <asp:DropDownList runat="server" ID="suggcount" class="form-control suggcount" style="color:blue;font-weight:bold">
                                    <asp:ListItem Value="2021" Text="2021"></asp:ListItem>
                                    <asp:ListItem Value="2020" Text="2020"></asp:ListItem>
                                </asp:DropDownList>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"></div>
                            </div>
                            
                            <div class="row gap-20">
                                <!-- ====================
                                        #Total Visits 
                                     ==================== -->
                                <div class="col-md-3 ">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Total Suggestion</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash2"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanTotal" runat="server" class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-purple-50 c-purple-500"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- =====================
                                        #Totall Visits End 
                                      ===================== -->

                                <!-- ====================
                                      #Total Page Views 
                                     ==================== -->
                                <div class="col-md-2 ">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Accepted </h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanAccepted" runat="server"  class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-green-50 c-green-500"> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- =======================
                                       #Total Page Views End 
                                      ======================= -->

                                <!-- ====================
                                        #Unique Visitor 
                                     ==================== -->
                                <div class="col-md-2">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Rejected</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash4"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanRejected" runat="server"  class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-red-50 c-red-500"> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                 <div class="col-md-2 ">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">NotFeasible</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash3"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanNotFeas" runat="server"  class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-blue-50 c-blue-500"> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- =======================
                                        #Unique Visitor End 
                                     ======================= -->
                                <!-- ====================
                                             #Bounce Rate 
                                          ==================== -->
                                <div class="col-md-3">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Implemented</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash1"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanImpl" runat="server" class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-pink-50 c-pink-900"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                                <!-- ====================
                                       #Bounce Rate End 
                                     ==================== -->
                            </div>
                            
                        </div>
                      
                        
                       
                         <div class="row gap-20">
                        <div class="masonry-item col-md-12">
                         <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                            <div id="chartContainer1" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                         
                        </div>
                  
                       </div>
                       <div class="row gap-20">
                        <div class="masonry-item col-md-12 ">
                            <!-- ====================
                                         #Todo 
                                 ==================== -->
                           
                            <div class="bd bgc-white p-20 cardintab reps">
                                <div class="layers">
                                    <div class="table100 ver6 m-b-110 table-responsive">
                            
                            
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt reps" runat="server" Style=" width:100%;background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee ID-Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="IdeaId" HeaderText="Idea ID" />
                                    <asp:BoundField DataField="Subject" HeaderText="Idea Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    
                                </Columns>

                            </asp:GridView>
                        </div>
                                  
                                </div>
                            </div>

                            <!-- ====================
                                    #Todo End
                                 ==================== -->

                        </div>
                        </div>
                       
                                </div>
                            

                      
                    
                
            <!-- =============================================
                 ### $App Screen Content Child Content End ###
                 ============================================= -->
                 
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 
    
<script type="text/javascript">
                                      				    
         function Barchart(EMPDBM,com,DBMHOD, hod, imp, hos, ben, fin) {

             console.log('method called ', EMPDBM, com, DBMHOD, hod, imp, hos, ben, fin);
                                            var EMPDBM = [parseInt(EMPDBM)];
                                            var com = [parseInt(com)];
                                            var DBMHOD = [parseInt(DBMHOD)];
                                   		    var hod = [parseInt(hod)];
                                   		    var imp = [parseInt(imp)];
                                   		    var hos = [parseInt(hos)];
                                   		    var ben = [parseInt(ben)];
                                   		    var fin = [parseInt(fin)];
                                      				          
                                            var myConfig = {
                                                "graphset": [{
                                                    "globals": {
                                                        "font-family": "Lato",
                                                        "title": {
                                                            "text": "Suggestions status",

                                                            "backgroundColor": "none",
                                                            "font-size": "22px",
                                                            "alpha": 1,
                                                            "adjust-layout": true,
                                                        },
                                                    },
                                                "type": "bar",
                                                "background-color": "white",
                                                
                                                "plotarea": {
                                                    "margin": "dynamic"
                                                },
                                               
                                                "plot": {
                                                    "bars-space-left": 0.40,
                                                    "bars-space-right": 0.40,
                                                    "styles": ["#9966ff", "#ff9966", "#9966ff", "#3399ff", "#ff3300", "#ff6699", "#33ccff", "#00ff00"],
                                                    
                                                    "animation": {
                                                        "effect": "ANIMATION_SLIDE_BOTTOM",
                                                        "sequence": 0,
                                                        "speed": 800,
                                                        "delay": 800,
                                                        
                                                    
                                                    }
                                                },
                                               
                                                "scaleX": {
                                                    "values": [
                                                    
                                                    "Emp_Dbm","Commitee","Dbm_Man", "Manager", "Implementation", "HOD", "Beneficiary", "Finance"
           
									
                                                    ],
                                                    "placement": "default",
                                                    "tick": {
                                                        "size": 58,
                                                        "placement": "cross",
                                                        "alpha":0.3,
                                                    },
                                                    "itemsOverlap": true,
                                                    "item": {
                                                    "offsetY": -55
                                                    }
                                                },
        
                                                "tooltip": {
                                                    "shadow": true,
                                                    "shadowColor": "#424242",
                                                    "backgroundColor": "#212121 #424242",
                                                    "callout": true,
                                                    "calloutPosition": "bottom",
                                                    "offsetY": -20,
                                                    "placement": "node:top",
                                                    "padding": 10,
                                                    "fontSize": 15,
                                                    "color": "#ffffff",
                                                    "borderWidth": 1,
                                                    "borderColor": "#000000",
                                                    
                                                },
                                                "crosshair-x": {
                                                    "line-width": "100%",
                                                    "alpha": 0.18,
                                                    "plot-label": {
                                                    "header-text": "%kv"
                                                    }
                                                },
                                                "series": [{
                                                    "values": [
                                                        parseInt(EMPDBM),
                                                        parseInt(com),
                                                        parseInt(DBMHOD),
                                                        parseInt(hod),
                                                        parseInt(imp),
                                                        parseInt(hos),
                                                        parseInt(ben),
                                                        parseInt(fin)
                                                         
                
			  
                                                    ],
                                                   
                                                   
                                                    "valueBox": [{
                                                        "fontSize": 10,
                                                        "fontWeight": 600,
                                                        "offsetY": -8,
                                                        "jsRule": "rule_series_123_valueBox_0()",
                                                        
                                                    }]
                                                }]
                                                
         
		  
          
                                                
                                                }]
                                            };
                                            zingchart.bind(null, 'node_click', function (e) {
                                                console.log(e);

                                                swal({
                                                    title: "Are you sure?",
                                                    text: "You want able to download",
                                                    icon: "warning",
                                                    buttons: [
                                                      'No, cancel it!',
                                                      'Yes, I am sure!'
                                                    ],
                                                    dangerMode: false,
                                                }).then(function (isConfirm) {
                                                    if (isConfirm) {
                                                        if (e.scaletext === "Emp_Dbm") {
                                                            console.log("enterbar");
                                                            EMPDBMExcel();
                                                        }

                                                        else if (e.scaletext === "Commitee") {
                                                            console.log("enterbar");
                                                            committeExcel();
                                                        }
                                                        else if (e.scaletext === "Dbm_Man") {
                                                            console.log("enterbar");
                                                            DBMMANExcel();
                                                        }
                                                        else if (e.scaletext === "Manager") {
                                                            hodExcel();
                                                        }
                                                        else if (e.scaletext === "Implementation") {
                                                            impExcel();
                                                        }
                                                        else if (e.scaletext === "HOD") {
                                                            hosExcel();
                                                        }
                                                        else if (e.scaletext === "Beneficiary") {
                                                            benExcel();
                                                        }
                                                        else if (e.scaletext === "finance") {
                                                            finExcel();
                                                        }
                                                        else {
                                                            alert('Please Click Bar In Chart');
                                                        }
                                                    }
                                                    else {
                                                        swal("Cancelled", "Your file is safe", "error");
                                                    }
                                                })




                                                
                                                

                                                
                                            });
 
                                            zingchart.render({
                                                    id: 'chartContainer1',
                                                    data: myConfig,
                                                    height: '100%',
                                                    width: '100%'
                                            });
                                            //zingchart.click = function (data) {
                                            //    alert("Chart Clicked - ID: ");
             //}
                                            

  
                                      	}
                                      				    
                                    </script>
<script src="../UI/Style/zingchart.min.js"></script> 
<script>
    function EMPDBMExcel() {

        var k = "EMPDBM";
        var url = "GetExcelBarChart.aspx?data=" + k;
        console.log(k)
        console.log("urlenter");
        window.location.href = url;
        console.log("urlexit");

    }
    function committeExcel() {
       
        var k = "com";
        var url = "GetExcelBarChart.aspx?data=" + k;
        console.log(k)
        console.log("urlenter");
        window.location.href = url;
        console.log("urlexit");

    }
    function DBMMANExcel() {

        var k = "DBMMAN";
        var url = "GetExcelBarChart.aspx?data=" + k;
        console.log(k)
        console.log("urlenter");
        window.location.href = url;
        console.log("urlexit");

    }
    function hodExcel() {
        var k = "hod";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function impExcel() {
        var k = "imp";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function hosExcel() {

        var k = "hos";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function benExcel() {
        var k = "ben";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function finExcel() {
        var k = "fin";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
</script>
    <script>
        $(document).ready(function () {
            // v = $("#suggcount").val();
            $(".suggcount").change(function () {

                var selValue = $(this).val();

                console.log(selValue, "document");
                var json = '{emp:' + selValue + '}';
            $.ajax({
                
                url: 'DBMDashboard.aspx/SuggestionCounts',
                type: 'POST',
                cache: false,
                contentType: 'application/json',
                processData: false,
                data: json,//formData, 
                    
                    success: function (data) { 
                        $("[id*=spanTotal]").text(data.d.spanTotal);
                        $("[id*=spanAccepted]").text( data.d.spanAccepted);
                        $("[id*=spanRejected]").text( data.d.spanRejected);
                        $("[id*=spanNotFeas]").text( data.d.spanNotFeas);
                        $("[id*=spanImpl]").text(data.d.spanImpl);
                        console.log('button clicked');
                    },
                    error: function (err) {
                        
                         
                        console.log('button clicked');
                    }
                 });

            });
            
        });
       window.onload = function () {
           //var vw = $("#suggcount").val();
           var text1 = $('.suggcount').find('option:selected').text();
           console.log(text1, "window");
           var json = '{emp:' + text1 + '}';
            $.ajax({
               
                url: 'DBMDashboard.aspx/SuggestionCounts',
                type: 'POST',
                cache: false,
                contentType: 'application/json',
                processData: false,
                data: json,//formData, 
                    
                success: function (data) {
                    console.log("test1HEID" , data.d.spanTotal);
                    console.log("test1HEID", data.d.spanAccepted);
                    console.log("test1HEID" , data.d.spanNotFeas);
                    console.log("test1HEID" , data.d.spanImpl);
                    $("[id*=spanTotal]").text(data.d.spanTotal);
                    $("[id*=spanAccepted]").text(data.d.spanAccepted);
                    $("[id*=spanRejected]").text(data.d.spanRejected);
                    $("[id*=spanNotFeas]").text(data.d.spanNotFeas);
                    $("[id*=spanImpl]").text(data.d.spanImpl);
                        console.log('button clicked');
                    },
                    error: function (err) {
                        
                         
                        console.log('error');
                    }
                 });
        }
    </script>
</asp:Content>
