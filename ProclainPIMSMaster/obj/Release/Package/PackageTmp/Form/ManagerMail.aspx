<%@ Page Title="Manager Inbox" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ManagerMail.aspx.cs" Inherits="ProclainPIMSMaster.Form.ManagerMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Import Namespace="System.Data" %>

    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>
    <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />

    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />


    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/bootstrap/Css/bootstrap.min.css" />
    <!--===============================================================================================-->

    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/fonts/font-awesome-4.7.0/Css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/animate/animate.css" />
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/perfect-scrollbar/perfect-scrollbar.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/main.css" />
    <!--===============================================================================================-->


    <style>
        .select2-container--default .select2-selection--single {
            border: 0px solid #aaa !important;
        }

        .select2-selection__rendered {
            padding: 6px 12px;
            font-size: 14px !important;
            font-size: .875rem !important;
            line-height: 1.5 !important;
            color: #495057 !important;
            background-color: #fff !important;
            background-clip: padding-box;
            border: 1px solid #ced4da !important;
            border-radius: .25rem !important;
        }

        .select2-container--default .select2-selection--single .select2-selection__clear {
            display: none !important;
            cursor: pointer !important;
            float: right !important;
            font-weight: bold !important;
        }

        c-grey-902 {
            color: #0200a5;
        }

        body {
            color: #0d196f !important;
        }

        .leftside .rightside {
            height: 100vh;
            width: 50%;
        }

        .list-group-item {
            border: 1px solid rgba(0, 0, 0, 0) !important;
        }

        .linka {
            color: #010101 !important;
        }

        .iconmenu {
            margin-right: 0px;
        }

        .inp {
            border: 1px solid #ced4da !important;
            border-radius: .25rem !important;
        }

        .textalign {
            text-align: justify;
        }


        .fnt {
            font-size: 14px !important;
            color: #72777a !important;
            letter-spacing: .2px !important;
        }

        #ContentPlaceHolder1_UpLoad1Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad2Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad3Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad1Tag:hover {
            opacity: 0.7;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
          background-color:  rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        #ContentPlaceHolder1_UpLoad2Tag:hover {
            opacity: 0.7;
        }

     

        #ContentPlaceHolder1_UpLoad3Tag:hover {
            opacity: 0.7;
        }

      
        /* Modal Content (image) */
        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        /* Caption of Modal Image */
        #caption {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            padding: 10px 0;
            height: 150px;
        }

        /* Add Animation */
       .modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

        /* The Close Button */
        .close {
            position: absolute !important;
  top: 15px !important;
  right: 35px !important;
  color: #f1f1f1 !important;
  font-size: 40px !important;
  font-weight: bold !important;
  transition: 0.3s !important;
        }

            .close:hover,
            .close:focus {
                color: #bbb;
                text-decoration: none;
                cursor: pointer;
            }

        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 1000px) {
            .modal-content {
                width: 100% !important;
            }
        }
        /*#ModalViewFullDetails{
        width:100%!important;
        height:100%!important;
        }*/
        #ModalViewFullDetails .modal-content {
            margin: auto;
            display: block;
            width: 150%!important;
            max-width: 1500px!important;
        }
        .hiddendiv {display:none;}
.visiblediv {display:block;}
    </style>


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

        .fnt .mark, mark {
            background-color: #f0f3f500 !important;
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
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="../UI/Style/all.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        /*#preloader {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 999999;
            background: rgba(0, 0, 0, 0.5);
        }*/

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

.modal-header {
    justify-content: center;
}
        .modal-dialog {
          max-width: 30001rem !important /* New width for default modal */
        }
        .tooltiptext {
  width: 120px;
  bottom: 100%;
  left: 50%;
  margin-left: -60px;
      
    </style>
  <%--  <div id="preloader">
        <!----%>
<%--<div id="status"  >&nbsp;</div>-->
        <div class="loadingio-spinner-spin-70jldgjfy3">
            <div class="ldio-l05zvogs5db">
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>--%>
   <%--<div class="row" >--%>
        <div class="col-lg-12 " style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
                <div class="email-side-nav remain-height ov-h">

                    <div class="h-100 scrollable pos-r">
                        <div class="layer w-100 fxg-1 " style="padding-left: 15px; padding-right: 10px">

                            <div class="peer fxw-nw bdB cur-p">


                                <div class="container mt-3">


                                    <!-- Nav tabs -->

                                         <ul class="nav nav-tabs" style="min-inline-size: max-content">
                                               
 
                                        <li class="nav-item" id="hidenew">
                                            <a class="nav-link active" data-toggle="tab" href="#INBOX">INBOX  &nbsp;<span id="count" class="badge badge-pill badge-danger" runat="server">0</span></a>

                                        </li>
                                         <li class="nav-item" id="hidereject">
                                            <a class="nav-link" data-toggle="tab" href="#FromIMPL">RESEND IMPLEMENTER &nbsp;<span id="countFromImpl" class="badge badge-pill badge-danger" runat="server">0</span></a>
                                        </li>
                                         <li class="nav-item" id="hideresend_hod">
                                            <a class="nav-link" data-toggle="tab" href="#resend_hod">FROM HOD &nbsp;<span id="countRS_HOD" class="badge badge-pill badge-danger" runat="server">0</span></a>
                                        </li>
                                          <%--<li class="nav-item" id="hideresend_HR">
                                            <a class="nav-link" data-toggle="tab" href="#resend_HR">FROM HR &nbsp;<span id="countRS_HR" class="badge badge-pill badge-danger" runat="server">0</span></a>
                                        </li>--%>
                                    <%--    <li class="nav-item" id="hideassign">
                                            <a class="nav-link" data-toggle="tab" href="#Assigned">ASSIGN OWN DEPT&nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>--%>
                                        <%--<li class="nav-item" id="hideotherdept">
                                            <a class="nav-link" data-toggle="tab" href="#otherdept">ASSIGN OTHER DEPT &nbsp;<span id="countotr" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>--%>
                                                                                 
                                        <li class="nav-item" id="hidecomplete">
                                            <a class="nav-link" data-toggle="tab" href="#SEND">TO HOD &nbsp;<span id="countcom" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>
                                        
                                      <%--  <li class="nav-item" id="hidenotfes">
                                            <a class="nav-link" data-toggle="tab" href="#Notfeasible">REJECT &nbsp;<span id="counthold" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>--%>

                                    </ul>
                                    <div class="tab-content">

                                        <div id="INBOX" class="container tab-pane active">
                                            <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                            

                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1> DATE
                                                                 </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
                                                                </th>
                                                              <th >
                                                                   <h1> Idea ID</h1>
                                                                </th>                                                           
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                               <td class="ssid">
                                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Date")%>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1"  data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                         
                                                           
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>

                                        <div id="Assigned" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterassigned" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                               

                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                           <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                               
                                                               <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                             
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>

                                        <div id="Notfeasible" class="container tab-pane fade">
                                         
                                            <asp:Repeater ID="MailRepeaterhold" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                              
                     
                                          <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                <h1>SI NO</h1>
                                                                </th>
                                                                <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                         <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                             <%--<td>
                                                               
                                                                 <asp:Button ID="Button2" class="neons" runat="server" Text="View" />
                                                            </td--%>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>



                                            </asp:Repeater>
                                               
                                        </div>

                                       


                                        <div id="SEND" class="container tab-pane fade">
                                         
                                            <asp:Repeater ID="MailRepeatercomplete" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                     
                                          <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                         <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                             <%--<td>
                                                               
                                                                 <asp:Button ID="Button2" class="neons" runat="server" Text="View" />
                                                            </td--%>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>



                                            </asp:Repeater>
                                               
                                        </div>

                                    


                                        <div id="FromIMPL" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterFromIMPL" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                       

                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                               <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                          <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>                                                                                                                    
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>


                                         <div id="resend_hod" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterresend_hod" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                      
                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                         <tr>
                                                                 <th >
                                                                  <h1>SI NO</h1>
                                                                </th>
                                                                  <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                           <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                           <%--  <td>
                                                               
                                                                 <asp:Button ID="Button2" class="neons" runat="server" Text="View" />
                                                            </td>--%>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>


                                            <div id="resend_HR" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterresend_HR" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                      
                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                         <tr>
                                                                 <th >
                                                                  </h1>SI NO</h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                           <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                           <%--  <td>
                                                               
                                                                 <asp:Button ID="Button2" class="neons" runat="server" Text="View" />
                                                            </td>--%>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>



                 

            
                                         <div id="otherdept" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterotherdept" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                      
                                                    <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                         <tr>
                                                                 <th >
                                                                  <h1>SI NO</h1>
                                                                </th>
                                                                <th >
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                <%--<th >--%>
                                                                   <h1> Subject</h1>
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
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Date") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("EmployeeName") %>' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                           <td class="neons"  colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                 <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                           <%--  <td>
                                                               
                                                                 <asp:Button ID="Button2" class="neons" runat="server" Text="View" />
                                                            </td>--%>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>


                                            </asp:Repeater>
                                        </div>



                                    </div>
                                </div>








                            </div>

                        </div>
                    </div>
                </div>
            </div>
          <%--  <div class="bTd">
            </div>--%>

        </div>
       <%-- </div>--%>



   
 <div class=" col-lg-12 reps"  id="show"  tabindex="0" style="display:none">
         <div class="rightside no-gutters" >
              <div class="email-wrapper row remain-height ov-h" style="    background-color: #ededf6!important;">
             <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                            <div class="h-100 scrollable pos-r">
                                <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw d-n@md+">
                                   
                                    
                                </div>
                                <div class="email-content-wrapper">
                                    <div class="peer ai-c jc-sb pY-50" style="padding-left: 50px; padding-right: 50px; padding-bottom: 50px!important">

                                        <div class="peer peer-greed">
                                            <div class="peer" align="right">
          
                                            </div>
                                            <div class="peer mR-20">
                                            </div>
                                            <%--<div class="peer">--%>

      
                                        <asp:ScriptManager ID="ScriptManager" runat="server" />
                                        <asp:UpdatePanel ID="UpdatePanel1"
                                            UpdateMode="Conditional"
                                            runat="server" Visible="true" >
                                            <ContentTemplate>


                                                   
                                                  <form>        
        <div class="form-group">   
            <lable ID="SubjectTaglabel"   ></lable>
            <mark class="form-control textalign "  id="SubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>                                                                                                  
        </div>
            <mark  id="SContent"  style="color:red"></mark>
        <div class="form-group row">
            <mark  id="IdIdTag"  class="col-sm-2  fnt"></mark>
       <div class="col-sm-10">
             <mark id="IdeaIdTag"  style="padding-left: 10px"></mark>
       </div>
      </div> 
      <div class="form-group row">
            <mark id="fromTag"  class=" col-sm-2 fnt"></mark>
    <div class="col-sm-10">
            <mark id="EmployeeNameTag" ></mark>
    </div>
  </div>
    <div class="form-group row">
     <mark id="EIDTag"  class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
    <mark id="EmployeeIDTag" ></mark>
    </div>
    </div>
    <div class="form-group row">
   <mark  id="DepTag"  class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="DepartmentTag" ></mark>
    </div>
  </div>
    <div class="form-group row">
  <mark  id="DesTag"  class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
    <mark  id="DesignationTag" ></mark>
    </div>
  </div>
    <div class="form-group row">
    <mark  id="CatTag"  class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
    <mark  id="CategoryTag" ></mark>
    </div>
  </div>
   <div class="form-group row">
   <mark class="col-sm-2">Date:</mark>
       <div class="col-sm-10">
     <mark  id="TimeTag" ></mark>
           </div>
       </div>
               <div class="form-group row">
    <mark id="BenTag"  class="col-sm-2  fnt"></mark>
       <div class="col-sm-10">
         <p id="BenefitsTag" class="textalign"  style="padding-left: 10px"></p>
           </div>
       </div> 
            
<table id="viewtbl" class="table table-bordered" style="border-style: ridge; width: 80%;"align="center">
  
    <tr>
      <th scope="col"> <mark  id="AftTag" " class="fnt"></mark></th>
      <th scope="col"> <mark id="BefTag"  class="fnt"></mark></th>
    </tr>   
    <tr>
      <td> <p  id="AfterTag" class="textalign"></p></td>
      <td> <p  id="BeforeTag" class="textalign"></p></td>
    </tr>   
</table>                                                                      
    <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl1Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <div id="imgAt1">
                                                                                     <img src="ContentPlaceHolder1_UpLoad1Tag"  id="UpLoad1Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                </div>
                                                                                     <div id="fileAt1">
                                                                                    <a href="#" id="attachement1" target="_blank" class="btn btn-info">Download Attachment 1</a>
                                                                                      </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl2Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt2">
                                                                                <img src="ContentPlaceHolder1_UpLoad2Tag"  id="UpLoad2Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                     <div id="fileAt2">
                                                                                      <a href="#" id="attachement2" target="_blank" class="btn btn-info">Download Attachment 2</a>
                                                                                         </div>
                                                                                </div>
                                                                            </div>
                                                                            <div id="myModal" class="modal">
                                                                                        <span class="close">&times;</span>
                                                                                        <img class="modal-content" id="img01">
                                                                                        <div id="caption"></div>
                                                                                    </div>
                                                                            </div>
                                                             
                                                                                                                                                                                                                                                                       
</form>

 

<form> 
  <div class="form-group">
   
    <lable ID="SSubjectTaglabel"></lable>
     <mark class="form-control" id="SSubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="ent"  style="color:red">---Supervisor Description----</mark>
  <div class="form-group row">
     <mark id="SfromTag" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
      <mark id="SEmployeeNameTag"></mark>
    </div>
  </div>
 
  <div class="form-group row">
  <mark id="SEIDTag" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SEmployeeIDTag"></mark>
    </div>
  </div>
    <div class="form-group row">
   <mark  id="SDepTag" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SDepartmentTag"></mark>
    </div>
  </div>
    <div class="form-group row">
  <mark  id="SMail" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SMailTag"></mark>
    </div>
  </div>
    <div class="form-group row">
  <mark class="col-sm-2">Date:</mark>
    <div class="col-sm-10">
     <mark id="STimeTag"></mark>
    </div>
  </div>
    <div class="form-group row">
  <mark class="col-sm-2">Remarks:</mark>
    <div class="col-sm-10">
     <mark id="SContentTag" ></mark>
    </div>
  </div>
     <hr />
    
</form>
<form>
<div class="form-group">
   
    <lable ID="SSubjectTaglabel"  ></lable>
     <mark class="form-control" id="SSubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="et"  style="color:red">---Implementer Description----</mark>
       <div class="form-group row">
  <mark class="col-sm-2">EmployeeID:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag1" ></mark>
    </div>
  </div>
   <div class="form-group row">
  <mark class="col-sm-2">From:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag2" ></mark>
    </div>
  </div>
   <div class="form-group row">
  <mark class="col-sm-2">Department:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag3" ></mark>
    </div>
  </div>
   <div class="form-group row">
  <mark class="col-sm-2">MailID:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag4" ></mark>
    </div>
  </div>
   <div class="form-group row">
  <mark class="col-sm-2">Date:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag5" ></mark>
    </div>
  </div>
  
       <div class="form-group row">
  <mark class="col-sm-2">Remarks:</mark>
    <div class="col-sm-10">
     <mark id="impremarkTag" ></mark>
    </div>
  </div>
      <div class="row">
                                                                    <div class="col-md-4" style="padding-top:8px; max-inline-size: max-content;">
                                                                          <mark id="upl3Tag" class="fnt"></mark>
                                                                        </div>
                                                                                <div class="col-md-4">
                                                                                
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt3">
                                                                                <img src="ContentPlaceHolder1_UpLoad3Tag"  id="UpLoad3Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                      <div id="fileAt3">
                                                                                          <a href="#" id="attachement3" target="_blank" class="btn btn-info">Download Attachment 3 </a>
                                                                                          </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </br>

</form>

<form id="Man_form" style="display:none"> 
    <div class="jumbotron">
  <div class="form-group" id="man_dis" >
   
    <lable ID="SSubjectTaglabel1"  ></lable>
     <mark class="form-control" id="SSubjectTag1" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="ent1" class="fnt" style="color:red">---HOD Description----</mark>
  <div class="form-group row">
     <mark id="SfromTag1" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
      <mark id="SEmployeeNameTag1"></mark>
    </div>
  </div>
 
  <div class="form-group row">
  <mark id="SEIDTag1" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SEmployeeIDTag1"></mark>
    </div>
  </div>
    <div class="form-group row">
   <mark  id="SDepTag1" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SDepartmentTag1"></mark>
    </div>
  </div>
    <div class="form-group row">
  <mark  id="SMail11" class="col-sm-2 fnt"></mark>
    <div class="col-sm-10">
     <mark id="SMailTag1"></mark>
    </div>
  </div>
    <%--<div class="form-group row">
  <mark class="col-sm-2">Date:</mark>
    <div class="col-sm-10">
     <mark id="STimeTag1"></mark>
    </div>--%>
  
    <div class="form-group row">
  <mark class="col-sm-2" id="remark_mam"></mark>
    <div class="col-sm-10">
     <mark id="SContentTag1" ></mark>
    </div>
  </div>
     <hr />
    </div>
    
</form>



<div class="peer" >
                                                                <fieldset style="width: 100%;border: double!important;border-left:none!important;border-right:none!important">
                                                                    <mark id="ReplyTag" class="fnt" style="color:red"></mark>
                                                                    <br />
                                                                    <br />
                                                                   
                                                               <mark  id="StatusTag"  class="fnt" hidden></mark>
                                                        <mark id="StatusPTag" class="textalign"  style="padding-left: 10px; color:red"></mark>
                                                                    <br /><br />
                                                                <mark id="ReasonTag"  class="fnt"></mark>
                                                        <p id="ReasonPTag" class="textalign"  style="padding-left: 10px"></p>
                                                                <mark id="ResponseTag"  class="fnt"></mark>
                                                        <p id="ResponsePTag" class="textalign"  style="padding-left: 10px"></p>
                                                                    </fieldset>
                                                                 
                                                            </div>

                                                  
                                                       
                                                       
                                                            
                                                        <mark id="CmtIdTag" class="fnt" hidden></mark>                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                        <asp:TextBox ID="CEideaidTextBox" CssClass="MCideaidclass" runat="server" hidden></asp:TextBox>                                                            
                                                            <p id="SendToUpText" class="textalign"  style="padding-left: 10px" hidden></p>
                                                            <p id="ToNameUpMark" class="textalign"  style="padding-left: 10px"hidden></p>
                                                            <asp:TextBox runat="server" ID="hodid" Visible="false"></asp:TextBox>
                                                            <input type="text" id="hodid2" class="ToUPTextBoxClass" name="hodid" hidden />
                                                              <asp:TextBox ID="txtHODid" CssClass="form-control ToUPTextBoxClass"  runat="server"  Visible="false"></asp:TextBox>
                                                
                                                    </div>
                                                        </div>
                                               
                                                    <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("ContentPlaceHolder1_UpLoad1Tag");
var img1 = document.getElementById("ContentPlaceHolder1_UpLoad2Tag");
var img2 = document.getElementById("ContentPlaceHolder1_UpLoad3Tag");
//var img3 = document.getElementById("ContentPlaceHolder1_UpLoad4Tag");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  
}
img1.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}
img2.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}
img3.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;

}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>
 <script>
  $('.close').click(function () {
   modal.style.display = "none";
  });

 </script>                                                 
                                                       <script>
                                                        function imageAttachmenthandler(link,imageid,attachmentid,imagediv,attachmentdiv)
                                                        {
        
                                                            console.log(link);
                                                            var x = document.getElementById(imagediv);
                                                            var y = document.getElementById(attachmentdiv);
 
                                                            if (link != null && link != "../UI/Image/No File") {
                                                                var data = link.split('.').pop();
                                                                if (data == 'jpg') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else if (data == 'png') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else {
                                                                    document.getElementById(attachmentid).href = link;
                                                                    y.style.display = "block";

                                                                    x.style.display = "none";

                                                                }
                                                            }
                                                            else
                                                            {
                                                                document.getElementById(imageid).src = "../UI/assets/static/images/unpin.png";
                                                                x.style.display = "block";

                                                                y.style.display = "none";
                                                            }
                                                        }
                                                    </script>


                                            </ContentTemplate>


                                        </asp:UpdatePanel>
                                        <script type="text/javascript">
                                            $(document).ready(function () {
                                                // $(".ideadiv").click(function () {
                                                $("#viewtbl").hide();
                                                //});
                                            });


                                        </script>

                                         
                                       
                                    </div>

                                </div>
                                <div class="bdT" style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">


                                    <asp:UpdatePanel ID="UpdatePanel2"
                                        UpdateMode="Conditional"
                                        runat="server">
                                        <ContentTemplate>


                                            <div class="pear">
                                            </div>




                                        </ContentTemplate>


                                    </asp:UpdatePanel>
                                    <div id="hidereassignpopup" style="text-align: right; color: #f8f8f8;    font-size: xx-large; padding-inline: 30px; letter-spacing: 10px!important" >
                            <a href="javascript:void(0)"  data-toggle="modal" data-target="#myModalReassignOwnTeamMembers">

                                <span     data-toggle="tooltip" data-placement="top" title="Reassign Own Team and Forward HOD ">
                                   <button type="button" class="btn btn-success">Forward HOD </button>
                                </span>

                            </a>
               
                        </div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
                

            <div class="rightside no-gutters" style="margin-right: 50px;" id="UPDT3">
                <div class="email-wrapper row remain-height ov-h" style="background-color: #fff0!important;">
                    <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                        <div class="h-100 scrollable pos-r">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw d-n@md+">
                                <div class="peer">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="back-to-mailbox btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-angle-left"></i>
                                        </button>
                                        <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-folder"></i>
                                        </button>
                                        <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-tag"></i>
                                        </button>
                                        <div class="btn-group" role="group">
                                            <button id="Button1" type="button" class="btn cur-p bgc-white no-after dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ti-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu fsz-sm" aria-labelledby="btnGroupDrop1">
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-trash mR-10"></i>
                                                        <span>Delete</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-alert mR-10"></i>
                                                        <span>Mark as Spam</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-star mR-10"></i>
                                                        <span>Satar</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="peer">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-angle-left"></i>
                                        </button>
                                        <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="email-content-wrapper">
                                <div class="peer ai-c jc-sb pY-30" style="padding-left: 10px; padding-right: 20px; padding-bottom: 10px!important">

                                    <div class="peer peer-greed">
                                        <div class="peer" align="right">
                                            <%--<asp:ImageButton ID="PFuthurImageButton" runat="server" ImageUrl="~/UI/assets/static/images/Icons/3-Copy.jpg" Height="25px" Width="25px" align="right" OnClick="PFuthurImageButton_Click" />--%><br />
                                            <%-- <a href="" class="btn btn-danger bdrs-50p p-15 lh-0">
                                                        <i class="fa fa-reply"></i>
                                                    </a>--%>
                                        </div>
                                        <div class="peer mR-20">
                                        </div>
                                        <%--<div class="peer">--%>


                                                                                

                                         <asp:UpdatePanel ID="UpdatePanel3"
                                                UpdateMode="Conditional"
                                                runat="server" >
                                                <ContentTemplate>

                                                     
                                                    <div class="pear">
                                                        <lable ID="SSubjectTaglabel"  ></lable>
                                                        <mark class="form-control" id="SSubjectTag" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="STimeTag"></h6>
                                                        <%--<lable id="formtaglable"></lable>--%>
                                                        <mark id="CmtIdTag" class="fnt" hidden></mark>
                                                        <mark id="SfromTag" class="fnt"></mark><mark id="SEmployeeNameTag"></mark>
                                                        <br />
                                                        <mark id="SEIDTag" class="fnt"></mark><mark id="SEmployeeIDTag"></mark>
                                                        <br />
                                                        <mark  id="SDepTag" class="fnt"></mark><mark id="SDepartmentTag"></mark>
                                                        <br />
                                                        <mark  id="SMail" class="fnt"></mark><mark id="SMailTag"></mark>
                                                        
                                                        <hr />

                                                        <mark id="SContentTag"></mark>
                                                        <br />
                                                        <br />
                                                        <mark  id="SContent" class="fnt" style="color:red"></mark>
                                                            <br />
                                                        <div class="pear" style="padding-left:40px" >
                                                        <lable ID="SubjectTaglabelA"   ></lable>
                                                        <mark class="form-control textalign "  id="SubjectTagA" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="TimeTagA" ></h6>
                                                        <%--<lable id="formtaglable"></lable>--%>
                                                        <mark id="fromTagA"  class="fnt"></mark><mark id="EmployeeNameTagA" ></mark>
                                                        <br />
                                                        <mark id="EIDTagA"  class="fnt"></mark><mark id="EmployeeIDTagA" ></mark>
                                                        <br />
                                                        <mark  id="DepTagA"  class="fnt"></mark><mark id="DepartmentTagA" ></mark>
                                                        <br />
                                                        <mark  id="DesTagA"  class="fnt"></mark><mark  id="DesignationTagA" ></mark>
                                                        <br />
                                                        <hr />
                                                        <mark  id="CatTagA"  class="fnt"></mark><mark  id="CategoryTagA" ></mark>
                                                        <hr />
                                                        <div style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">
                                                        <mark  id="IdIdTagA"  class="fnt"></mark><mark id="IdeaIdTagA"  style="padding-left: 10px"></mark>
                                                        <asp:TextBox ID="TextBox2" CssClass="MCideaidclass" runat="server" hidden></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <mark id="BefTagA"  class="fnt"></mark>
                                                        <p  id="BeforeTagA" class="textalign"  style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark  id="AftTagA" " class="fnt"></mark>
                                                        <p  id="AfterTagA" class="textalign"  style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark id="BenTagA"  class="fnt"></mark>
                                                        <p id="BenefitsTagA" class="textalign"  style="padding-left: 10px"></p>
                                                            <br />
                                                            <br />
                                                            <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl1TagA" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <div id="imgAt1A">
                                                                                     <img src="ContentPlaceHolder1_UpLoad1Tag"  id="Img2" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                </div>
                                                                                     <div id="fileAt1A">
                                                                                    <a href="#" id="attachement1A" target="_blank" class="btn btn-info">Download Attachment 1</a>
                                                                                      </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl2TagA" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt2A">
                                                                                <img src="ContentPlaceHolder1_UpLoad2Tag"  id="Img3" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                     <div id="fileAt2A">
                                                                                      <a href="#" id="attachement2A" target="_blank" class="btn btn-info">Download Attachment 2</a>
                                                                                         </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl3TagA" class="fnt"></mark>
                                                                            </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt3A">
                                                                                <img src="ContentPlaceHolder1_UpLoad3Tag"  id="Img4" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                      <div id="fileAt3A">
                                                                                          <a href="#" id="attachement3A" target="_blank" class="btn btn-info">Download Attachment 3 </a>
                                                                                          </div>
                                                                                </div>
                                                                            </div>
                                                                            <div id="myModal" class="modal">
                                                                                        <span class="close">&times;</span>
                                                                                        <img class="modal-content" id="img01A">
                                                                                        <div id="captionA"></div>
                                                                                    </div>
                                                                            </div>



                                                            </div>
                                                            <div class="peer" >
                                                                <fieldset style="width: 100%;border: double!important;border-left:none!important;border-right:none!important">
                                                                    <mark id="ReplyTagA" class="fnt" style="color:red"></mark>
                                                                    <br />
                                                                   
                                                                                                            
<div id="TextBoxContainer" >
    <!--Textboxes will be added here -->
    <div class="row bg-primary">
          <div class="col-md-1 text-nowrap">
                                                                                        S.No
                                                                                    </div>
                                                                                    <div class="col-md-2">
                                                                                       Emp.Code
                                                                                    </div>
                                                                                    <div class="col-md-3">
                                                                                      Emp.Name
                                                                                    </div>
                                                                                     <div class="col-md-3">
                                                                                       Mail
                                                                                    </div>
                                                                                    <div class="col-md-2">
                                                                                      Dep
                                                                                    </div>
                                                                                     <div class="col-md-1 text-nowrap">
                                                                                       Day 
                                                                                    </div>
    </div>
</div>

                                       <%-- <input type="button" onclick="removeDiv()" value="text" /> --%>
                                                                     
                                                                    <br />
                                                                   
                                                                <mark  id="StatusTagA"  class="fnt" ></mark>
                                                        <mark id="StatusPTagA" class="textalign"  style="padding-left: 10px; color:red"></mark>
                                                                    <br /><br />
                                                                <mark id="ReasonTagA"  class="fnt"></mark>
                                                        <p id="ReasonPTagA" class="textalign"  style="padding-left: 10px"></p>
                                                                <mark id="ResponseTagA"  class="fnt"></mark>
                                                        <p id="ResponsePTagA" class="textalign"  style="padding-left: 10px"></p>
                                                                    </fieldset>
                                                                 
                                                            </div>

                                                    </div>
                                                        </div>


                                                    
                                                    <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("ContentPlaceHolder1_UpLoad1Tag");
var img1 = document.getElementById("ContentPlaceHolder1_UpLoad2Tag");
var img2 = document.getElementById("ContentPlaceHolder1_UpLoad3Tag");
//var img3 = document.getElementById("ContentPlaceHolder1_UpLoad4Tag");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  
}
img1.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}
img2.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}
img3.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;

}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>
 <script>
  $('.close').click(function () {
   modal.style.display = "none";
  });

 </script>                                                 
                                                       <script>
                                                        function imageAttachmenthandler(link,imageid,attachmentid,imagediv,attachmentdiv)
                                                        {
        
                                                            console.log(link);
                                                            var x = document.getElementById(imagediv);
                                                            var y = document.getElementById(attachmentdiv);
 
                                                            if (link != null && link != "../UI/Image/No File") {
                                                                var data = link.split('.').pop();
                                                                if (data == 'jpg') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else if (data == 'png') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else {
                                                                    document.getElementById(attachmentid).href = link;
                                                                    y.style.display = "block";

                                                                    x.style.display = "none";

                                                                }
                                                            }
                                                            else
                                                            {
                                                                document.getElementById(imageid).src = "../UI/assets/static/images/unpin.png";
                                                                x.style.display = "block";

                                                                y.style.display = "none";
                                                            }
                                                        }
                                                    </script>


                                                </ContentTemplate>


                                            </asp:UpdatePanel>
                                       
                                    </div>

                                </div>
                                


                                    
                                </div>
                            </div>
                        </div>

                    </div>
                    
                </div>                   
                <asp:Label ID="Label8" runat="server" Class="label" hidden></asp:Label>
              
                
               <%--         
                 <div id="hideresendpopup" style="text-align: right; color: #f8f8f8;    font-size: xx-large; padding-inline: 30px; letter-spacing: 10px!important" >
                            <a href="javascript:void(0)"  data-toggle="modal" data-target="#myModalResend_HR">

                                <span     data-toggle="tooltip" data-placement="top" title="Response TO HR ">
                                   <button type="button" class="btn btn-success">Forward HR </button>
                                </span>

                            </a>
               
                        </div>--%>
                
                  
<%--                            <a href="javascript:void(0)"  data-toggle="modal" data-target="#myModalDBMresend">

                                <span <%--class="icon-holder iconmenu dot"--%> <%--data-toggle="tooltip" data-placement="top" title="DBM">--%>
                                    <%-- <button type="button" class="btn btn-info">DBM</button>
                                </span>

                            </a>
                        --%>
                        

                   
                   <%-- <div <%--class="sidebar-menu scrollable pos-r style="text-align: right; color: #f8f8f8 !important" id="hidereassignpopup">--%>
             
                 
                      
               
           <%--              <div>
                     <asp:LinkButton ID="hideownotherpopup" runat="server" class="icon-holder iconmenu dot" data-toggle="tooltip" data-placement="left" title="Own Team " > <i class="fa fa-check-square-o" style="color: green"></i></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
                    <asp:LinkButton ID="hidereassignpopup" runat="server" class="icon-holder iconmenu dot" data-toggle="tooltip" data-placement="left" title="DBM"> <i class="fa fa-check-square-o" style="color: green"></i></asp:LinkButton>
                    </div>--%>

       

    
    </div>
        <!-- The Modal -->
  <div class="modal fade" id="myModall">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  



    <%--
           MODALS COMMITEE EVALUATION
    --%>
    <div class="container">
        <div class="modal fade" id="myModalOwnTeamMembers" >
       <div class="modal-dialog modal-xl">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Own Team Members</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <form class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                              <div class="row"> 
                               <div class=" form-group">
                                <label></label>
                                    <asp:RadioButtonList ID="ImpCheckRadioButtonList" runat="server" Style="margin-left: 20px; margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem class="fes" Value="feas">Accept</asp:ListItem>
                                        <asp:ListItem Value="Notfeasible">Reject</asp:ListItem>                                      
                                    </asp:RadioButtonList>
                                      <label id="sub2" class="hiddendiv" style="color:red">select Accept or Reject</label>
                                </div>                           
                                    <div class="col-sm-4 form-group">
                                        <label>Idea Id</label>
                                        <asp:TextBox ID="IMPIdeaIdTextBox" CssClass="form-control inp IdeaIDClass"  Style="pointer-events: none;"   placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>
                                    </div>
                              
                               
                                <div class="col-cmd-6 form-group">
                                        <label>Date</label>                                        
                                                <asp:TextBox ID="FromDateTextBox" CssClass="form-control inp FromDateTextBox" Style="pointer-events: none;"  runat="server"></asp:TextBox>                                           
                                    </div>
                                <div id="feasible">
                                    <div class=" form-group">                                        
                                            <label>Team Members: </label>
                                            <asp:DropDownList ID="TeamNamePopUPDDList" CssClass="js-example form-control DDJQuery DDJClass" Width="45%" runat="server"  AutoPostBack="false" AppendDataBoundItems="True">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                            </asp:DropDownList>                                        
                                    </div>
                                    <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <div class="peers">
                                            <label>To: </label>
                                            <asp:TextBox ID="ToTextBox" CssClass="form-control inp ToTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                            <asp:TextBox ID="EmpDepTextBox" CssClass="form-control inp EmpDepTextBoxClass" placeholder="To: "  runat="server" hidden></asp:TextBox>
                                            <asp:TextBox ID="EmpIDTextBox" CssClass="form-control inp EmpIDTextBoxClass" placeholder="ID "  Style="pointer-events: none;"   runat="server" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label>Mail ID: </label>
                                        <asp:TextBox ID="mailidtext" CssClass="form-control inp mailidtextClass" placeholder="Mail ID" Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                    </div>
                                        </div>
                                    
                                  
                                    <div class="col-sm-12 form-group">
                                        <label>Subject</label>
                                        <asp:TextBox ID="subjecttext" CssClass="form-control inp subjecttext " placeholder="Mail Subject" Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                         <label id="sub" class="hiddendiv" style="color:red">Enter The Subject Content</label>
                                    </div>
                                   
                  </div>
                                 <div class=" col-sm-12 form-group">
                                        <label>Remarks</label>
                                        <asp:TextBox ID="ComposeTextBox" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"  style=" height: 36px;"></asp:TextBox>
                                        <label id="sub1" class="hiddendiv" style="color:red">Enter The Remrks</label>  </div>
                                    
                                    
                                   
                                  </div>
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="OwnTeamPopButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="OwnTeamPopButton_Click" Style="display: none;" />
                        <input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmail()" />
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
            <div id="snackbar"> For more details.."please click the ideaID"</div>
    <script src="../UI/Style/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#preloader").hide();
        });
    </script>
    <script>
        function sendEmail() {
            document.getElementById('sub').className = 'hiddendiv';
            document.getElementById('sub1').className = 'hiddendiv';
           // document.getElementById('sub2').className = 'hiddendiv';
            
            var sub = $("[id*=subjecttext]").val();    
            var sub1 = $("[id*=ComposeTextBox]").val();   
           
           
            if (sub == "" || sub == null) {
                document.getElementById('sub').className = 'visiblediv';
            }
            else if (sub1 == "" || sub1 == null) {
                document.getElementById('sub1').className = 'visiblediv';
            }  
           
            else {
                $("#preloader").hide();
                var someSession = '<%= Session["UserName"].ToString() %>';
                var empid = '<%= Session["UserId"].ToString() %>';
                var Designation = '<%= Session["Designation"].ToString() %>';

                var formData2 = new FormData();
                var toaddress = document.getElementById('<% = mailidtext.ClientID %>').value;
                var toName = document.getElementById('<% = EmpIDTextBox.ClientID %>').value;
                var toId = document.getElementById('<% = EmpIDTextBox.ClientID %>').value;

                console.log("//////////////////////////toID////////////////////////////////////////////////////////////////"+toId);

                formData2.append("toAddress", toaddress.split(" ").join(""));
                formData2.append("toName", toName.split(" ").join(""));
                formData2.append("toId", toId.split(" ").join(""));
                //formData.append("toAddress",  document.getElementById('< % = mailidtext.ClientID %>').value); 
                // formData.append("toName",document.getElementById('< % = EmpNameTextBox.ClientID %>').value);
                //formData.append("toId", document.getElementById('< % = EmpIDTextBox.ClientID %>').value);
                formData2.append("subject", "Own Team implementation -" + document.getElementById('<% = subjecttext.ClientID %>').value);
                formData2.append("ideaID", document.getElementById('<% = IMPIdeaIdTextBox.ClientID %>').value);
                formData2.append("content", document.getElementById('<% = ComposeTextBox.ClientID %>').value);
                formData2.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


                formData2.append("resci", "Team");
                formData2.append("type", "New");
                formData2.append("subTitle", "Idea Implementation");
                //swal(
                //      {
                //          icon: 'info',
                //          title: ' Suggestion',
                //          text: 'S E N D I N G......',
                //          // text: 'Assinged to Own Team',
                //          type: 'success',
                //          buttons: false,
                //          allowOutsideClick: false,
                //          allowEscapeKey: false,
                //          closeOnClickOutside: false,
                //          timer: 20500
                //      }
                //    );
                swal({
                    title:"Suggestion", 
                    text:"S E N D I N G.......",
                    icon: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Loading_2.gif",
                    buttons: false,      
                    closeOnClickOutside: false,
                    timer: 20500,
                    //icon: "success"
                });
                var object = {};
                formData2.forEach(function (value, key) {
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
                        console.log(data);
                        document.getElementById("<%=OwnTeamPopButton.ClientID %>").click();

                    },
                    error: function (err) {
                        console.log(err);
                        document.getElementById("<%=OwnTeamPopButton.ClientID %>").click();
                    }
                });
            }
        }
    </script>
    
   <%-- <div class="container">
        <div class="modal fade" id="myModalComiteeEvaluation" role="dialog">
        <div class="modal-dialog modal-xl">--%>

                <!-- Modal content-->
              <%--  <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Other Team Members</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                 <div class="row">
                              <%--  <div class="send-header">--%>
                                  <%--  <div class="col-sm-6 form-group ">
                                        <label>Idea Id</label>
                                        <asp:TextBox ID="TextBox1" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>--%>
                               <%-- </div>--%>
                                     
                                    <%--<div class=" col-sm-6 form-group">
                                    <div class="peers">
                                        <label>Team Manager: </label>
                                        <asp:DropDownList ID="IMPDepaDLists" CssClass="js-example form-control DDJQuery DDJClass" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:TextBox ID="OthDepId" runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>
                 
                                <div class="col-sm-6 form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: "  runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp EmpIDTextBoxClass" placeholder="ID " runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID" runat="server"></asp:TextBox>--%>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
<%--                                </div>
                                <div class=" col-sm-6 form-group">
                                    <label>Subject</label>
                                    <asp:TextBox ID="SubjectIMPTextBox"  CssClass="form-control inp subjecttext" placeholder="Mail Subject" runat="server"></asp:TextBox>
                                    <label id="othersub" class="hiddendiv" style="color:red">Enter The Subject Content</label>
                                </div>
                                <div class=" col-sm-6 form-group">
                                    <label>Remarks</label>
                                    <asp:TextBox ID="ContectIMPTextBox" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"  style=" height: 36px;"></asp:TextBox>
                                   <label id="othercom" class="hiddendiv" style="color:red">Enter The Compose Content</label>
                                    </div>--%>


                                <%--<div id="compose-area">
                            <div class="text-right mrg-top-30">
                                <button class="btn btn-danger">Send</button>
                            </div>
                     </div>--%>
                        <%--    </div>
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" OnClick="ManagerButton_Click" Text="Send" Style="display: none;" />
                        <input type="button" class="form-control apopbtn" style="width: 100%;"  value="Send" onclick="sendEmailtoOtherteam()" />--%>
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>

                        <%--OnClick="TeamPopButton_Click"--%>
      <%--              </div>
                </div>
            </div>
        </div>
    </div>--%>
     <div class="container">
        <div class="modal fade" id="myModalDBMresend" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">DBM Resend</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="DBMIdeaid" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                              
                                
                                <div class="form-group">
                                    <label>Subject</label>
                                    <asp:TextBox ID="DBMSubject" CssClass="form-control inp subjecttext" placeholder="Mail Subject" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="DBMRemark" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="DBMButton" runat="server" CssClass="form-control apopbtn btn-primary" OnClick="DBMButton_Click"  Text="Send"  />
                        <%--<input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmailtoOtherteam()" />--%>
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>

                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        
                 <div class="modal fade" id="myModalReassignOwnTeamMembers" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Reassign Own Team Members and Forward HOD</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="ReassignIdeaId" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID" Style="pointer-events: none;"   runat="server"></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group">

                                    <asp:RadioButtonList ID="RadioButtonReassign" runat="server" Style="margin-left: 20px; margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="2" >
                                       <asp:ListItem  Value="ReassignImpl" Text="Reassign Implement"></asp:ListItem>
                                        <asp:ListItem class="res" Value="ForwardHOD" Text="Forward HOD"></asp:ListItem>
                                      
                                    </asp:RadioButtonList>
                                </div>
                                <div id="Fwd_Hod" style="display:none">
                                  <div class="col-sm-6 form-group" >
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: "  Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp EmpIDTextBoxClass" placeholder="ID " runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID" Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class=" col-sm-6 form-group">
                                    <label>Subject</label>
                                    <asp:TextBox ID="SubjectIMPTextBox"  CssClass="form-control inp subjecttext" placeholder="Mail Subject" Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                    <label id="othersub" class="hiddendiv" style="color:red">Enter The Subject Content</label>
                                </div>
                                </div>
                              
                                 <div class="form-group">
                                        <label>Remark BY Team</label>
                                        <asp:TextBox ID="ReassignCmts" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                        <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                    </div>
                                <div class="form-group">
                                     <div class="row">
                                         <div class="col-md-2"></div>
                                         <div class="col-md-8" id="FileToHOD" style="display:none">
                                             <asp:FileUpload ID="ImageFileUpload3" CssClass="form-control" runat="server"  />
                                         </div>
                                         <div class="col-md-2"></div>
                                     </div>
                                     
                                 </div>

                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="ReassignOT_OR_FWDHOD" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="ReassignOT_OR_FWDHOD_Click"  />
                        <%--<input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmail()" />--%>
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
                    </div>
                </div>
            </div>
        </div>
           
             <div class="modal fade" id="myModalResend_HR" role="dialog">
            <div class="modal-dialog model-lg">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"> Forward HR</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="TextBox3" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID"  runat="server"></asp:TextBox>

                                    </div>

                                </div>
                                <%--<div class="form-group">

                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="margin-left: 20px; margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="2" >
                                        <asp:ListItem  Value="ReassignImpl" Text="Reassign Implement"></asp:ListItem>
                                        <asp:ListItem class="res" Value="ForwardHOD" Text="Forward HOD"></asp:ListItem>
                                      
                                    </asp:RadioButtonList>
                                </div>--%>
                              
                                 <div class="form-group">
                                        <label>Remark BY Team</label>
                                        <asp:TextBox ID="TextBox4" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                        <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                    </div>
                              <%--  <div class="form-group">
                                     <div class="row">
                                         <div class="col-md-2"></div>
                                         <div class="col-md-8" id="FileToHOD" style="display:none">
                                             <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server"  />
                                         </div>
                                         <div class="col-md-2"></div>
                                     </div>--%>
                                     
                                 </div>

                            </div>

                        </div>
                         <div class="modal-footer">
                        <asp:Button ID="Button3" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="Response_Click"  />
                        <%--<input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmail()" />--%>
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
                    </div>
                    </div>

                  
                </div>
            </div>
        </div>
           
       
    
    <script>
        $(document).ready(function () {
            $("[id*=RadioButtonReassign]").click(function () {

                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "ForwardHOD")) {
                    $(this).prop("checked", true);
                    $('#FileToHOD').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {<a href="../AdminMaster.Master">../AdminMaster.Master </a>
                        console.log("Not Checked " + $('.res').checked);
                        $('#FileToHOD').hide();

                    }
                }
                else if ((textbox == "ReassignImpl")) {

                    $('#FileToHOD').hide();
                }



            });

        });


    </script>
    <script>
        $(document).ready(function () {
            $("#preloader").hide();

        });
    </script>
     

    <script>
        function sendEmailtoOtherteam() {
            //  $("#preloader").show();
            document.getElementById('othersub').className = 'hiddendiv';
            document.getElementById('othercom').className = 'hiddendiv';
            // document.getElementById('sub2').className = 'hiddendiv';
            
            var otherdep = $("[id*=SubjectIMPTextBox]").val();    
            var othercom = $("[id*=ContectIMPTextBox]").val();   
           
           
            if (otherdep == "" || otherdep == null) {
                document.getElementById('othersub').className = 'visiblediv';
            }
            else if (othercom == "" || othercom == null) {
                document.getElementById('othercom').className = 'visiblediv';
            }  
           
            else {
                console.log('test1')
                var someSession = '<%= Session["UserName"].ToString() %>';
                var empid = '<%= Session["UserId"].ToString() %>';
                var Designation = '<%= Session["Designation"].ToString() %>';

                var formData = new FormData();
                var toaddress = document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
                var toName = document.getElementById('<% = EmpIDIMPTextBox.ClientID %>').value;
                var toId = document.getElementById('<% = TOIMPTextBox.ClientID %>').value;

                formData.append("toAddress", toaddress.split(" ").join(""));
                formData.append("toName", toName.split(" ").join(""));
                formData.append("toId", toId.split(" ").join(""));          
                formData.append("subject", "Forwarding Idea -" + document.getElementById('<% = SubjectIMPTextBox.ClientID %>').value);
               // formData.append("ideaID", document.getElementByI
               // formData.append("content", document.getElementByI
                formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


                formData.append("resci", "Team");
                formData.append("type", "New");
                formData.append("subTitle", "Forward Idea Implementation to Other Department");
                swal({
                    title:"Suggestion", 
                    text:"Loading...",
                    icon: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Loading_2.gif",
                    buttons: false,      
                    closeOnClickOutside: false,
                    timer: 20500,
                    //icon: "success"
                });
                console.log('test2')
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
                        console.log(data);
                      //  document.getElementById("=ManagerButton.ClientID ").click();
                        console.log('button click');
                    },
                    error: function (err) {
                        console.log(err);
                        //document.getElementById("<=ManagerButton.ClientID ").click(); console.log('button click');
                    }
                });
            }
        }
    </script>
    <style>
     
.label-container{
	position:fixed;
	bottom:48px;
	right:105px;
	display:table;
	visibility: hidden;
}

.label-text{
	color:#FFF;
	background:rgba(51,51,51,0.5);
	display:table-cell;
	vertical-align:middle;
	padding:10px;
	border-radius:3px;
}

.label-arrow{
	display:table-cell;
	vertical-align:middle;
	color:#333;
	opacity:0.5;
}

.float2{
	position:fixed;
	width:60px;
	height:60px;
	bottom:110px;
	right:40px;
	background-color:#06C;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
}
.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#06C;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
}

.my-float{
	font-size:24px;
	margin-top:18px;
}

a.float + div.label-container {
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s, opacity 0.5s ease;
}

a.float:hover + div.label-container{
  visibility: visible;
  opacity: 1;
}   
    </style>
    <%-- <script src="../UI/Style/jquery.min.js"></script>--%>

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
        $(document).ready(function () {
            $("[id*=ImpCheckRadioButtonList]").click(function () {

                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "feas")) {
                    $(this).prop("checked", true);
                    $('#feasible').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {
                        console.log("Not Checked " + $('.fes').checked);
                        $('#feasible').hide();

                    }
                }
                else if ((textbox == "Notfeasible") || (textbox == "alreadyimpl")) {

                    $('#feasible').hide();
                }



            });

        });


    </script>
    <script>
        //$(".selectors").click(function () {
        //    $(".selectors").removeAttr('style')
        //    $(this).css("color", "#609;");
        //});
        $(".selectors").click(function () {
            $(".selectors").not(this).css("color", ""); //Added this statement
            $(this).css("color", "#609;");
        });
        //document.getElementById("selectors").onclick = function () {
        //    document.getElementById("selectors").style.color = 'green';
        //   }
    </script>



 <%--   <script>
        $('.ideadiv').click(function () {

            //var text = $(this).text();
            var idvalue = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            alert(idvalue);



            console.log(idvalue);
           
        });


    </script>--%>
    <script>

        $('.neons').click(function () {
           // alert("clicked");

            var IdeaID = $(this).text();
            //var IdeaID = $(this).closest('td').find('.IdeaIdclasstxt').val();
            //alert(text);
            //alert(IdeaID);
            document.getElementById("show").style.display = "block";
          $(document).scrollTop($(document).height());
           
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'ManagerMail.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                         console.log("test " + data.d.IdeaIdTag);
                        
                        var st = data.d.Status;
                        document.getElementById("SfromTag").innerHTML = "From : ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject;
                        document.getElementById("STimeTag").innerHTML = data.d.SDate;
                        document.getElementById("SContent").innerHTML = "---  Suggestion Description  --- ";
                        document.getElementById("SContentTag").innerHTML = data.d.SContent;
                        document.getElementById("SContentTag1").innerHTML = data.d.SResponse;
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
                      //  document.getElementById("IdeaIdPopUpTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("CmtIdTag").innerHTML = data.d.cmtid;
                        document.getElementById("SSubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SSubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SMail").innerHTML = "MailID : ";
                        document.getElementById("SMailTag").innerHTML = data.d.MailID;
                        
                        document.getElementById("SEmployeeNameTag").innerHTML = data.d.Sempname;
                        document.getElementById("SEmployeeIDTag").innerHTML = data.d.Sempid;
                        document.getElementById("SDepartmentTag").innerHTML = data.d.SDepartment;
                        
                        document.getElementById("fromTag").innerHTML = "From : ";
                        document.getElementById("EIDTag").innerHTML = "Employee ID : ";
                        document.getElementById("DepTag").innerHTML = "Department : ";
                        document.getElementById("DesTag").innerHTML = "Job Title : ";
                        document.getElementById("CatTag").innerHTML = "Category : ";
                        document.getElementById("IdIdTag").innerHTML = "Idea ID : ";
                        document.getElementById("BefTag").innerHTML = "Before : ";
                        document.getElementById("AftTag").innerHTML = "After : ";
                        document.getElementById("BenTag").innerHTML = "Benefits : ";
                        document.getElementById("upl1Tag").innerHTML = "FileUpload1 : ";
                        document.getElementById("upl2Tag").innerHTML = "FileUpload2 : ";
                        document.getElementById("upl3Tag").innerHTML = "Implement FileUpload :  ";
                        document.getElementById("SubjectTag").innerHTML = data.d.subject;

                        document.getElementById("EmployeeNameTag").innerHTML = data.d.empname;
                        document.getElementById("EmployeeIDTag").innerHTML = data.d.empid;
                        document.getElementById("DepartmentTag").innerHTML = data.d.Department;
                        document.getElementById("DesignationTag").innerHTML = data.d.Designation;
                        document.getElementById("TimeTag").innerHTML = data.d.Date;
                        document.getElementById("CategoryTag").innerHTML = data.d.category;
                        document.getElementById("IdeaIdTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("BeforeTag").innerHTML = data.d.Before;
                        document.getElementById("AfterTag").innerHTML = data.d.After;
                        document.getElementById("BenefitsTag").innerHTML = data.d.Benifit;
                        imageAttachmenthandler(data.d.upload1, 'ContentPlaceHolder1_UpLoad1Tag', 'attachement1', 'imgAt1', 'fileAt1');
                        imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2', 'imgAt2', 'fileAt2');
                        document.getElementById("impremarkTag").innerHTML = data.d.iremark; 
                        document.getElementById("impremarkTag1").innerHTML = data.d.impid; 
                        document.getElementById("impremarkTag2").innerHTML = data.d.implname; 
                        document.getElementById("impremarkTag3").innerHTML = data.d.impdept; 
                        document.getElementById("impremarkTag4").innerHTML = data.d.impmail; 
                        document.getElementById("impremarkTag5").innerHTML = data.d.impdate;
                     
                        if (st != "") {
                            
                       
                            document.getElementById("ReplyTag").innerHTML = " Reply ";
                            document.getElementById("StatusTag").innerHTML = "Status: ";
                            if (st == "Rejected") {
                                document.getElementById("ReasonTag").innerHTML = "Reason: ";
                                document.getElementById("ReasonPTag").innerHTML = data.d.SReason;
                            }
                            else {
                                document.getElementById("ReasonTag").innerHTML = "";
                                document.getElementById("ReasonPTag").innerHTML = "";
                            }
                            document.getElementById("ResponseTag").innerHTML = "Remark By Team: ";
                            document.getElementById("StatusPTag").innerHTML = data.d.Status;
                            document.getElementById("ResponsePTag").innerHTML = data.d.SResponse;

                            
                        }
                        else {
                            document.getElementById("ReplyTag").innerHTML = "---Waiting For Response---";
                            
                            document.getElementById("StatusTag").innerHTML = " ";
                            document.getElementById("ReasonTag").innerHTML = "";
                            document.getElementById("ReasonPTag").innerHTML = "";
                            document.getElementById("ResponseTag").innerHTML = " ";
                            document.getElementById("StatusPTag").innerHTML = "";
                            document.getElementById("ResponsePTag").innerHTML = "";
                        }
                        var bbs=data.d.SResponse;
                        if (bbs != "")
                        {
                            
                            document.getElementById("Man_form").style.display = "block";
                            document.getElementById("remark_mam").innerHTML = "Remark :";
                            document.getElementById("SfromTag1").innerHTML = "HOD Name: ";
                            document.getElementById("SEIDTag1").innerHTML = "HOD ID : ";
                            document.getElementById("SMail11").innerHTML = "MailID : ";
                            document.getElementById("SDepTag1").innerHTML = "Department : ";
                            document.getElementById("SSubjectTag1").innerHTML = data.d.SSubject;
                            document.getElementById("SEmployeeNameTag1").innerHTML = data.d.IEmpName1;
                            document.getElementById("SEmployeeIDTag1").innerHTML = data.d.IEmpId1;
                            document.getElementById("SDepartmentTag1").innerHTML = data.d.IDepID1;
                            document.getElementById("SMailTag1").innerHTML = data.d.Reason1;
                        }
                        else {
                            document.getElementById("Man_form").style.display = "none";
                        }
                        
                        document.getElementById("SendToUpText").innerHTML = data.d.SenderID;
                        
                        $(".ToUPTextBoxClass").val(data.d.SenderID);
                        console.log('+' + data.d.SenderID);
                        $('#<%= txtHODid.ClientID %>').val(data.d.SenderID);//txtHODid
                      //  document.getElementById("hodid2").value = data.d.SenderID;
                        document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);
                        $(".subjecttext").val(data.d.subject);
                       

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                        $(".SendToTextBoxclass").val(data.d.empid);
                       // getHOD_emailDetails(data.d.IdeaIdTag);
                        //$('#fromTag').html("From :");
                        //$('#SubjectTagLabel').html(data.d.subject);
                          var dep = '<%= Session["ManDep"] %>';
                        var empid ='<%= Session["UserId"]%>';
                    // var dept= document.getElementById("Label8") ;
                        //alert("..................dept............"+dep);
                        ManagerFilter(IdeaID);
                        Get_Details(empid,dep);
                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });


        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
    <script>
        function ManagerFilter(IdeaID) {
            
            $.ajax({
                url: 'ManagerMail.aspx/ManagerFilter',
                method: 'post',
                contentType: "application/json; charset=utf-8",
                async: true,
                dataFilter: function (data) { return data; },
                data: '{idea:' + IdeaID + '}',
                dataType: "json",

                success: function (data) {
                console.log(data,data.d)
                    var ddlCustomers = $("[id*=IMPDepaDLists]");
                    ddlCustomers.empty().append('<option selected="selected" value="0">Please select</option>');
                    $.each(data.d, function () {
                        ddlCustomers.append($("<option></option>").val(this['Value']).html(this['Text']));

                    });
                },
                error: function (err) {
                alert('Error : ' + data); console.log(err);
                tableInputKeyPress(e);
            }


            });
        }
    </script>

    <script>
    function imageAttachmenthandler(link,imageid,attachmentid,imagediv,attachmentdiv)
    {
        
        console.log(link);
        var x = document.getElementById(imagediv);
        var y = document.getElementById(attachmentdiv);
 
        if (link != null && link != "../UI/Image/No File") {
            var data = link.split('.').pop();
            if (data == 'jpg') {
                document.getElementById(imageid).src = link;
                x.style.display = "block";

                y.style.display = "none";
            }
            else if (data == 'png') {
                document.getElementById(imageid).src = link;
                x.style.display = "block";

                y.style.display = "none";
            }
            else {
                document.getElementById(attachmentid).href = link;
                y.style.display = "block";

                x.style.display = "none";

            }
        }
        else
        {
            document.getElementById(imageid).src = "../UI/assets/static/images/unpin.png";
            x.style.display = "block";

            y.style.display = "none";
        }
    }
    </script>
    <script>



        function Get_Details(IdeaIdTag,dep) {
            //alert("hit");

            var obj = {};
            obj.idea = IdeaIdTag;
            obj.dep = dep;
            $.ajax({
              

                url: 'ManagerMail.aspx/MChecking',
                method: 'post',
                contentType: "application/json; charset=utf-8",
                async: true,
                dataFilter: function (data) { return data; },
                //data: '{idea:' + JSON.stringify(IdeaIdTag) + 'dep:' + JSON.stringify(dep) + '}',
                data: JSON.stringify(obj),
                dataType: "json",
                               
                success: function (data) {
                    console.log(data);
                    console.log("test1HEID" + data.d.HEmployeeID);
                    console.log("test1HEN" + data.d.HEmployeeName);
                    console.log("testHMID" + data.d.Email);
                                    
                       $(".IMPToTextBoxClass").val(data.d.HEmployeeID);
                      $(".IMPmailidtextClass").val(data.d.Email);
                                 
                    //  alert("sucess");

                },
                error: function (err) {
                    console.log(JSON.stringify(err));
                         
                }
            });
            return false;
                   
        }
                    
   
    </script>


    <script>
        $(document).ready(function () {
           
            $("[id*=TeamNamePopUPDDList]").change(function () {
                console.log("Checking :");
                var txt = "" + $(this).children('option:selected').val().toString();
                var name = "" + $(this).children('option:selected').text().toString();
                console.log("Checking :" + txt, name);
                if (txt != "--Select--") {
                    if (txt != "") {
                        var textbox2 = $(".ToTextBoxClass").val().toString();
                        if (textbox2 == "") {
                        // var tt = textbox2 + " " + txt;
                            var tt = textbox2 + " " + name;
                        }
                        else {
                            console.log("Textbox" + txt);
                           // var tt = textbox2 + ',' + " " + txt;  // changed to name
                            var tt = textbox2 + ',' + " " + name;
                        }
                        //$(".ToTextBoxClass").val(tt);
                        console.log("TT:" + textbox2 + 'textbox:' + txt);
                         var k = txt.toString();
                         var f = "";
                         var feid = "";
                            $.ajax({
                                url: 'ManagerMail.aspx/Checking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(k) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.EmployeeId);
                                    console.log("test1HEN" + data.d.EmployeeName);
                                    console.log("testHMID" + data.d.Email);
                            <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                    var fx = "";
                                    var fz = "";    
                                    f = data.d.Email;
                                    feid = data.d.EmployeeId;
                            //        var EID = $(".EmpIDTextBoxClass").val().toString();
                            //        var z = $(".mailidtextClass").val().toString();
                            //if (z == "") {
                            //    fx = z + " " + f;
                            //    fz = EID + "" + feid;
                            //}
                            //else {
                            //    console.log("Textbox" + txt);
                            //    fx = z + ',' + " " + f;
                            //    fz = EID + ',' + " " + feid;


                            //}


                            $(".mailidtextClass").val(f);
                            $(".EmpIDTextBoxClass").val(feid);

                            //console.log("test" + data.d.Designation);
                                <%-- document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                                    document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                                    document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        --%>

                                },
                                error: function (err) {
                                    alert('Error : ' + data); console.log(err);
                                    //tableInputKeyPress(e);
                                }
                            });
                            return false;
                        }

                    }

            });


        });

    </script>
    <script type="text/javascript">

                                                  $(document).ready(function () {
                                                      document.getElementById("UPDT3").hidden = "hidden";
                                                     // document.getElementById("UPDT1").hidden = "";
                                                      document.getElementById("hidereassignpopup").hidden = "";
                                                     // document.getElementById("hideresendpopup").hidden = "hidden";
                                                     // document.getElementById("hideownotherpopup").hidden = "hidden";
                                                      $("[id*=hideassign]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();UpdatePanel3
                                                          //document.getElementById("ReplyButton").hidden = "";hidereassignpopup
                                                        //  document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "hidden";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                        //  document.getElementById("UPDT1").hidden = "";
                                                      })
                                                      $("[id*=hidecomplete]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                        //  document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "";
                                                          document.getElementById("StatusTag").hidden = "";
                                                          document.getElementById("hidereassignpopup").hidden = "hidden";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                        //  document.getElementById("UPDT1").hidden = "";

                                                      })
                                                      $("[id*=hidereject]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                      //    document.getElementById("hideownotherpopup").hidden = "hidden ";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                      //    document.getElementById("UPDT1").hidden = "";
                                                          
                                                      })
                                                      //document.getElementById("hideownotherpopup").hidden = " ";
                                                      //document.getElementById("StatusPTag").hidden = "hidden";
                                                      //document.getElementById("StatusTag").hidden = "hidden";
                                                      //document.getElementById("hidereassignpopup").hidden = " ";
                                                      //document.getElementById("UPDT1").hidden = "hidden";
                                                      //document.getElementById("UPDT3").hidden = "";
                                                      $("[id*=hidenew]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                        //  document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                         // document.getElementById("UPDT1").hidden = "";
                                                      })
                                                      //document.getElementById("hideownotherpopup").hidden = "hidden";
                                                      //document.getElementById("StatusPTag").hidden = "hidden";
                                                      //document.getElementById("StatusTag").hidden = "hidden";
                                                      //document.getElementById("hidereassignpopup").hidden = "";
                                                      //document.getElementById("UPDT3").hidden = "hidden";
                                                      //document.getElementById("UPDT1").hidden = "";
                                                      $("[id*=hidehold]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                        //  document.getElementById("hideownotherpopup").hidden = "";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "hidden";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                         // document.getElementById("UPDT1").hidden = "";
                                                      })
                                                      $("[id*=hideotherdept]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                      //    document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "hidden";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                         // document.getElementById("UPDT1").hidden = "";
                                                      })
                                                      $("[id*=hideresend_hod]").click(function () {
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                      //    document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                         // document.getElementById("UPDT1").hidden = "";
                                                      })
                                                      $("[id*=hideresend_HR]").click(function () {
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                       //   document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                          document.getElementById("hidereassignpopup").hidden = "hidden";
                                                         // document.getElementById("hideresendpopup").hidden = "";
                                                          document.getElementById("UPDT3").hidden = "hidden";
                                                       //   document.getElementById("UPDT1").hidden = "";
                                                      })
                                                  })
    </script>

 
     <script type ="text/javascript">

        $('.ideadivreassign').click(function () {
            
            var IdeaID = $(this).closest('.ideadivreassign').find('.IdeaIdclasstxt').val();
            // alert(text);
            //alert(IdeaID);
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'HOSDashboard.aspx/getDetailsToMan',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        console.log("test" + data.d.fromTag);
                        var st = data.d.Status;
                        document.getElementById("SfromTag").innerHTML = "From : ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject;
                        document.getElementById("STimeTag").innerHTML = data.d.SDate; 
                        document.getElementById("SContent").innerHTML = "     ---  Suggestion Description  --- ";
                        //document.getElementById("SContentTagA").innerHTML = data.d.SContent;
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPopUpTagA").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("CmtIdTagA").innerHTML = data.d.cmtid;
                        
                        document.getElementById("SubjectTagA").innerHTML = data.d.subject;
                        document.getElementById("SMail").innerHTML = "MailID : ";
                        document.getElementById("SMailTag").innerHTML = data.d.MailID;
                        document.getElementById("SEmployeeNameTag").innerHTML = data.d.Sempname;
                        document.getElementById("SEmployeeIDTag").innerHTML = data.d.Sempid;
                        document.getElementById("SDepartmentTag").innerHTML = data.d.SDepartment;

                        //document.getElementById("empIDA").value = data.d.Sempid;
                        //document.getElementById("empMailIDA").value = data.d.MailID;
                        
                        document.getElementById("fromTagA").innerHTML = "From : ";
                        document.getElementById("EIDTagA").innerHTML = "Employee ID : ";
                        document.getElementById("DepTagA").innerHTML = "Department : ";
                        document.getElementById("DesTagA").innerHTML = "Designaton : ";
                        document.getElementById("CatTagA").innerHTML = "Category : ";
                        document.getElementById("IdIdTagA").innerHTML = "Idea ID : ";
                        document.getElementById("BefTagA").innerHTML = "Before : ";
                        document.getElementById("AftTagA").innerHTML = "After : ";
                        document.getElementById("BenTagA").innerHTML = "Benefits : ";
                        document.getElementById("upl1TagA").innerHTML = "FileUpload1 : ";
                        document.getElementById("upl2TagA").innerHTML = "FileUpload2 : ";
                        document.getElementById("upl3TagA").innerHTML = " Implement FileUpload : ";
                        document.getElementById("SubjectTagA").innerHTML = data.d.subject;

                        document.getElementById("EmployeeNameTagA").innerHTML = data.d.empname;
                        document.getElementById("EmployeeIDTagA").innerHTML = data.d.empid;
                        document.getElementById("DepartmentTagA").innerHTML = data.d.Department;
                        document.getElementById("DesignationTagA").innerHTML = data.d.Designation;
                        document.getElementById("TimeTagA").innerHTML = data.d.Date;
                        document.getElementById("CategoryTagA").innerHTML = data.d.category;
                        document.getElementById("IdeaIdTagA").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("BeforeTagA").innerHTML = data.d.Before;
                        document.getElementById("AfterTagA").innerHTML = data.d.After;
                        document.getElementById("BenefitsTagA").innerHTML = data.d.Benifit;
                        imageAttachmenthandler(data.d.upload1, 'ContentPlaceHolder1_UpLoad1Tag', 'attachement1A', 'imgAt1A', 'fileAt1A');
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2A', 'imgAt2A', 'fileAt2A');
                        imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3A', 'imgAt3A', 'fileAt3A');
                        if (st != "") {
                            
                       
                            document.getElementById("ReplyTagA").innerHTML = " Implementation Team Information ";
                            document.getElementById("StatusTagA").innerHTML = "Status: ";
                            if (st == "Rejected") {
                                document.getElementById("ReasonTagA").innerHTML = "Reason: ";
                                document.getElementById("ReasonPTagA").innerHTML = data.d.SReason;
                            }
                            else {
                                document.getElementById("ReasonTagA").innerHTML = "";
                                document.getElementById("ReasonPTagA").innerHTML = "";
                            }
                            document.getElementById("ResponseTagA").innerHTML = "Remark By Team: ";
                            document.getElementById("StatusPTagA").innerHTML = data.d.Status;
                            document.getElementById("ResponsePTagA").innerHTML = data.d.SResponse;

                            
                        }
                        else {
                            document.getElementById("ReplyTagA").innerHTML = "---Waiting For Response---";
                            
                            document.getElementById("StatusTagA").innerHTML = " ";
                            document.getElementById("ReasonTagA").innerHTML = "";
                            document.getElementById("ReasonPTagA").innerHTML = "";
                            document.getElementById("ResponseTagA").innerHTML = " ";
                            document.getElementById("StatusPTagA").innerHTML = "";
                            document.getElementById("ResponsePTagA").innerHTML = "";
                        }
                        //document.getElementById("SendToUpText").innerHTML = data.d.SenderID;
                        //$(".ToUPTextBoxClass").val(data.d.SenderID);
                        //document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        //$(".ideaidclass").val(data.d.IdeaIdTag);
                        
                        //document.getElementById("IdeaId1").value = data.d.IdeaIdTag;  
                        //document.getElementById("recivedDate").value = data.d.SDate;
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                                    // $(".SendToTextBoxclass").val(data.d.empid);
                        bindGrid(data.d.IdeaIdTag);  // table employee details
                        removeDiv(); // div table employee details
                        //bindGrid2(data.d.IdeaIdTag);
                        //$('#fromTag').html("From :");
                        //$('#SubjectTagLabel').html(data.d.subject);


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });


        function bindGrid(ideaID)
        {
            console.log(ideaID + ' from Grid method');
            $("[id*=gridImpleTeam] > tr").remove();
            $.ajax({
                type: "POST",
                url: "HOSDashboard.aspx/getFillGrid",
                data: '{idea:' + ideaID + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (r) {
                    alert(r.d);
                },
                error: function (response) {
                    alert(r.d);
                }
            });
        }

        //function bindGrid2(ideaID) {
        //    console.log(ideaID + ' from Grid method');
        //    $("[id*=gridImpleTeamScore] > tr").remove();
        //    $.ajax({
        //        type: "POST",
        //        url: "HOSDashboard.aspx/getFillGrid",
        //        data: '{idea:' + ideaID + '}',
        //        contentType: "application/json; charset=utf-8",
        //        dataType: "json",
        //        success: OnSuccessModel,
        //        failure: function (r) {
        //            alert(r.d);
        //        },
        //        error: function (response) {
        //            alert(r.d);
        //        }
        //    });
        //}
        function OnSuccess(response) {
 
            console.log(response.d);
            var xmlDoc = $.parseXML(response.d);
            var xml = $(xmlDoc);
    
            var customers = xml.find("Table");
 
            var row = $("[id*=gridImpleTeam] > tbody tr:last-child").clone(true);
            $("[id*=gridImpleTeam] tr").not(':has(th)').remove();

            var rowScore = $("[id*=gridImpleTeamScores] > tbody tr:last-child").clone(true);
            $("[id*=gridImpleTeamScores] tr").not(':has(th)').remove();

            $.each(customers, function () {
                var customer = $(this);
                AppendRow(row, $(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("ETo").text(), $(this).find("DepName").text(), $(this).find("Datedif").text())
                row = $("[id*=gridImpleTeam] > tbody tr:last-child").clone(true);
                addTextWithoutTable($(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("ETo").text(), $(this).find("DepName").text(), $(this).find("Datedif").text());
                /* AppendRowScore(rowScore, $(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("DepName").text(), $(this).find("Datedif").text())
                rowScore = $("[id*=gridImpleTeamScores] > tbody tr:last-child").clone(true);*/
            });
            //OnSuccessModel(response);
        }
        function addTextWithoutTable(sno, Code, Name,Mail, Department, Days) {
            var div = $("<div />");
            div.html(FillTable(sno, Code, Name,Mail, Department, Days));
            $("#TextBoxContainer").append(div);
            console.log('works');
        }
        function FillTable(sno, Code, Name,Mail, Department, Days) {
            // return '<input name = "DynamicTextBox" type="text" value = "' + value + '" />&nbsp;' +     '<input type="button" value="Remove" class="remove" />'

            return '<div class="row bg-light" ><div class="col-md-1">' + sno + '</div><div class="col-md-2">' + Code + '</div><div class="col-md-3">' + Name + '</div><div class="col-md-3">' + Mail + '</div><div class="col-md-2">' + Department + '</div><div class="col-md-1">' + Days + '</div></div>'
        }
        function AppendRow(row, sno, ReceiverId, EmployeeName, ETo, DepName, Datedif) {

            $(".sno", row).find("p").html(sno);


            $(".ReceiverId", row).find("p").html(ReceiverId);

            $(".EmployeeName", row).find("p").html(EmployeeName);

            $(".ETo", row).find("p").html(ETo);

            $(".DepName", row).find("p").html(DepName);

            $(".Datedif", row).find("p").html(Datedif);

            $("[id*=gridImpleTeam]").append(row);
        }
        // table 2
        //function OnSuccessModel(response) {
        //    console.log('method')
        //    var xmlDoc = $.parseXML(response.d);
        //    var xml = $(xmlDoc);
        //    var customers = xml.find("Table");
        //    var row = $("[id*=gridImpleTeamScores] > tbody tr:last-child").clone(true);
        //    $("[id*=gridImpleTeamScores] tr").not(':has(th)').remove();
        //    $.each(customers, function () {
        //        var customer = $(this);
        //        AppendRowScore(row, $(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("DepName").text(), $(this).find("Datedif").text())
        //        row = $("[id*=gridImpleTeamScores] > tbody tr:last-child").clone(true);
        //    });
        //}
        function AppendRowScore(row, sno, ReceiverId, EmployeeName,  DepName, Datedif) {

            $(".sno1", row).find("span").html(sno);


            $(".ReceiverId1", row).find("span").html(ReceiverId);

            $(".EmployeeName1", row).find("span").html(EmployeeName);

            $(".DepName1", row).find("span").html(DepName);

            $(".NoDays", row).find("span").html(Datedif);

            $("[id*=gridImpleTeamScore]").append(row);
        }
        
        /*
            console.log('called');
            console.log(r);

          
            //Parse the XML and extract the records.
            var customers = $($.parseXML(r.d)).find("Table");

            //Reference GridView Table.
            var table = $("[id*=gridImpleTeam]");

            //Reference the Dummy Row.
            var row = table.find("tr:last-child").clone(true);

            //Remove the Dummy Row.
            $("tr", table).not($("tr:first-child", table)).remove();

            //Loop through the XML and add Rows to the Table.
            $.each(customers, function () {
                var customer = $(this);
                $("td", row).eq(0).html($(this).find("r.d.sno").text());
                $("td", row).eq(1).html($(this).find("r.d.ReceiverId").text());
                $("td", row).eq(2).html($(this).find("r.d.EmployeeName").text());
                table.append(row);
                row = table.find("tr:last-child").clone(true);
            });
        }*/
        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
    <script>
        function removeDiv()
        { 
            $("#TextBoxContainer").closest("div").empty();//.remove();
            var div = $("<div />");
            div.html(FillHeader());
            $("#TextBoxContainer").append(div);
            console.log('header added');
           
        }
       
        
        function FillHeader() {
            return '<div class="row bg-primary"><div class="col-md-1 text-nowrap">S.No</div><div class="col-md-2">Emp.Code</div><div class="col-md-3">Emp.Name</div><div class="col-md-3">Mail</div><div class="col-md-2">Dep</div><div class="col-md-1 text-nowrap">Day</div></div>'

        }
        </script>
    <script type="text/javascript">
        function GetTableValues() {
   
        //Create an Array to hold the Table values.
        var implementsteam = new Array();
 
        //Reference the Table.
        var table = document.getElementById("gridImpleTeam");
 
        //Loop through Table Rows.
        for (var i = 1; i < table.rows.length; i++) {
            //Reference the Table Row.
            var row = table.rows[i];
            var currentRow = $(row).closest("tr");
            //Copy values from Table Cell to JSON object.
            var implement = {};
            implement.sno = currentRow.find("p:eq(0)").text();// row.cells[0].find("span").text();
           // console.log(implement.sno);
            implement.ReceiverId = currentRow.find("p:eq(1)").text(); //row.cells[1].innerHTML;
            implement.EmployeeName = currentRow.find("p:eq(2)").text(); //row.cells[2].innerHTML;
            implement.ETo = currentRow.find("p:eq(3)").text(); //row.cells[3].innerHTML;
            implement.DepName = currentRow.find("p:eq(4)").text(); //row.cells[4].innerHTML;
            implement.score = currentRow.find("select").val(); //row.cells[5].innerHTML;
            implementsteam.push(implement);
        }
       
          
        console.log(JSON.stringify(implementsteam));
        //Convert the JSON object to string and assign to Hidden Field.
        document.getElementsByName("ImplementationTeam")[0].value = JSON.stringify(implementsteam);
        
    }
</script>
<script>
 $(document).ready(function () {
            $('.ssid').click(function () {
                //alert("IF you want to see the detils'please click the ideaid'");
                var x = document.getElementById("snackbar");
                x.className = "show";
                setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
            });
                  
                    // Animation complete.
            }); 
                   
              
               </script>
       <script>
               
           $("[id*=RadioButtonReassign]").click(function () {
                 

                 var textbox = "" + $(this).val().toString();
                 console.log('first:' + textbox);

             //    if ((textbox == "RESEND")) {
             //        $(this).prop("checked", true);
             //        alert("sssss")
             //        $('#Notfeasible_hide').hide();
                 //}
                 if (textbox ==" ")
                 {
                     document.getElementById("Fwd_Hod").style.display = "none";

                 }
                 if (textbox == "ReassignImpl")
                 {
                     document.getElementById("Fwd_Hod").style.display = "none";
                 }
               
                 else if (textbox =="ForwardHOD") {
                     document.getElementById("Fwd_Hod").style.display = "block";
                }
          
            });
            </script>

</asp:Content>
