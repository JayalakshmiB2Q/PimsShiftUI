<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProclainPIMSMaster.Form.Approved_Suggestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />




    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />



    <!--===============================================================================================-->


    <!--===============================================================================================-->
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
    <%--'flrtiBp'--%>
    <script type="text/javascript">
        $(document).ready(function () {
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

    <script type="text/javascript">
            function MoveNext(next_ctrl,_key) {
              
                if (_key == 13) {
                    //alert(next_ctrl);
                    var _next = document.getElementById(next_ctrl);
                    _next.focus();
                    return false;
                }
               
             }
        </script>
        <style>
        
* {
    margin: 0;
    padding: 0
}
  

  
h2{
    color: #2F8D46;
}
#form {
    text-align: center;
    position: relative;
    margin-top: 20px
}
  
#form fieldset {
    background: white;
    border: 0 none;
    border-radius: 0.8rem;
    box-sizing: border-box;
    width: 100%;
    margin: 0;
    padding-bottom: 20px;
    position: relative
}
   
.finish {
    text-align: center
}
  
#form fieldset:not(:first-of-type) {
    display: none
}
  
#form .previous-step, .next-step {
    width: 100px;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px 10px 0px;
    float: right
}
  
.form, .previous-step {
    background: #616161;
}
  
.form, .next-step {
    background: #2F8D46;
}
  
#form .previous-step:hover,
#form .previous-step:focus {
    background-color: #000000
}
  
#form .next-step:hover,
#form .next-step:focus {
    background-color: #2F8D46
}
  
.text {
    color: #2F8D46;
    font-weight: normal
}
  
#progressbar {
    margin-bottom: -142px;
    overflow: hidden;
    color: lightgrey
}
  
#progressbar .active {
    color: #2F8D46
}
  
#progressbar li {
    list-style-type: none;
    font-size: 15px;
    width: 25%;
    float: left;
    position: relative;
    font-weight: 400
}
  
#progressbar #step1:before {
    content: "1"
}
  
#progressbar #step2:before {
    content: "2"
}
  
#progressbar #step3:before {
    content: "3"
}
  
#progressbar #step4:before {
    content: "4"
}
#progressbar #step5:before {
    content: "5"
}
  
#progressbar li:before {
    width: 50px;
    height: 50px;
    line-height: 45px;
    display: block;
    font-size: 20px;
    color: #ffffff;
    background: lightgray;
    border-radius: 50%;
    margin: 0 auto 10px auto;
    padding: 2px
}
  
#progressbar li:after {
    content: '';
    width: 100%;
    height: 2px;
    background: lightgray;
    position: absolute;
    left: 0;
    top: 25px;
    z-index: -1
}
  
#progressbar li.active:before,
#progressbar li.active:after {
    background: #000066
}
  
.progress {
    height: 20px
}
  
.progress-bar {
    background-color: #000066
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

        /*.container-table100 {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }*/

        .paginate_button.current:hover, .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            color: #fff !important;
            background: #1e7ee0 !important;
        }

        /*table.dataTable tbody tr {
            background-color: none !important;
            background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
        }*/

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

        /*.reps {
            background: linear-gradient(#9DB6CC) !important;
        }*/

        .btns {
            background: linear-gradient(-68deg, #cec9cc, #bdbaba) !important;
            width: 40px !important;
            height: 40px !important;
        }

        .btn-hight {
            width: 40px !important;
            height: 40px !important;
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
        }

        .bor {
            border: 1px solid #ced4da !important;
        }

        .apopbtn {
            background: linear-gradient(-68deg, #3618dc, #2b2f5d) !important;
            margin: 10px;
            color: #ffffff !important;
        }
    </style>

    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script>
    <script>
        var handleDataTableButtons = function () {
            "use strict";
            0 !== $('#<%= SuggestionGridView.ClientID %>').length &&
                  $('#<%= SuggestionGridView.ClientID %>').DataTable({
                      dom: "Bfrtip",
                      buttons: [{
                          extend: "copy",
                          className: "btn-sm"
                      }, {
                          extend: "csv",
                          className: "btn-sm"
                      }, {
                          extend: "excel",
                          className: "btn-sm"
                      }, {
                          extend: "pdf",
                          className: "btn-sm"
                      }, {
                          extend: "print",
                          className: "btn-sm"
                      }],
                      responsive: !0
                  })
        },
    TableManageButtons = function () {
        "use strict";
        return {
            init: function () {
                handleDataTableButtons()
            }
        }
    }();
    </script>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('#<%= SuggestionGridView.ClientID %>').dataTable();
        });
        TableManageButtons.init();
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--<div class="full-container">--%>
    <%----%>


    <%--<label class="c-grey-900 mT-10 mB-30" style="font-size:large;">Suggestions</label>--%>

    <%--<div class="row">
                                <div class="col-md-12">--%>
    <%--<div class="bgc-white bd bdrs-3 p-20 mB-20">--%>
    <%--<h4 class="c-grey-900 mB-20"></h4>--%>
    <%--<<%--div class="main-content bgc-grey-100">
        <div id="mainContent">
            <div class="full-container">--%>
    <div class="limiter reps">    
        <div class="container-table100 form-control" style="display: contents;">
            <div class="wrap">
            <div class="container">
        <div class="row justify-content-center">
            <div class="col-11 col-sm-9 col-md-7 
                col-lg-9 col-xl-5 text-center p-0 mt-6 mb-4">
             <%--   <div class="px-0 pt-6 pb-0 mt-6 mb-6">
                  
                        <ul id="progressbar">
                            <li class="active" id="step1">
                                <strong>Step 1</strong>
                            </li>
                            <li id="step2"><strong>Step 2</strong></li>
                            <li id="step3"><strong>Step 3</strong></li>
                            <li id="step4"><strong>Step 4</strong></li>
                             <li id="step5"><strong>Step 5</strong></li>
                        </ul>
                        <div class="progress">
                            <div class="progress-bar"></div>
                        </div> <br>
                        <fieldset>
                           
                            <input type="button" name="next-step" 
                                class="next-step" value="Next Step" />
                        </fieldset>
                        <fieldset>
                          
                            <input type="button" name="next-step" 
                                class="next-step" value="Next Step" />
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>
                        <fieldset>
                            
                            <input type="button" name="next-step" 
                                class="next-step" value="Final Step" />
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>
                         <fieldset>
                            
                            <input type="button" name="next-step" 
                                class="next-step" value="Final Step" />
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>

                        <fieldset>
                            <div class="finish">
                                <h2 class="text text-center">
                                    <strong>FINISHED</strong>
                                </h2>
                            </div>
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>
                   
                </div>--%>
            </div>
        </div>
    </div>
                <div class="row">
                    <div class="col-md-12">

                        <div class="table100 ver6 m-b-110 table-responsive">
                            <div class="form-control reps  " style="border: none!important;">
                                <div class="row">
                                    <div class="col-md-8"></div>
                                    <div class="col-md-1 " style="border: none!important;">
                                        <%--<asp:ImageButton ID="ExcelImageButton" CssClass="btn-hight" runat="server" src="../UI/assets/static/images/Icons/Excel1.png" style="background:none;padding-bottom:1px"  OnClick="ExcelButton_OnClick"  />--%>
                                    </div>
                                    <div class="col-md-1" style="border: none!important;">
                                        <%--<asp:ImageButton ID="PdfImageButton" CssClass="btn-hight" runat="server" src="../UI/assets/static/images/Icons/Pdf.ico" style="background:none"  OnClick="PdfButton_OnClick"  />--%>
                                    </div>
                                    <div class="col-md-1" style="border: none!important;">
                                        <%--<asp:ImageButton ID="PrintImageButton" CssClass="btn-hight" runat="server" src="../UI/assets/static/images/Icons/Print.ico" style="background:none"  OnClick="PrintButton_OnClick"  />--%>
                                    </div>
                                    <div class="col-md-1" style="border: none!important;">
                                        <%--<img src="../UI/assets/static/images/Icons/Excel1.jpg" id="ExcelButton" class="btns" runat="server" style="background:none" onclick="ExcelButton_OnClick"/>--%>
                                        <%--<img src="../UI/assets/static/images/Icons/Pdf.ico" id="PdfButton" class="btns" runat="server" style="background:none;" onclick="PdfButton_OnClick"/>
                            <img src="../UI/assets/static/images/Icons/Print.ico" id="PrintButton" class="btns" runat="server" style="background:none;" onclick="PrintButton_OnClick"/>--%>
                                        <img src="../UI/assets/static/images/Icons/folder_saved_search.ico" id="SearchButton" class="btns" data-toggle="modal" data-target="#myModalSrc" style="background: none; align: right;cursor:pointer" hidden="hidden" />

                                    </div>
                                </div>
                            </div>
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="IdeaId" HeaderText="IdeaId" />
                                    <asp:BoundField DataField="EmployeeId" HeaderText="EmpId" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="DesName" HeaderText="Designation" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                    <%--<asp:BoundField DataField ="Before" HeaderText ="Before" />--%>
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:TemplateField HeaderText=" " Visible="true">
                                                <ItemTemplate>
                                                   <!-- <img src="../UI/assets/static/images/Icons/2.png" id="Gridimgbtn1" style="background: none; align: right;width:25px; height:25px;cursor:pointer;" /> -->               
                                                   <asp:ImageButton ID="Gridimgbtn" runat="server" ImageUrl="../UI/assets/static/images/Icons/icons8-eye-48.png" style="background: none; align: right;width:25px; height:25px;cursor:pointer;" OnClick="Gridimgbtn_Click1" ></asp:ImageButton>
                                                    <%--<asp:ImageButton ID="Gridimgbtn" runat="server" data-toggle="modal" data-target="#myModalGrid" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/2.png" AutoPoseBack="false" ></asp:ImageButton>--%>   
                                                   <%--<asp:ImageButton ID="imgbtn_cal" runat="server" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/images.jpg" Visible="false" ToolTip="Cancel"></asp:ImageButton>--%>                                           
                                                </ItemTemplate>                  
                                                </asp:TemplateField> 
                                    
                                </Columns>

                            </asp:GridView>
                            <asp:Label ID="record" runat="server" Visible="false" style="text-align:right;" >No Record Found</asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- DivTable.com -->

    <div class="container">
        <div class="modal fade" id="myModalSrc" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"> Search Suggestion By Employee Detail </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-md-4">
                                <label>Employee ID</label>
                            </div>
                            <div class="col-md-6">
                                <input id="EmployeeIdText" class="form-control bor Emplidclass" name="EmployeeIdText" placeholder="Employee ID"   type="text" onkeydown = "return tableInputKeyPress(event);"/>
                                
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">

                                <label>Employee Name</label>
                            </div>
                            <div class="col-md-6">
                                
                                <asp:TextBox ID="EmployeeNameTextBox" CssClass="form-control bor EmployeeNameClass" placeholder="Employee Name" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Department</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="DepartmentTextBox" CssClass="form-control bor" placeholder="Department" runat="server" Enabled="false"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Designation</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="DesignationTextBox" CssClass="form-control bor" placeholder="Designation" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">


                                <label>From Date</label>

                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="FromDateTextBox" CssClass="form-control bor" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">

                                <label>To Date</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="ToDateTextBox" CssClass="form-control bor" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <label></label>
                        <br />
                        <asp:Button ID="AddPopButton" CssClass="form-control bor apopbtn" runat="server" Text="Add Designation" OnClick="AddPopButton_Click" />
                        <label></label>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- DivTable.com -->

    <div class="container">
        <div class="modal fade" id="myModalGrid" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"> Search Suggestion By Employee Detail </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-md-4">
                                <label>Employee ID</label>
                            </div>
                            <div class="col-md-6">
                                <input id="EmployeeId" class="form-control bor  Emplidclass" placeholder="Employee ID"   type="text" onkeydown = "return tableInputKeyPress(event);"/>
                                
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">

                                <label>Employee Name</label>
                            </div>
                            <div class="col-md-6">
                                
                                <asp:TextBox ID="TextBox1" CssClass="form-control bor EmployeeNameClass" placeholder="Employee Name" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Department</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBox2" CssClass="form-control bor" placeholder="Department" runat="server" Enabled="false"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <label>Designation</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBox3" CssClass="form-control bor" placeholder="Designation" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">


                                <label>From Date</label>

                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBox4" CssClass="form-control bor" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">

                                <label>To Date</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBox5" CssClass="form-control bor" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <label></label>
                        <br />
                        <asp:Button ID="Button1" CssClass="form-control bor apopbtn" runat="server" Text="Add Designation" OnClick="AddPopButton_Click" />
                        <label></label>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>




    <%--<script src="../UI/Script/jquery.min.js"></script>--%>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script>
    <script>
        function buttonkeypress(e) {
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13 || key == 9) //Enter
            {

            }
        }
            </script>
    <script>
        function tableInputKeyPress(e){
            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13||key ==9) //Enter
            {   
                var empId = $('.Emplidclass').val();
               
                $.ajax({
                    url: 'Default.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",
                    
                    success: function (data) {
                        console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        

                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
                e.preventDefault();
                return false; //return true to submit, false to do nothing
            }

        }
    </script>


    <script>
        function gridViewSelectedField(e){
            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13||key ==9) //Enter
            {   
                var empId = $('.Emplidclass').val();
               
                $.ajax({
                    url: 'Default.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + empId + '}',
                    dataType: "json",
                    
                    success: function (data) {
                        console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        

                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
                e.preventDefault();
                return false; //return true to submit, false to do nothing
            }

        }
    </script>
    <script>
        $(document).ready(function () {
            var currentGfgStep, nextGfgStep, previousGfgStep;
            var opacity;
            var current = 1;
            var steps = $("fieldset").length;

            setProgressBar(current);

            $(".next-step").click(function () {

                currentGfgStep = $(this).parent();
                nextGfgStep = $(this).parent().next();

                $("#progressbar li").eq($("fieldset")
                    .index(nextGfgStep)).addClass("active");

                nextGfgStep.show();
                currentGfgStep.animate({ opacity: 0 }, {
                    step: function (now) {
                        opacity = 1 - now;

                        currentGfgStep.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        nextGfgStep.css({ 'opacity': opacity });
                    },
                    duration: 500
                });
                setProgressBar(++current);
            });

            $(".previous-step").click(function () {

                currentGfgStep = $(this).parent();
                previousGfgStep = $(this).parent().prev();

                $("#progressbar li").eq($("fieldset")
                    .index(currentGfgStep)).removeClass("active");

                previousGfgStep.show();

                currentGfgStep.animate({ opacity: 0 }, {
                    step: function (now) {
                        opacity = 1 - now;

                        currentGfgStep.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        previousGfgStep.css({ 'opacity': opacity });
                    },
                    duration: 500
                });
                setProgressBar(--current);
            });

            function setProgressBar(currentStep) {
                var percent = parseFloat(100 / steps) * current;
                percent = percent.toFixed();
                $(".progress-bar")
                    .css("width", percent + "%")
            }

            $(".submit").click(function () {
                return false;
            })
        });
    </script>


</asp:Content>
