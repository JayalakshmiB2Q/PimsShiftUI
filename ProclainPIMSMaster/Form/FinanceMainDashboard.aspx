
<%@ Page Title="" Language="C#" MasterPageFile="~/FinanacePage.Master" AutoEventWireup="true" CodeBehind="FinanceMainDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.FinanceMainDashboard" %>
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
    <script src="../UI/Script/jquery.filtertable.min.js"></script>
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
  
      background: linear-gradient(to right, #373b44, #4286f4) !important;
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
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script> 
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row gap-20 masonry pos-r">
                        <div class="masonry-sizer col-md-6"></div>
                        <div class="masonry-item w-100">
                            <div class="row gap-20">
                                <!-- ====================
                                        #Total Visits 
                                     ==================== -->
                               <%-- <div class="col-md-1"></div>--%>
                               <div class="col-md-3">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="spanUserInbox" runat="server" class="dbox__count"></span>                    
					<span class="dbox__title">User Idea Yet to Pay</span>
				</div>
				
						
			</div>
		</div>
                                <div class="col-md-2">
                               <div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="spanUserBal" runat="server" class="dbox__count"></span>                    
					<span class="dbox__title">User Idea Paid</span>
				</div>
				</div>
						
			</div>
              <div class="col-md-2">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="spanImplInbox" runat="server" class="dbox__count"></span>                    
					<span class="dbox__title">Implement Idea Yet to Pay</span>
				</div>
				
						
			</div>
		</div>
         <div class="col-md-2">
			<div class="dbox dbox--color-2">
				<div class="dbox__icon">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="dbox__body">					
                    <span id="spanImplBal" runat="server" class="dbox__count"></span>                    
					<span class="dbox__title">Implement Idea Paid</span>
				</div>
				
						
			</div>
		</div>
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

		</div>

                                                                                               
                             

                                
                             

                              
                               <%-- <div class="col-md-1"></div>--%>
                                <!-- ====================
                                       #Bounce Rate End 
                                     ==================== -->
                            </div>
                            <div class="row gap-20">
                            <div class="masonry-item col-md-12 ">
                            <!-- ====================
                                         #Todo 
                                 ==================== -->
                            <div class="bd bgc-white p-20 cardintab reps">
                                <div class="layers">
                                    <div class="table100 ver6 m-b-110 table-responsive">
                            <div class="form-control reps  " style="border: none!important;">
                                
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    
                                    <div class="col-md-3"><asp:textbox runat="server" CssClass="form-control" name="min" id="min" placeholder="StartDate"  /></div>
                                    <div class="col-md-3"><asp:textbox runat="server" CssClass="form-control" name="max" id="max" placeholder="EndDate"  /></div>
                                    <div class="col-md-3">
                                         
                                        
                                    </div>
                                </div>
                            </div>
                            
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt reps" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                     <asp:BoundField DataField="IDeaID" HeaderText="IdeaID" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="BENGrade" HeaderText="Beneficiary_Grade" />
                                    <asp:BoundField DataField="New" HeaderText="Idea Employee" />
                                     <asp:BoundField DataField="ApprovedUserAmt" HeaderText="Employee Amount" />
                                    <asp:BoundField DataField="ApprovedImpl" HeaderText="Idea Implement Member" />
                                     <asp:BoundField DataField="ApprovedImplAmt" HeaderText ="Implement Amount" />
                                   
                                </Columns>

                            </asp:GridView>
                        </div>
                                  
                                </div>
                            </div>

                            

                        </div>
                            </div>
                        </div>
                       
                       
                        
                  
                        
                                </div>
                            

                          

      <script >
        $(document).ready(function () {
            $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var min = $("[id*=min]").datepicker("getDate");
                var max = $("[id*=max]").datepicker("getDate");
                var startDate = new Date(data[1]);
                if (min == null && max == null) { return true; }
                if (min == null && startDate <= max) { return true; }
                if (max == null && startDate >= min) { return true; }
                if (startDate <= max && startDate >= min) { return true; }
                return false;
            }
            );


            $("[id*=min]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            $("[id*=max]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            var table = $('.noticedt').DataTable();

            // Event listener to the two range filtering inputs to redraw on input
            $('#min, #max').change(function () {
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


</asp:Content>

