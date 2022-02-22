<%@ Page Title="" Language="C#" MasterPageFile="~/HOS.Master" AutoEventWireup="true" CodeBehind="HOSMainDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.HOSMainDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/jqueryui.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
    <script src="../UI/Script/jquery-ui.js"></script>
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
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
.card-box {
    position: relative;
    color: #fff;
    padding: 20px 10px 40px;
    margin: 20px 0px;
}
.card-box:hover {
    text-decoration: none;
    color: #f1f1f1;
}
.card-box:hover .icon i {
    font-size: 100px;
    transition: 1s;
    -webkit-transition: 1s;
}
.card-box .inner {
    padding: 5px 10px 0 10px;
}
.card-box h3 {
    font-size: 27px;
    font-weight: bold;
    margin: 0 0 8px 0;
    white-space: nowrap;
    padding: 0;
    text-align: left;
}
.card-box p {
    font-size: 15px;
}
.card-box .icon {
    position: absolute;
    top: auto;
    bottom: 5px;
    right: 5px;
    z-index: 0;
    font-size: 72px;
    color: rgba(0, 0, 0, 0.15);
}
.card-box .card-box-footer {
    position: absolute;
    left: 0px;
    bottom: 0px;
    text-align: center;
    padding: 3px 0;
    color: rgba(255, 255, 255, 0.8);
    background: rgba(0, 0, 0, 0.1);
    width: 100%;
    text-decoration: none;
}
.card-box:hover .card-box-footer {
    background: rgba(0, 0, 0, 0.3);
}
.bg-blue {
  
      background: linear-gradient(to right,   #0099ff,#003366) !important;
    color: #fff;
}
.bg-green {
  background: linear-gradient(to right, #0a504a, #38ef7d) !important;
    color: #fff;
}
.bg-orange {
   
      background: linear-gradient(to right, #a86008, #ffba56) !important;
    color: #fff;
}
.bg-pink {
   
     background: linear-gradient(to right, #493240, #f09) !important;
    color: #fff;
}
</style>
    <style>
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

  table.dataTable tbody tr {
    background-color: #ffffff00!important;
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
     <script type="text/javascript">
          $(document).ready(function () {
               
              console.log('in datatable')
              $('.noticedt').DataTable({
                  dom: 'flrtiBp',
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
                  "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
              });
          });
    </script>
   <%-- <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script>--%> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row">
		<div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-user-o" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="countnew" runat="server" class="dbox__count">0</span>                    
					<span class="dbox__title">New Suggestion</span>
				</div>										
			</div>
		</div>
		<div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
	  
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>                                         
				</div>
				<div class="dbox__body">
					<span id="countsent" runat="server"  class="dbox__count">0</span>
					<span class="dbox__title">To HR</span>
				</div>											
			</div>
		</div>
		<div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					
                   <i class="fa fa-user-o" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">
					<span  id="countRSMAN" runat="server" class="dbox__count">0</span>
					<span class="dbox__title">From Manager</span>
				</div>											
			</div>
		</div>
        <div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
				
                    <i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">
		      <span id="countFROMHR" runat="server" class="dbox__count" >0</span>
                                               
					<span class="dbox__title">From HR</span>
				</div>								
			</div>
		</div>
                     
		
        <div class="col-md-3"hidden>
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
						<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">
				 <span id="countNhold" runat="server" class="dbox__count">0</span>          
					<span class="dbox__title">Reject</span>
				</div>
				
						
			</div>
		</div>	                                                                                                                                                                                   
                                <!-- ====================
                                       #Bounce Rate End 
                                     ==================== -->
                            
                        
                      
                      
                            <div class="col-md-12">
                        
                        <div class="card shadow p-3 mb-5 bg-white rounded  "  >
                       			     
                                            <div id="chartContainer1" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        
                                </div>
                               

                               
                              </div>
                               
                    
           
               
                       
                           
    <div id="myModal" class="modal fade" role="dialog" style="width:auto;">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title">
                        Report</div>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    
                </div>
                <div class="modal-body">
                    <div class="container mt-3">
                         <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                      <a class="nav-link active" data-toggle="tab" href="#dat">Date </a>
                                       
                                    </li>
                                      <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#employee">Employee </a>
                                             
                                    </li>
                                    
                                           
                         </ul>
             <div class="tab-content">
                        <div id="dat"  class="container tab-pane active">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Textbox runat="server" placeholder="Report From.." TextMode="Date"></asp:Textbox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Textbox runat="server" placeholder="Report To.." TextMode="Date"></asp:Textbox>
                                </div>
                            </div>
                        </div>
                        <div id="employee"  class="container tab-pane fade">
                            <div class="row" >
                                <%--<asp:DropDownList ID="getempid" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>--%>
                                <asp:DropDownList ID="TeamNamePopUPDDList" CssClass=" form-control"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        

              </div>
                </div>
                    </div>
                <div class="modal-footer">
                  <%-- <asp:Button  runat="server" Text="Filter" CssClass="form-control btn-primary"style="width:100%;text-align:center;"/>--%>
                    <button id="FilterReport" class="form-control btn-primary" style="width:100%" onclick="FilterReport_Click">Filter</button>
                </div>
            </div>
        </div>
    </div>
    

<script type="text/javascript">
    function openModal() {
        alert("success");
        document.getElementById("myModal").showModal();
    }
</script>
    <script >
        $(document).ready(function () {
            $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var min = $("[id*=min]").datepicker("getDate");
                var max = $("[id*=max]").datepicker("getDate");
                var startDate = new Date(data[3]);
                if (min == null && max == null) { return true; }
                if (min == null && startDate <= max) { return true; }
                if (max == null && startDate >= min) { return true; }
                if (startDate <= max && startDate >= min) { return true; }
                return false;
            });
            


            $("[id*=min]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            $("[id*=max]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            var table = $('.noticedt').DataTable();

            // Event listener to the two range filtering inputs to redraw on input
            $('#min, #max').change(function () {
                console.log('method called ')
                table.draw();
            });
        });
    </script>


    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 
 <script type="text/javascript">
                                         				    
         function bindgraphNew(EMPDBM, Super, imp, hod, hos, ben, fin) {

             console.log('method called ', EMPDBM, Super, imp, hod, hos, ben, fin);
        var EMPDBM = [parseInt(EMPDBM)];
        var Super = [parseInt(Super)];
        var imp = [parseInt(imp)];
        var hod = [parseInt(hod)];
       
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
                    "styles": ["#9966ff", "#2a714e","#3399ff", "#712a2a", "#712a71", "#2a4e71", "#2a714e"],

                    "animation": {
                        "effect": "ANIMATION_SLIDE_BOTTOM",
                        "sequence": 0,
                        "speed": 800,
                        "delay": 800,


                    }
                },

                "scaleX": {
                    "values": [

                    "Employee", "Supervisor", "Implementation", "Manager", "HOD", "HR", "Finance"


                    ],
                    "placement": "default",
                    "tick": {
                        "size": 58,
                        "placement": "cross",
                        "alpha": 0.3,
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
                        parseInt(Super),
                         parseInt(imp),
                        parseInt(hod),                       
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
                    if (e.scaletext === "Employee") {
                        console.log("enterbar");
                        EMPDBMExcel();
                    }

                        //else if (e.scaletext === "commitee") {
                        //    console.log("enterbar");
                        //    committeExcel();
                        //}
                        //else if (e.scaletext === "DBM_MAN") {
                        //    console.log("enterbar");
                        //    DBMMANExcel();
                        //}
                    else if (e.scaletext === "Supervisor") {
                        SuperExcel();
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
                    else if (e.scaletext === "HR") {
                        benExcel();
                    }
                    else if (e.scaletext === "finance") {
                        finExcel();
                    }
                    else {
                        alert('Please Click Bar In Chart');
                    }
                } else {
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
       


    }
                                      				    
                                    </script>

<script src="../UI/Style/zingchart.min.js"></script> 
<script>
    function EMPDBMExcel() {

        var k = "Employee";
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
    function SuperExcel() {
        var k = "Supervisor";
        var url = "GetExcelBarChart.aspx?data=" + k;
        window.location.href = url;

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




</asp:Content>

