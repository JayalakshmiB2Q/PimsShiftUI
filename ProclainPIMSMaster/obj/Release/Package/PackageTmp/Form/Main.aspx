<%@ Page Title="" Language="C#" MasterPageFile="~/Employeepage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProclainPIMSMaster.Form.Main" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>

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
    .card {
    background-color: #fff;
    border-radius: 10px;
    border: none;
    position: relative;
    margin-bottom: 30px;
    box-shadow: 0 0.46875rem 2.1875rem rgba(90,97,105,0.1), 0 0.9375rem 1.40625rem rgba(90,97,105,0.1), 0 0.25rem 0.53125rem rgba(90,97,105,0.12), 0 0.125rem 0.1875rem rgba(90,97,105,0.1);
}
.l-bg-cherry {
    background: linear-gradient(to right, #493240, #f09) !important;
    color: #fff;
}

.l-bg-blue-dark {
    background: linear-gradient(to right, #373b44, #4286f4) !important;
    color: #fff;
}

.l-bg-green-dark {
    background: linear-gradient(to right, #0a504a, #38ef7d) !important;
    color: #fff;
}

.l-bg-orange-dark {
    background: linear-gradient(to right, #a86008, #ffba56) !important;
    color: #fff;
}

.card .card-statistic-3 .card-icon-large .fas, .card .card-statistic-3 .card-icon-large .far, .card .card-statistic-3 .card-icon-large .fab, .card .card-statistic-3 .card-icon-large .fal {
    font-size: 110px;
}

.card .card-statistic-3 .card-icon {
    text-align: center;
    line-height: 50px;
    margin-left: 15px;
    color: #000;
    position: absolute;
    right: -5px;
    top: 20px;
    opacity: 0.1;
}


.l-bg-cyan {
    background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
    color: #fff;
}

.l-bg-green {
    background: linear-gradient(135deg, #23bdb8 0%, #43e794 100%) !important;
    color: #fff;
}

.l-bg-orange {
    background: linear-gradient(to right, #f9900e, #ffba56) !important;
    color: #fff;
}

.l-bg-cyan {
    background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
    color: #fff;
}
    </style>
    <style>
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

</style>
    <style>
        #sparklinedash5 {
                display: inline-block;
                width: 45px;
                height: 20px;
                vertical-align: top;
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
       
       .fa-user-plus:before {
    content: "\F234";
    color: slategray;
} 
.fa-thumbs-o-down:before {
    content: "\F088";
    color: #eaf1f9;
}
fa-inbox:before {
    color: #eaf1f9;
    content: "\F01C";
}
.fa-lightbulb-o:before {
    content: "\F0EB";
    color: #eaf1f9;
}
.fa-inbox:before {
    content: "\F01C";
    color: #eaf1f9;
}
.fa-thumbs-o-up:before {
    content: "\F087";
    color:#eaf1f9;
}
    </style>
        <script type="text/javascript">
        $(document).ready(function () {

            console.log('in datatable')



            //ContentPlaceHolder1_SuggestionGridView

            $('.noticedt').DataTable({
                dom: 'flrtiBp',
                scrollY:        '50vh',
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
    
  
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
        <div class="col-lg-12">
            <h1 style="background-color:#68a0d9!important;color:whitesmoke"><center>PIMS - POCLAIN IDEA MANAGEMENT SYSTEM</center></h1>
        </div>
    </div>
  <div class="col-cmd-12">
	<div class="row">
		<div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="spanTotal" runat="server" class="dbox__count"></span>                    
					<span class="dbox__title">Total Suggestion</span>
				</div>
				
						
			</div>
		</div>
		<div class="col-md-2">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
	<i class="fa fa-inbox" aria-hidden="true"></i>                                          
				</div>
				<div class="dbox__body">
					<span id="spanNew" runat="server"  class="dbox__count"></span>
					<span class="dbox__title"><b>Received</b></span>
				</div>											
			</div>
		</div>
		<div class="col-md-2">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>   
				</div>
				<div class="dbox__body">
					<span  id="spanAccepted" runat="server" class="dbox__count"></span>
					<span class="dbox__title">Accept</span>
				</div>											
			</div>
		</div>
        <div class="col-md-2">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">
		      <span id="spanNotFeas" runat="server" class="dbox__count" > </span>
                                               
					<span class="dbox__title">Reject</span>
				</div>
				
				
			</div>
		</div>
        <div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">
				 <span id="spanImpl" runat="server" class="dbox__count"></span>          
					<span class="dbox__title">Implement</span>
				</div>
				
						
			</div>
		</div>
	</div>
</div>

                   
                                            
                      <%-- </div>--%>
                        <div class="masonry-item col-md-12">
                           
                            <!-- ====================
                                    #Todo End
                                 ==================== -->
                <div class="col-md-12" style="height:100%;width:100%;">
                  <div id="demo1" class="carousel slide" data-ride="carousel">

                      <!-- Indicators -->
                      <ul class="carousel-indicators">
                        <li data-target="#demo1" data-slide-to="0" class="active" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="1" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="2" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="3" style="background-color:#b45858;"></li>
                      </ul>
  
                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                             <div class="row">
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5  rounded  "  >				     
                                            <div id="chartContainer1" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                                        </div>
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5  rounded  "  >				     
                                        <div id="chartContainer2" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                                        </div>
                             </div>
                        </div>
                        <div class="carousel-item">
                                   
                                    <div class="card shadow p-3 mb-5  rounded  "  >				     
                                        <div id="chartContainer3" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        </div>
                        <div class="carousel-item">
                                    
                                      				
                                    <div class="card shadow p-3 mb-5  rounded  "  >				     
                                        <div id="chartContainer4" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        </div>
                        <div class="carousel-item">
                                    
                                      				
                                    <div class="card shadow p-3 mb-5  rounded  "  >				     
                                        <div id="chartContainer5" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        </div>
                      </div>                     
                    </div>
             
                </div>
             
  </div>
                       
                            

                          <script >
                                      				    
                      function BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected) {

                                   		    console.log('method called ',oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                   		    var totrec = [parseInt(oneyrbrsuggestionreceived)];
                                   		    var accepted = [parseInt(oneyrbraccepted)];
                                   		    var rejected = [parseInt(oneyrbrrejected)];
                                      				          
                                            var myConfig = {
                                                "graphset": [{
                                                    "globals": {
                                                        "font-family": "Lato",
                                                        "title": {
                                                            "text": "Suggestions 2022",

                                                            "backgroundColor": "none",
                                                            "font-size": "22px",
                                                            "alpha": 1,
                                                            "adjust-layout": true,
                                                        },
                                                    },
                                                    "type": "bar",
                                                    '3dAspect': {
                                                        depth: 10,
                                                        true3d: 0,
                                                        yAngle: 10
                                                    },
                                                "background-color": "white",
                                                
                                                "plotarea": {
                                                    "margin": "dynamic"
                                                },
                                               
                                                "plot": {
                                                    "bars-space-left": 0.15,
                                                    "bars-space-right": 0.15,
                                                    "styles": ["#4568dc ", "#43cea2", "#ed4264"],
                                                    "animation": {
                                                    "effect": "ANIMATION_SLIDE_BOTTOM",
                                                    "sequence": 0,
                                                    "speed": 800,
                                                    "delay": 800,
                                                    
                                                    }
                                                },
                                               
                                                "scaleX": {
                                                    "values": [
                                                    "Suggestion Received",
                                                    "Accepted",
                                                    "Rejected",
           
									
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
                                                        parseInt(oneyrbrsuggestionreceived),
                                                        parseInt(oneyrbraccepted),
                                                        parseInt(oneyrbrrejected)
                
			  
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
 
                                            zingchart.render({
                                                    id: 'chartContainer1',
                                                    data: myConfig,
                                                    height: '100%',
                                                    width: '100%'
                                                });
  
                                      	}
                                      				    
                 </script>

                 <script >
                      function PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted) {
                                      		//oneyrpiimplemented  oneyrpiaccepted  oneyrpitotalsuggestion
                                      		console.log('zing pie ', oneyrpiimplemented, oneyrpiaccepted, oneyrpitotalsuggestion);
                                      		var myConfig2 = {
                                      		    "globals": {
                                      		        "font-family": "Lato",
                                      		        "title": {
                                      		            "text": "Suggestion vs Implementation"
                                      		          
                                                        
                                      		        },
                                      		    },
                                      		    "type": "pie3d",
                                      			
                                      			//"plot": {
                                      			//    'offset-r': "10%" //provide percentage value

                                      			//},

                                      			"series": [{
                                      				"values": [parseInt(oneyrpiimplemented)],
                                      				"text": "Implemented",
                                      				"backgroundColor": "#ed4264",

                                      			},
                                                    {
                                                                     
                                                        "values": [parseInt(oneyrpiaccepted)],
                                      				    "text": "Accepted",
                                      				    "backgroundColor": "#43cea2",
                                                    },
                                                    {
                                                                      
                                                        "values": [parseInt(oneyrpitotalsuggestion)],
                                                        "text": "Total Suggestion",
                                                        "backgroundColor": "#4568dc",
                                                    },
                                                                  
                                      			]
                                      		};

                                      		zingchart.render({
                                      			id: 'chartContainer2',
                                      			data: myConfig2,
                                      			height: "100%",
                                      			width: "100%"
                                      		});
                                      	}
                                      				    
                 </script>	
                                    
                 <script>
                      function BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19) {
                                      			        var myConfig = {
                                      			            "graphset": [{
                                      			                "globals": {
                                      			                    "font-family": "Lato",
                                      			                    "title": {
                                      			                        "text": "Implementation by Dept Wise",

                                      			                        "backgroundColor": "none",
                                      			                        "font-size": "22px",
                                      			                        "alpha": 1,
                                      			                        "adjust-layout": true,
                                      			                    },
                                      			                },
                                      			                "type": "bar",
                                      			                '3dAspect': {
                                      			                    depth: 10,
                                      			                    true3d: 0,
                                      			                    yAngle: 10
                                      			                },
                                      			                "background-color": "white",
                                      			                
                                      			                "plotarea": {
                                      			                    "margin": "dynamic"
                                      			                },
                                      			                "legend": {
                                      			                    "layout": "x3",
                                      			                    "overflow": "page",
                                      			                    "alpha": 0.05,
                                      			                    "shadow": false,
                                      			                    "align": "center",
                                      			                    "adjust-layout": true,
                                      			                    "marker": {
                                      			                        "type": "circle",
                                      			                        "border-color": "none",
                                      			                        "size": "10px"
                                      			                    },
                                      			                    "border-width": 0,
                                      			                    "maxItems": 3,
                                      			                    "toggle-action": "hide",
                                      			                    "pageOn": {
                                      			                        "backgroundColor": "#4568dc",
                                      			                        "size": "10px",
                                      			                        "alpha": 0.65
                                      			                    },
                                      			                    "pageOff": {
                                      			                        "backgroundColor": "#4568dc ",
                                      			                        "size": "10px",
                                      			                        "alpha": 0.65
                                      			                    },
                                      			                    "pageStatus": {
                                      			                        "color": "black"
                                      			                    }
                                      			                },
                                      			                //"plot": {
                                      			                //    "bars-space-left": 0.15,
                                      			                //    "bars-space-right": 0.15,
                                                                //   "style": ["#ff9966", "#3399ff", "#ff3300"],
                                      			                //    "animation": {
                                      			                //        "effect": "ANIMATION_SLIDE_BOTTOM",
                                      			                //        "sequence": 0,
                                      			                //        "speed": 800,
                                      			                //        "delay": 800
                                      			                //    }
                                      			                //},
                                      			                "plot": {
                                      			                    "facets": {
                                      			                       " front": {
                                      			                            'background-color': "#3EA4F9 #0055BF"
                                      			                        },
                                      			                        "right": {
                                      			                            'background-color': "#3EA4F9 #0055BF"
                                      			                        },
                                      			                        "left": {
                                      			                            'background-color': "#3EA4F9 #0055BF"
                                      			                        },
                                      			                        "top": {
                                      			                            'background-color': "white"
                                      			                        },
                                      			                        "bottom": {
                                      			                            'background-color': "white"
                                      			                        }
                                      			                    }
                                      			                },
                                      			                "scale-y": {
                                      			                    "line-color": "#00468b",
                                      			                    "item": {
                                      			                        "font-color": "#00468b"
                                      			                    },
                                      			                    
                                      			                    "guide": {
                                      			                        "visible": true
                                      			                    },
                                      			                    "label": {
                                      			                        "text": "Suggestions",
                                      			                        "font-family": "arial",
                                      			                        "bold": true,
                                      			                        "font-size": "14px",
                                      			                        "font-color": "#00468b",
                                      			                    },
                                      			                },
                                      			                "scaleX": {
                                      			                    "values": [
                                                                      "ADMIN",
                                                                      "AFTMRKT",
                                                                      "APP.ENGG",
                                                                      "FIN",
                                                                      "HR",
                                                                      "INNOV",
                                                                      "IT",
                                                                      "LOG",
                                                                      "MAINT",
                                                                      "MAN.ENGG",
                                                                      "PLT.MGMT",
                                                                      "PROD",
                                                                      "ABU",
                                                                      "MBU",
                                                                      "P.TRAIN",
                                                                      "QUA",
                                                                      "SALE&SUPP",
                                                                      "SOUR",
                                                                      "GNRL.MGMT"

                                      			                    ],
                                      			                    "guide": {
                                      			                        visible: true
                                      			                    },
                                      			                    "placement": "default",
                                      			                    "item": {
                                      			                        "offsetY": 5,
                                      			                        "angle": 270
                                      			                    },
                                      			                    "tick": {
                                      			                        "size": 2
                                      			                    }
                                      			                },

                                      			                "tooltip": {
                                      			                    "visible": false
                                      			                },
                                      			                "crosshair-x": {
                                      			                    "line-width": "100%",
                                      			                    "alpha": 0.18,
                                      			                    "plot-label": {
                                      			                        "header-text": "%kv "
                                      			                    }
                                      			                },
                                      			                "series": [{
                                      			                    "values": [
                                                                     parseInt(oneyrdepttotalimplement1),
                                                                      parseInt(oneyrdepttotalimplement2),
                                                                      parseInt(oneyrdepttotalimplement3),
                                                                      parseInt(oneyrdepttotalimplement4),
                                                                      parseInt(oneyrdepttotalimplement5),
                                                                      parseInt(oneyrdepttotalimplement6),
                                                                      parseInt(oneyrdepttotalimplement7),
                                                                      parseInt(oneyrdepttotalimplement8),
                                                                      parseInt(oneyrdepttotalimplement9),
                                                                      parseInt(oneyrdepttotalimplement10),
                                                                      parseInt(oneyrdepttotalimplement11),
                                                                      parseInt(oneyrdepttotalimplement12),
                                                                      parseInt(oneyrdepttotalimplement13),
                                                                      parseInt(oneyrdepttotalimplement14),
                                                                      parseInt(oneyrdepttotalimplement15),
                                                                      parseInt(oneyrdepttotalimplement16),
                                                                      parseInt(oneyrdepttotalimplement17),
                                                                      parseInt(oneyrdepttotalimplement18),
                                                                      parseInt(oneyrdepttotalimplement19)

                                      			                    ],
                                      			                    "alpha": 0.95,
                                      			                    "borderRadiusTopLeft": 7,
                                      			                    "background-color": "#ed4264",
                                      			                    "text": "Total Implement",
                                      			                    "valueBox": [{
                                      			                        "fontSize": 10,
                                      			                        "fontWeight": 600,
                                      			                        "offsetY": -8,
                                      			                        "jsRule": "rule_series_123_valueBox_0()"
                                      			                    }]
                                      			                },
                                                                  {
                                                                      "values": [
                                                                        parseInt(oneyrdeptimplemented1),
                                                                        parseInt(oneyrdeptimplemented2),
                                                                        parseInt(oneyrdeptimplemented3),
                                                                        parseInt(oneyrdeptimplemented4),
                                                                        parseInt(oneyrdeptimplemented5),
                                                                        parseInt(oneyrdeptimplemented6),
                                                                        parseInt(oneyrdeptimplemented7),
                                                                        parseInt(oneyrdeptimplemented8),
                                                                        parseInt(oneyrdeptimplemented9),
                                                                        parseInt(oneyrdeptimplemented10),
                                                                        parseInt(oneyrdeptimplemented11),
                                                                        parseInt(oneyrdeptimplemented12),
                                                                        parseInt(oneyrdeptimplemented13),
                                                                        parseInt(oneyrdeptimplemented14),
                                                                        parseInt(oneyrdeptimplemented15),
                                                                        parseInt(oneyrdeptimplemented16),
                                                                        parseInt(oneyrdeptimplemented17),
                                                                        parseInt(oneyrdeptimplemented18),
                                                                        parseInt(oneyrdeptimplemented19)
                                                                      ],
                                                                      "borderRadiusTopLeft": 7,
                                                                      "alpha": 0.95,
                                                                      "background-color": "#4568dc ",
                                                                      "text": "Implemented",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -8,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                  },
                                                                  {
                                                                      "values": [
                                                                        parseInt(oneyrdeptyettoimplement1),
                                                                        parseInt(oneyrdeptyettoimplement2),
                                                                        parseInt(oneyrdeptyettoimplement3),
                                                                        parseInt(oneyrdeptyettoimplement4),
                                                                        parseInt(oneyrdeptyettoimplement5),
                                                                        parseInt(oneyrdeptyettoimplement6),
                                                                        parseInt(oneyrdeptyettoimplement7),
                                                                        parseInt(oneyrdeptyettoimplement8),
                                                                        parseInt(oneyrdeptyettoimplement9),
                                                                        parseInt(oneyrdeptyettoimplement10),
                                                                        parseInt(oneyrdeptyettoimplement11),
                                                                        parseInt(oneyrdeptyettoimplement12),
                                                                        parseInt(oneyrdeptyettoimplement13),
                                                                        parseInt(oneyrdeptyettoimplement14),
                                                                        parseInt(oneyrdeptyettoimplement15),
                                                                        parseInt(oneyrdeptyettoimplement16),
                                                                        parseInt(oneyrdeptyettoimplement17),
                                                                        parseInt(oneyrdeptyettoimplement18),
                                                                        parseInt(oneyrdeptyettoimplement19)
                                                                      ],
                                                                      "alpha": 0.95,
                                                                      "borderRadiusTopLeft": 7,
                                                                      "background-color": "#43cea2",
                                                                      "text": "Yet To Implement",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -8,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                  },

                                      			                ]
                                      			            }]
                                      			        };

                                      			        zingchart.render({
                                      			            id: 'chartContainer3',
                                      			            data: myConfig,
                                      			            height: '100%',
                                      			            width: '100%'
                                      			        });
                                      			    }
                 </script>	
                                                
                 <script>
                      function BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12) {

                                                              var chartId = 'myChart';

                                                             
                                                              var dataHold = [
                                                                               parseInt(oneyrmnthold1),
                                                                               parseInt(oneyrmnthold2),
                                                                               parseInt(oneyrmnthold3),
                                                                               parseInt(oneyrmnthold4),
                                                                               parseInt(oneyrmnthold5),
                                                                               parseInt(oneyrmnthold6),
                                                                               parseInt(oneyrmnthold7),
                                                                               parseInt(oneyrmnthold8),
                                                                               parseInt(oneyrmnthold9),
                                                                               parseInt(oneyrmnthold10),
                                                                               parseInt(oneyrmnthold11),
                                                                               parseInt(oneyrmnthold12)

                                                              ];
                                                              var dataRecive = [
                                                                          parseInt(oneyrmntreceived1),
                                                                          parseInt(oneyrmntreceived2),
                                                                          parseInt(oneyrmntreceived3),
                                                                          parseInt(oneyrmntreceived4),
                                                                          parseInt(oneyrmntreceived5),
                                                                          parseInt(oneyrmntreceived6),
                                                                          parseInt(oneyrmntreceived7),
                                                                          parseInt(oneyrmntreceived8),
                                                                          parseInt(oneyrmntreceived9),
                                                                           parseInt(oneyrmntreceived10),
                                                                          parseInt(oneyrmntreceived11),
                                                                          parseInt(oneyrmntreceived12)


                                                              ];
                                                              var dataAcc = [
                                                                          parseInt(oneyrmntaccepted1),
                                                                          parseInt(oneyrmntaccepted2),
                                                                          parseInt(oneyrmntaccepted3),
                                                                          parseInt(oneyrmntaccepted4),
                                                                          parseInt(oneyrmntaccepted5),
                                                                          parseInt(oneyrmntaccepted6),
                                                                          parseInt(oneyrmntaccepted7),
                                                                          parseInt(oneyrmntaccepted8),
                                                                          parseInt(oneyrmntaccepted9),
                                                                          parseInt(oneyrmntaccepted10),
                                                                          parseInt(oneyrmntaccepted11),
                                                                          parseInt(oneyrmntaccepted12)

                                                              ];
                                                              var dataReject = [
                                                                          parseInt(oneyrmntreject1),
                                                                          parseInt(oneyrmntreject2),
                                                                          parseInt(oneyrmntreject3),
                                                                          parseInt(oneyrmntreject4),
                                                                          parseInt(oneyrmntreject5),
                                                                          parseInt(oneyrmntreject6),
                                                                          parseInt(oneyrmntreject7),
                                                                          parseInt(oneyrmntreject8),
                                                                          parseInt(oneyrmntreject9),
                                                                          parseInt(oneyrmntreject10),
                                                                          parseInt(oneyrmntreject11),
                                                                          parseInt(oneyrmntreject12)

                                                              ];
                                                              var dataImp = [
                                                                         parseInt(oneyrmntimplemented1),
                                                                         parseInt(oneyrmntimplemented2),
                                                                         parseInt(oneyrmntimplemented3),
                                                                         parseInt(oneyrmntimplemented4),
                                                                         parseInt(oneyrmntimplemented5),
                                                                         parseInt(oneyrmntimplemented6),
                                                                         parseInt(oneyrmntimplemented7),
                                                                         parseInt(oneyrmntimplemented8),
                                                                         parseInt(oneyrmntimplemented9),
                                                                         parseInt(oneyrmntimplemented10),
                                                                         parseInt(oneyrmntimplemented11),
                                                                         parseInt(oneyrmntimplemented12)

                                                              ];
                                                              console.log('myConfigBarChartYearMonth', dataRecive, dataAcc, dataReject, dataHold, dataImp);
                                                              var myConfigBarChartYearMonth = {
                                                                  "graphset": [{
                                                                      "globals": {
                                                                          "font-family": "Lato",

                                                                          "title": {
                                                                              "text": "Suggestions 2022 Report",
                                                                              
                                                                              "backgroundColor": "none",
                                                                              "font-size": "22px",
                                                                              "alpha": 1,
                                                                              "adjust-layout": true,
                                                                          }
                                                                      },
                                                                      type: 'bar',
                                                                      '3dAspect': {
                                                                          depth: 10,
                                                                          true3d: 0,
                                                                          yAngle: 10
                                                                      },
                                                                      "plotarea": {
                                                                          "margin": "dynamic"
                                                                      },
                                                                      "legend": {
                                                                          "layout": "x3",
                                                                          "overflow": "page",
                                                                          "alpha": 0.05,
                                                                          "shadow": false,
                                                                          "align": "center",
                                                                          "adjust-layout": true,
                                                                          "marker": {
                                                                              "type": "circle",
                                                                              "border-color": "none",
                                                                              "size": "10px"
                                                                          },
                                                                          "border-width": 0,
                                                                          "maxItems": 3,
                                                                          "toggle-action": "hide",
                                                                          "pageOn": {
                                                                              "backgroundColor": "#000",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageOff": {
                                                                              "backgroundColor": "#7E7E7E",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageStatus": {
                                                                              "color": "black"
                                                                          }
                                                                      }
                                                                    , "plot": {
                                                                        "bars-space-left": 0.15,
                                                                        "bars-space-right": 0.15,
                                                                        "style": ["#4568dc ", "#2A685D", "#ed4264"],
                                                                        "animation": {
                                                                            "effect": "ANIMATION_SLIDE_BOTTOM",
                                                                            "sequence": 0,
                                                                            "speed": 800,
                                                                            "delay": 800
                                                                        }
                                                                    },
                                                                      "scaleX": {
                                                                          "values": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                                                                          "guide": {
                                                                              visible: true
                                                                          },
                                                                          "item": {
                                                                              "offsetY": 5,
                                                                              "angle": 270
                                                                          },
                                                                          "tick": {
                                                                              "size": 2
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
                                                                          "alpha": 0.4,
                                                                      },
                                                                      "series": [
                                                                      {
                                                                          "values": dataRecive,
                                                                          "text": "Received",
                                                                          "background-color": "#4568dc",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": dataAcc,
                                                                          "text": "Accepted",
                                                                          "background-color": " #43cea2",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataReject,
                                                                          "text": "Reject",
                                                                          "background-color": "#ed4264",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataHold,
                                                                          "text": "Not Feasible",
                                                                          "background-color": "#ff9933",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataImp,
                                                                          "text": "Implemented",
                                                                          "background-color": "#33cc33",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }]
                                                                  }]
                                                              };


                                                              // RENDER CHART
                                                              // -----------------------------
                                                              zingchart.render({
                                                                  id: 'chartContainer4',
                                                                  data: myConfigBarChartYearMonth,
                                                                  height: '100%',
                                                                  width: '100%'
                                                              });
                                                          }
                 </script>		
                                                      
                 <script>
                     function BarChartYearWiseYearList(yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10) {

                                                              var chartId = 'myChart';

                                                             
                                                              var yrsuggestionreceived = [
                                                                               parseInt(yrsuggestionreceived1),
                                                                               parseInt(yrsuggestionreceived2),
                                                                               parseInt(yrsuggestionreceived3),
                                                                               parseInt(yrsuggestionreceived4),
                                                                               parseInt(yrsuggestionreceived5),
                                                                               parseInt(yrsuggestionreceived6),
                                                                               parseInt(yrsuggestionreceived7),
                                                                               parseInt(yrsuggestionreceived8),
                                                                               parseInt(yrsuggestionreceived9),
                                                                               parseInt(yrsuggestionreceived10)
                                                                               

                                                              ];
                                                              var yraccepted = [
                                                                          parseInt(yraccepted1),
                                                                          parseInt(yraccepted2),
                                                                          parseInt(yraccepted3),
                                                                          parseInt(yraccepted4),
                                                                          parseInt(yraccepted5),
                                                                          parseInt(yraccepted6),
                                                                          parseInt(yraccepted7),
                                                                          parseInt(yraccepted8),
                                                                          parseInt(yraccepted9),
                                                                           parseInt(yraccepted10)


                                                              ];
                                                              var yrreject = [
                                                                          parseInt(yrreject1),
                                                                          parseInt(yrreject2),
                                                                          parseInt(yrreject3),
                                                                          parseInt(yrreject4),
                                                                          parseInt(yrreject5),
                                                                          parseInt(yrreject6),
                                                                          parseInt(yrreject7),
                                                                          parseInt(yrreject8),
                                                                          parseInt(yrreject9),
                                                                          parseInt(yrreject10)

                                                              ]; 
                                                                var yrimplement = [
                                                                          parseInt(yrimplement1),
                                                                          parseInt(yrimplement2),
                                                                          parseInt(yrimplement3),
                                                                          parseInt(yrimplement4),
                                                                          parseInt(yrimplement5),
                                                                          parseInt(yrimplement6),
                                                                          parseInt(yrimplement7),
                                                                          parseInt(yrimplement8),
                                                                          parseInt(yrimplement9),
                                                                          parseInt(yrimplement10)

                                                                ];
                                                              var yrhold = [
                                                                        parseInt(yrhold1),
                                                                        parseInt(yrhold2),
                                                                        parseInt(yrhold3),
                                                                        parseInt(yrhold4),
                                                                        parseInt(yrhold5),
                                                                        parseInt(yrhold6),
                                                                        parseInt(yrhold7),
                                                                        parseInt(yrhold8),
                                                                        parseInt(yrhold9),
                                                                        parseInt(yrhold10)

                                                              ]; 
                                                              
                                                              console.log('myConfigBarChartYearWiseYearList', yrsuggestionreceived, yraccepted, yrreject);
                                                              var myConfigBarChartYearWiseYearList = {
                                                                  "graphset": [{
                                                                      "globals": {
                                                                          "font-family": "Lato",

                                                                          "title": {
                                                                              "text": "Suggestions Year Wise Report",
                                                                              
                                                                              "backgroundColor": "none",
                                                                              "font-size": "22px",
                                                                              "alpha": 1,
                                                                              "adjust-layout": true,
                                                                          }
                                                                      },
                                                                      type: 'bar',
                                                                      '3dAspect': {
                                                                          depth: 10,
                                                                          true3d: 0,
                                                                          yAngle: 10
                                                                      },
                                                                      "plotarea": {
                                                                          "margin": "dynamic"
                                                                      },
                                                                      "legend": {
                                                                          "layout": "x3",
                                                                          "overflow": "page",
                                                                          "alpha": 0.05,
                                                                          "shadow": false,
                                                                          "align": "center",
                                                                          "adjust-layout": true,
                                                                          "marker": {
                                                                              "type": "circle",
                                                                              "border-color": "none",
                                                                              "size": "10px"
                                                                          },
                                                                          "border-width": 0,
                                                                          "maxItems": 3,
                                                                          "toggle-action": "hide",
                                                                          "pageOn": {
                                                                              "backgroundColor": "#000",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageOff": {
                                                                              "backgroundColor": "#7E7E7E",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageStatus": {
                                                                              "color": "black"
                                                                          }
                                                                      }
                                                                    , "plot": {
                                                                        "bars-space-left": 0.15,
                                                                        "bars-space-right": 0.15,
                                                                        "style": ["#4568dc", " #43cea2", "#ed4264"],
                                                                        "animation": {
                                                                            "effect": "ANIMATION_SLIDE_BOTTOM",
                                                                            "sequence": 0,
                                                                            "speed": 800,
                                                                            "delay": 800
                                                                        }
                                                                    },
                                                                      "scaleX": {
                                                                          "values": ["2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029"],
                                                                          "guide": {
                                                                              visible: true
                                                                          },
                                                                          "item": {
                                                                              "offsetY": 5,
                                                                              "angle": 270
                                                                          },
                                                                          "tick": {
                                                                              "size": 2
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
                                                                          "alpha": 0.4,
                                                                      },
                                                                      "series": [
                                                                      {
                                                                          "values": yrsuggestionreceived,
                                                                          "text": "Received",
                                                                          "background-color": "#4568dc",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": yraccepted,
                                                                          "text": "Accepted",
                                                                          "background-color": " #43cea2",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": yrreject,
                                                                          "text": "Reject",
                                                                          "background-color": "#ed4264",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },  
                                                                      {
                                                                          "values": yrimplement,
                                                                      "text": "Implement",
                                                                      "background-color": "#33cc3",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -10,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                      },
                                                                      {
                                                                          "values": yrhold,
                                                                          "text": "Not Feasible",
                                                                          "background-color": "#43cea2 ",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },      

                                                                      ]
                                                                  }]
                                                              };
                                                              zingchart.bind(null, 'node_click', function (e) {
                                                                  console.log(e);
                                                                  if (e.scaletext === "2020") {
                                                                      console.log("enterbar");
                                                                      year1();
                                                                  }
                                                                  else if (e.scaletext === "2021") {
                                                                      year2();
                                                                  }
                                                                  else if (e.scaletext === "2022") {
                                                                      year3();
                                                                  }
                                                                  else if (e.scaletext === "2023") {
                                                                      year4();
                                                                  }
                                                                  else if (e.scaletext === "2024") {
                                                                      year5();
                                                                  }
                                                                  else if (e.scaletext === "2025") {
                                                                      year6();
                                                                  }
                                                                  else if (e.scaletext === "2026") {
                                                                      year7();
                                                                  }
                                                                  else if (e.scaletext === "2027") {
                                                                      year8();
                                                                  }
                                                                  else if (e.scaletext === "2028") {
                                                                      year9();
                                                                  }
                                                                  else if (e.scaletext === "2029") {
                                                                      year10();
                                                                  }
                                                                  else {
                                                                      alert('Please Click Year In Chart');
                                                                  }


                                                              });


                                                              // RENDER CHART
                                                              // -----------------------------
                                                              zingchart.render({
                                                                  id: 'chartContainer5',
                                                                  data: myConfigBarChartYearWiseYearList,
                                                                  height: '100%',
                                                                  width: '100%'
                                                              });
                                                          }
                                                      </script>		
           

                 <script type="text/javascript">
                                   
                     function bindgraphNew(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted, oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19, oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12, yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10) {
                                        console.log(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                        PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19);
                                        BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12);
                                        BarChartYearWiseYearList(yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10)
                                        console.log('barchartyearMonth', oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12)
                                    }


                                    
                            </script>
    
            <script src="../UI/Style/zingchart.min.js"></script>  
            
<script>
    function year1() {
       
        var k = "year20";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        console.log(k)
        console.log("urlenter");
        window.location.href = url;
        console.log("urlexit");

    }
    function year2() {
        var k = "year21";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year3() {
        var k = "year22";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year4() {

        var k = "year23";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function year5() {
        var k = "year24";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function year6() {
        var k = "year25";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year7() {
        var k = "year26";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year8() {

        var k = "year27";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year9() {
        var k = "year28";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year10() {
        var k = "year29";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
</script>
            
            
            
                      
        <script src="../UI/Style/wow.min.js"></script>
                            <script>
                                new WOW().init();
                            </script>
      
                    
                
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


</asp:Content>
