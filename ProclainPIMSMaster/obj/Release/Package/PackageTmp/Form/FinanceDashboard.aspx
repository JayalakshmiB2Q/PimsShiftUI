<%@ Page Title="" Language="C#" MasterPageFile="~/FinanacePage.Master" AutoEventWireup="true" CodeBehind="FinanceDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.FinanceDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
       <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



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
   <%--<link href="../UI/BootStrapModel/styles.7433824a9cbda6a70303.css" rel="stylesheet" />--%>
   
  


<style>
    .select2-container--default .select2-selection--single {
    border:0px solid #aaa!important;
}
    .select2-selection__rendered{
      
    padding: 6px 12px;
    
    font-size: 14px!important;
    font-size: .875rem!important;
    line-height: 1.5!important;
    color: #495057!important;
    background-color: #fff!important;
     
    background-clip: padding-box;
       border: 1px solid #ced4da!important;
    border-radius: .25rem!important;
    
    }

    .select2-container--default .select2-selection--single .select2-selection__clear
{
    display:none!important;
    cursor:pointer!important;
    float:right!important;
    font-weight:bold!important

    }

    c-grey-902 {
        color: #0200a5;
    }
    body {
        color: #0d196f !important;
    }
    .leftside .rightside{
        height: 100vh;
        width: 50%;
    }
    .list-group-item {
        border: 1px solid rgba(0, 0, 0, 0)!important;
    }
    .linka {
    color: #010101!important;
}
    .iconmenu{
        margin-right: 0px;
    }
    .inp {
        border: 1px solid #ced4da!important;
        border-radius: .25rem!important;
    }

    .textalign{
        text-align: justify;
    }
    
</style>


    <style>
        .modal {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: #0b0340;
    z-index: 1050;
    display: none;
    outline: 0;
        .modal .modal-dialog.modal-right {
        right: 0
    }
        .modal .modal-side.modal-right {
    right: 0
}
         .modal .modal-full-height.modal-left,.modal .modal-full-height.modal-right,.modal .modal-full-height.modal-top {
        margin: 1.75rem auto;
        min-height: unset
    }
          .modal .modal-full-height.modal-bottom,.modal .modal-full-height.modal-left,.modal .modal-full-height.modal-right,.modal .modal-full-height.modal-top {
        margin-left: auto;
        margin-right: auto
    }


    </style>
    
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
               
                  "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
              });
          });
    </script>

    <script type="text/javascript">
        function MoveNext(next_ctrl, _key) {

            if (_key == 13) {
                //alert(next_ctrl);
                var _next = document.getElementById(next_ctrl);
                _next.focus();
                return false;
            }

        }
        </script>
   

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

        .reps {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

        .btns {
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            
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
                background: linear-gradient(-68deg, #1839dc, #243dd0) !important;
            margin: 10px;
            color: #ffffff !important;
        }
        .fnt .mark, mark {
            background-color: #f0f3f500!important;
        }
         .apopbtn:hover{
             background-color: #0b0340;
         }
         .form-control apopbtn:hover{
             border-color: #0b0340 !important
         }
         #ManagerButton:hover{
                border-color: #0b0340;
         }
         /*.button {
  position: relative;
  background-color: #04AA6D;
  border: none;
  font-size: 28px;
  color: #FFFFFF;
  padding: 20px;
  width: 200px;
  text-align: center;
  -webkit-transition-duration: 0.4s; /* Safari */
  /*transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}*/

.form-control apopbtn:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s
}

.form-control apopbtn:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s
}
         
        
    </style>
    <%--
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
     --%>
    <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    --%> <link href="../UI/Style/all.css" rel="stylesheet" />
       <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
        <link href="../UI/Style/sweetalert.min.js" rel="stylesheet"/>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <style>
	
     	
#preloader {
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: 999999;
	background: rgba(0, 0, 0, 0.5);
}
        #status {
            width: 200px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
             background-image: url(../UI/assets/static/images/Spin2-1s-200px.gif);
            background-repeat: no-repeat;
            background-position: center;
            margin: -100px 0 0 -100px;
        }
              .con th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
    color: #ddd;
}

.con td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.con {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.con td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.con tr:nth-child(odd) {
	  background-color: #323c5075;
}

/* Background-color of the even rows */
.con tr:nth-child(even) {
	  background-color: #2c344657;
}

.con th {
	  background-color: #0b0340;
}

.con td:first-child { color: #0B0381; }

.con tr:hover {
   background-color: #464a5270;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

 td[colspan]:hover {
  background-color: #10918e;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.con td:nth-child(4),
.con th:nth-child(4) { display: none; }
}

/*/////////////neons effect\\\\\\\\\\*/

/*.neons {
    font-size: 25px;
    height: 60px;
    width: 150px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    font-family: "Balsamiq Sans", cursive;
    text-decoration: none;
    color: var(--clr-neon);
    border: var(--clr-neon) 3px solid;
    background-color: transparent;
    border-radius: 0.25em;
    text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3), 0 0 0.45em currentColor;
    box-shadow: inset 0 0 0.5em 0 var(--clr-neon), 0 0 0.5em 0 var(--clr-neon);
    transition: all 0.5s
}*/

.neons:hover {
    background-color: var(--clr-neon);
    color: #fff
}
#hidenew:hover{
     background-color: var(--clr-neon);
    color: #fff
}
        .nav-tabs {
            border-bottom: 1px solid #ddd;
            margin-left: 17px;
        }
.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #ffffff;
    background-color: #0b0340;
    border-color: #1f2739 #2c3446 #e71313;
}
 #snackbar {
  visibility: hidden;
  min-width: 250px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: fixed;
  z-index: 1;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
  from {bottom: 0; opacity: 0;} 
  to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
  from {bottom: 0; opacity: 0;}
  to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
  from {bottom: 30px; opacity: 1;} 
  to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
  from {bottom: 30px; opacity: 1;}
  to {bottom: 0; opacity: 0;}
}

</style> 
       <div id="preloader">
         <!--
<div id="status"  >&nbsp;</div>-->
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>  
    
<%--<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">--%>
    
   
    <div class="row">
        <div class="col-lg-12 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                   

                   <!--     <div class="layer w-100">
                            <div class="bdT bdB">
                                <input type="text" class="form-control m-0 bdw-0 pY-15 pX-20" placeholder="Search...">
                            </div>
                        </div> -->
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >

                               <div class="container mt-3">
  
  
  <!-- Nav tabs -->
                                  <ul class="nav nav-tabs">
                                    <li class="nav-item" id="newDetails">
                                      <a class="nav-link active" data-toggle="tab" href="#new">New &nbsp;<span id="count"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                    <li class="nav-item" id="Details">
                                      <a class="nav-link"  data-toggle="tab" href="#complete">Complete &nbsp;<span id="countcom"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
    
                                  </ul>
                                        <div class="tab-content">
                                              <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" hidden></asp:TextBox>
                            
                                        <div id="new"  class="container tab-pane active">
                                <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                           
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                             <%--   <div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                         
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                    HR: <%# Eval("HRName") %>
                                                    <br />
                                                    <hr />
                                                </div>
                                            </div>--%>
                                          
                                        </div>

                                    </ItemTemplate>
                                      
                                                     <HeaderTemplate >
                                                        <table class="con" id="newtable"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Date
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> HR Name
                                                                       </h1>
                                                                </th>
                                                              <th >
                                                                   <h1> Idea ID</h1>
                                                                </th>
                                                             
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                               <td class="ssid">
                                                                <asp:Label ID="Label1" runat="server" Text='<%#(((RepeaterItem)Container).ItemIndex+1).ToString()%>' />
                                                            </td>
                                                             <td class="ssid">
                                                                <asp:Label ID="Label6" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("SendFrom") %> ' />
                                                            </td>
                                                         
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("HRName") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" id="neons"   data-toggle="tooltip" data-placement="right" title="C L I C K " >
                                                                <asp:Label ID="lblCountry" runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' data-toggle="modal" data-target="#myModalImpIdeaForm" />
                                                             
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>

                                </asp:Repeater>
                                            </div>

                                                    <div id="complete" class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeatercomplete" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                                 <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IDeaID")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                                <%--<div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                         
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                   HR:  <%# Eval("HRName") %>
                                                    <br />
                                                    <hr />
                                                </div>--%>
                                                <%--<div class="col-sm-6 form-control" style="border:none!important;">
                                                    <a data-toggle="modal" href="#myModalGetDetails" class="form-control btns ImproButtonCls btn-primary"style="width:100%;text-align:center;" id="Getdet">Get Report</a>
                                                   <%-- <a href="#" id="GetDetails" class="form-control btn-primary" style="text-align:center;" runat="server">Get_Details</a>--%>
                                                    <%--<input id="GetDetails" class="form-control btns ImproButtonCls btn-primary" style="text-align:center;" type="button" value="Get_Details" data-toggle="modal" data-target="#myModalGetDetails"/>
                                                     <br />
                                                </div>--%>
                                                
                                            </div>
                                          
                                        </div>

                                    </ItemTemplate>
                                         <HeaderTemplate >
                                                        <table class="con" id="completetable"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
<tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Date
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> HR Name
                                                                       </h1>
                                                                </th>
                                                              <th >
                                                                   <h1> Idea ID</h1>
                                                                </th>
                                                             
                                                            </tr>
                                                    </HeaderTemplate>
                                                   <ItemTemplate>
                                                        <tr>
                                                               <td class="ssid">
                                                                <asp:Label ID="Label1" runat="server" Text='<%#(((RepeaterItem)Container).ItemIndex+1).ToString()%>' />
                                                            </td>
                                                             <td class="ssid">
                                                                <asp:Label ID="Label6" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("SendFrom") %> ' />
                                                            </td>
                                                         
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("HRName") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1"  data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry"  runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' data-toggle="modal" data-target="#fullHeightModalRight"  />
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>

                                </asp:Repeater>
                                            </div>





                                    </div></div>

                                    
                                    </div>

                                
                            </div>
                        </div>
                    </div>
            </div>
            <div class="bTd">

            </div>
       
        </div>
        </div>
    
  <%-- <div class=" col-lg-12 reps" style="padding:15px">
         <div class="rightside no-gutters" >
              <div class="limiter reps">

        <div class="container-table100 form-control" style="display: contents!important;">
            <div class="wrap">

                <div class="row">
                    <div class="col-md-12">

                        <div class="table100 ver6 m-b-110 table-responsive">
                            <div class="form-control reps  " style="border: none!important;">
                                <div class="row">
                                    
                                </div>
                            </div>
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    
                                    <asp:BoundField DataField="New" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="NewFrom" HeaderText="Name" />
                                   <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IDea ID" />
                                    <asp:BoundField DataField="Type" HeaderText="Status" />
                                    <asp:BoundField DataField="HOSGrade" HeaderText="HOS-Grade" />
                                    <asp:BoundField DataField="HOSBM" HeaderText="HOS_Rating" />
                                 <asp:BoundField DataField="BENGrade" HeaderText="BEN-Grade" />
                                    <asp:BoundField DataField="BENBM" HeaderText="BEN-Rating" />
                                    <asp:BoundField DataField="ApprovedUser" HeaderText="Idea_Employee" />
                                    <asp:BoundField DataField="ApprovedUserAmt" HeaderText="Amount" />
                                    
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
              </div>
             
        </div>--%>


      <%--  //////buttons\\\\\\\--%>
      <%--  <div class=" col-lg-1 reps" style="padding:0px">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">
             <input id="ImproButton" class="form-control btns ImproButtonCls" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalImpIdeaForm"/>
      --%>           
             <%--</div>
             <div class="row">--%>
                <%-- <input id="ReplyButton" class="form-control btns getdetails" style="height:50%;width:100%;color:white;" hidden="hidden"  type="button" value="GetDetails" data-toggle="modal" data-target="#fullHeightModalRight" />
            --%>
             <%--</div>--%>
             
          <%--       
             </div>
            </div>
    </div>
    --%>

      <%--
           MODALS COMMITEE EVALUATION Approve
    --%>
      <!-- Full Height Modal Right -->

<%--  <div class="container">
        <div class="modal fade" id="fullHeightModalRight" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Commitee Evaluvation</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Assigned To</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDRepTextBox" CssClass="form-control IdeaIDRepTextBoxClass" style="background:none" Enabled="false" EnableTheming="false" placeholder="Idea ID" runat="server"></asp:TextBox>

                                    </div>
                                    

                                </div>
                               
                                <div class="form-group">
                                    <label>TO: </label>
                                    <asp:TextBox ID="ToRepTextBox" CssClass="form-control ToRepTextBoxClass" placeholder="Employee Name" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>EmpID: </label>
                                    <asp:TextBox ID="EmpIdRepTextBox" CssClass="form-control EmpIdRepTextBoxClass" placeholder="Employee ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label>MailID: </label>
                                    <asp:TextBox ID="MailIDRepTextBox" CssClass="form-control MailIDRepTextBoxClass" placeholder="Mail ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Subject: </label>
                                    <asp:TextBox ID="SubjectRepTextBox" CssClass="form-control SubjectRepTextBoxClass" placeholder="Subject" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Discription: </label>
                                    <asp:TextBox ID="ConRepTextBox" CssClass="form-control ConRepTextBoxClass" placeholder="Mail Content" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                </div>
                                
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <%--<asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="CommitteePopButton_Click"  OnClientClick="dataView()"/>--%>
                        <%--OnClick="TeamPopButton_Click"
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

<!-- Full Height Modal Right -->

    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>




   <%-- <div class="modal fade right" id="fullHeightModalRight" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">

  <!-- Add class .modal-full-height and then add class .modal-right (or other classes from list above) to set a position to the modal -->
  <div class="modal-dialog modal-full-height modal-right" role="document">--%>

       <%--
           MODALS COMMITEE EVALUATION Rejection
    --%>
       <div class="container">
        <div class="modal fade" id="myModalImpIdeaForm" role="dialog">
            <div class="modal-dialog modal-lg" >

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Payment For Idea</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                           
                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Payment</h4>
                                 <div class="row">
                               
                                    <div class="col-md-6 form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox"  CssClass="form-control inp IMPIdeaIdClass" placeholder="Idea ID"  onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" onblur="this.value=removeSpaces(this.value);" runat="server"></asp:TextBox>

                                    </div>

                                
                                                              
                                <div class="col-md-6 form-group">
                                   
                                        <label>Employee: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " runat="server" ></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="ID " runat="server"  ></asp:TextBox>
                                        <%--<asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp" placeholder="ID " runat="server" ClientIDMode="Static"></asp:TextBox>--%>
                                    
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>E-Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <%--<asp:TextBox ID="DupMailIdIMPTextBox" CssClass="form-control inp" placeholder="To: " runat="server" ClientIDMode="Static"  ></asp:TextBox>--%>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                           <div class="col-md-6 form-group">
                                    <label>Finance Team Member</label>
                                     <asp:TextBox ID="finance" CssClass="form-control inp" placeholder="Finance Team Member Name Here.."  runat="server"></asp:TextBox>
                                    
                                </div>
                                 <div class="col-md-6 form-group">
                                    <label>Amount:</label>
                                     <asp:TextBox ID="amount" CssClass="form-control inp AMTEmpIDTextBoxClass" placeholder="Amount Here.."  runat="server"></asp:TextBox>
                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="amount" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" ErrorMessage="Only Numbers allowed"ValidationExpression="\d+"></asp:RegularExpressionValidator>--%>
                                    <asp:CompareValidator ControlToValidate="amount" runat="server"  ErrorMessage="Numbers only please" Operator="DataTypeCheck" Type="Integer" ></asp:CompareValidator>
                                </div>
                               <div class="col-md-6 form-group">
                                    <label>Cash Mode:</label>
                                    <asp:DropDownList ID="cashmodeinsert" CssClass="form-control inp CashEmpIDTextBoxClass" placeholder="CashMode Here.."  runat="server">
                                        <asp:ListItem>CASH</asp:ListItem>
                                        <asp:ListItem>CHEQUE</asp:ListItem>
                                    </asp:DropDownList>
                                     <%--<asp:TextBox ID="CashMode" CssClass="form-control inp CashEmpIDTextBoxClass" placeholder="Amount Here.."  runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="amount" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" ErrorMessage="Only Numbers allowed"ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                    <asp:CompareValidator ControlToValidate="amount" runat="server"  ErrorMessage="Numbers only please" Operator="DataTypeCheck" Type="Integer" ></asp:CompareValidator>--%>
                                </div>
                               <div class="col-md-12 form-group">
                                    <label>Comment</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp" placeholder="Comments Here.."  runat="server"></asp:TextBox>
                                    
                                </div>
                                


                                <%--<div id="compose-area">
                            <div class="text-right mrg-top-30">
                                <button class="btn btn-danger">Send</button>
                            </div>
                     </div>--%>
                            </div>
                                </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <%--<div class="button">--%>
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" style="display:none;"  OnClick="ManagerButton_Click" />  
                        <%--OnClick="TeamPopButton_Click"   OnClientClick = "GetTableValues()"--%>
                         <input type="button"  class="form-control apopbtn" style="width:100%; " value="Send" onclick="sendEmail()" /> 
                        <%--OnClick="TeamPopButton_Click"--%>
<%--                            </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <div class="container">
        <div class="modal fade" id="fullHeightModalRight" role="dialog">
           <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Payment Details</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Paid To</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="payideaid" CssClass="form-control payideaidclass" style="background:none" Enabled="false" EnableTheming="false" placeholder="Idea ID" runat="server"></asp:TextBox>

                                    </div>
                                    

                                </div>
                               
                                <div class="form-group">
                                    <label>Date: </label>
                                    <asp:TextBox ID="paydate" CssClass="form-control paydateclass" placeholder="Date" style="background:none" Enabled="false" EnableTheming="false" runat="server"  ></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>EmpID: </label>
                                    <asp:TextBox ID="payempid" CssClass="form-control payempidclass" placeholder="Employee ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" ></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label>EmpName: </label>
                                    <asp:TextBox ID="payempname" CssClass="form-control payempnameclass" placeholder="Employee Name" style="background:none" Enabled="false" EnableTheming="false" runat="server" ></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>FinanceTeamMember: </label>
                                    <asp:TextBox ID="payfinteam" CssClass="form-control payfinteamclass" placeholder="Finance Team Member" style="background:none" Enabled="false" EnableTheming="false" runat="server" ></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Amount: </label>
                                    <asp:TextBox ID="payamount" CssClass="form-control payamountclass" placeholder="Amount" style="background:none" Enabled="false" EnableTheming="false" runat="server" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Payment Mode: </label>
                                    <asp:TextBox ID="cashmode" CssClass="form-control cashmodeclass" placeholder="Mode" style="background:none" Enabled="false" EnableTheming="false" runat="server" ></asp:TextBox>
                                </div>
                                
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <%--<asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="CommitteePopButton_Click"  OnClientClick="dataView()"/>--%>
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div id="snackbar"> For more details.."please click the ideaID"</div>
    
    <script src="../UI/Style/jquery.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("[id*=Details]").click(function () {
                //alert("success");
                //$('button["id*=ReplyButton"]').show();
                document.getElementById("ReplyButton").hidden = "";
                document.getElementById("ImproButton").hidden = "hidden";
            })
            $("[id*=newDetails]").click(function () {
                //alert("success");
                //$('button["id*=ReplyButton"]').show();
                document.getElementById("ReplyButton").hidden = "hidden";
                document.getElementById("ImproButton").hidden = "";
            })
        })
    </script>
     
     <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
        <script>
      function sendEmail()
        {
            $("#preloader").hide();
             var someSession = '<%= Session["UserName"].ToString() %>';
             var empid= '<%= Session["UserId"].ToString() %>';
             var Designation= 'Finance Department';
         
            var formData = new FormData();
            formData.append("toAddress", "jeyapandi.palani@poclain.com");
          // formData.append("toAddress", "manikandan.ramsaro@gmail.com");
            formData.append("toName", "Jeyapandi");
            formData.append("toId", "PI-266"); 
            formData.append("subject", "Payment processed to Employee -" + document.getElementById("<%=EmpIDIMPTextBox.ClientID %>").value+" and Idea ID "+document.getElementById("<%=IMPIdeaIdTextBox.ClientID %>").value);
          formData.append("ideaID", document.getElementById("<%=IMPIdeaIdTextBox.ClientID %>").value); 
            formData.append("content", document.getElementById("<%=SubjectIMPTextBox.ClientID %>").value +" and payment given as "+document.getElementById("<%=amount.ClientID %>").value+" to the Employee "+document.getElementById("<%=TOIMPTextBox.ClientID %>").value+" "+document.getElementById("<%=EmpIDIMPTextBox.ClientID %>").value);
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "Final Payment Process completed ");
            swal({
                title: "Payment",
                text: "Processing.......",
                icon: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Loading_2.gif",
                buttons: false,
                closeOnClickOutside: false,
                timer: 20500,
                //icon: "success"
            });


            var object = {};
            formData.forEach(function (value, key) {
                object[key] = value;
            });
            var json = JSON.stringify(object);
            $.ajax({
                //   url: 'http://localhost:90/PIMS_emailPHP/email/send_mail.php',
                //url: 'http://10.14.0.150:90/PIMS_emailPHP/email/send_mail.php',
                url: 'http://10.14.0.40/WebEmail/api/Email/pimsEmail',
                type: 'POST',
                cache: false,
                contentType: 'application/json',
                processData: false,
                data: json,//formData,  
                    
                    success: function (data) { 
                        document.getElementById("<%=ManagerButton.ClientID %>").click();
                        console.log('button clicked');
                    },
                    error: function (err) {
                        
                         document.getElementById("<%=ManagerButton.ClientID %>").click();
                        console.log('button clicked');
                    }
                 });
           
        }
 



         //$(document).ready(function () {
             
             $("[id *= ImproButton]").click(function () {
                 

                 
                   
                    
                    
               
            //});
             });
             function PaymentDetails(txts)
             {
                 
                 var ks = txts.toString();
                 var fs = "";
                 var feids = "";
                 $.ajax({
                     url: 'FinanceDashboard.aspx/GetFinanceDetails',
                     method: 'post',
                     contentType: "application/json; charset=utf-8",
                     async: true,
                     dataFilter: function (data) { return data; },
                     data: '{emp:' + ks + '}',
                     dataType: "json",


                     success: function (data) {

                         console.log("Metod called ideaid:" + txts);
                         console.log(data.d.REmpName);
                         $(".payideaidclass").val(data.d.RIdeaID);
                         $(".paydateclass").val(data.d.Date);

                         $(".payempidclass").val(data.d.REmpID);
                         $(".payempnameclass").val(data.d.REmpName);
                         $(".payfinteamclass").val(data.d.Finname);
                         $(".payamountclass").val(data.d.Amount); 
                         $(".cashmodeclass").val(data.d.CashMode);
                         //document.getElementById("payideaid").innerHTML = data.d.RIdeaID;
                         //document.getElementById("paydate").innerHTML = data.d.Date;
                         //document.getElementById("payempid").innerHTML = data.d.REmpID;
                         //document.getElementById("payempname").innerHTML = data.d.REmpName;
                         //document.getElementById("payfinteam").innerHTML = data.d.Finname;
                         //document.getElementById("payamount").innerHTML = data.d.Amount;



                     },
                     error: function (err) {
                         console.log(err);
                         // tableInputKeyPress(e);
                     }
                 });
             }



             function FillModelData(txts)
             {
                 
              //   var txts = document.getElementById('<%= IMPIdeaIdTextBox.ClientID %>').value; //$('< %= IMPIdeaIdTextBox.ClientID %>').;
              //   console.log('model '+txts);
                            var ks = txts.toString();
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'FinanceDashboard.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + ks + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                                    var fxs = "";
                                    var fzs = "";
                                    fs = data.d.Email;
                                    feids = data.d.HEmployeeID;
                                   /*   $(".IMPEmpIDTextBoxClass").val().toString();
                                     $(".IMPmailidtextClass").val().toString();
                                    if (zs == "") {
                                        fxs = zs + " " + fs;
                                        fzs = EIDs + "" + feids;
                                    }
                                    else {
                                        console.log("Textbox" + txts);
                                        fxs = zs + ',' + " " + fs;
                                        fzs = EIDs + ',' + "" + feids;
                                    }*/
                                    
                                    $(".IMPToTextBoxClass").val(data.d.HEmployeeName);
                                    $(".IMPmailidtextClass").val(data.d.Email);
                                    $(".IMPEmpIDTextBoxClass").val(data.d.HEmployeeID); 
                                    $(".AMTEmpIDTextBoxClass").val(data.d.Amount);
                                },
                                error: function (err) {
                                    alert('Error : ' + data); console.log(err);
                                    //tableInputKeyPress(e);
                                }
                            });
                        return false;
             }

    </script>
    <%-- IdeaID Sender to BackEnd  --%>
        <script>

            $(document).ready(function () {
                $("#myModalComiteeEvaluation").on('hidden.bs.modal', function (e) {
                    console.log("modal");
                });
                $("[id*=RepeaterLinkButton]").click(function () {
                    var lbIdeaID = $(".lbIdeaIDClass").text();
                });
            });
        </script>
           
<script>

    function neons() {

        var IdeaID = $("[id*=lblImageNameTextBox]").val();


       // alert("clicked")


        var key = 0;
        var t = "";
        console.log("checking");
        if (key == 0) //Enter
        {
            console.log("IDea ID: " + IdeaID);
            var trimtext = IdeaID.trim();
            console.log("trimed text" + trimtext)
            $(".IMPIdeaIdClass").val(trimtext);
            PaymentDetails(trimtext);
            FillModelData(trimtext);




            $.ajax({
                url: 'FinanceDashboard.aspx/Checking',
                method: 'post',
                contentType: "application/json; charset=utf-8",
                async: true,
                dataFilter: function (data) { return data; },
                data: '{IdeaID:' + IdeaID + '}',
                dataType: "json",

                success: function (data) {
                    console.log(data.d);
                    $(".IdeaIDRepTextBoxClass").val(data.d.RIdeaID);
                    $(".ToRepTextBoxClass").val(data.d.REmpName);

                    $(".EmpIdRepTextBoxClass").val(data.d.REmpID);
                    $(".MailIDRepTextBoxClass").val(data.d.RMail);
                    $(".SubjectRepTextBoxClass").val(data.d.RSub);
                    $(".ConRepTextBoxClass").val(data.d.RCon);
                    FillModelData(IdeaID);

                         $(".IMPToTextBoxClass").val(data.d.REmpName);
                         $(".IMPEmpIDTextBoxClass").val(data.d.REmpID);
                         $(".IMPmailidtextClass").val(data.d.RMail);





                },
                error: function (err) {
                    console.log(err);
                    tableInputKeyPress(e);
                }
            });

            return false; //return true to submit, false to do nothing
        }



    }


       //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>



    <script>
  

            
                $('#newtable').on("click", "tr td[colspan]", function (e) {
                    var IdeaID = $(this).text();
                    $("[id*=lblImageNameTextBox]").val(IdeaID);
                    neons();

              
                });   
        </script>
         <script>
  

            
              $('#completetable').on("click", "tr td[colspan]", function (e) {
                    var IdeaID = $(this).text();
                    $("[id*=lblImageNameTextBox]").val(IdeaID);
                    neons();

              
                });
       </script>
        <script language="javascript" type="text/javascript">
function removeSpaces(string) {
 return string.split(' ').join('');
}
</script>
<script>
        $(document).ready(function () {
            $('.ssid').click(function () {
                var x = document.getElementById("snackbar");
                x.className = "show";
                setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
            });
                  
                    // Animation complete.
            }); 
                   
              
               </script>
</asp:Content>




