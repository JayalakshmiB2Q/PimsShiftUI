<%@ Page Title="" Language="C#" MasterPageFile="~/HOS.Master" AutoEventWireup="true" CodeBehind="HOSDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.HOSDashboard"   EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
    <link href="../UI/Style/sweetalert.min.js" rel="stylesheet"/>      
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
            background: linear-gradient(-68deg, #000066, #0b0340) !important
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
            background-color: #f0f3f500!important;
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

#ContentPlaceHolder1_UpLoad1Tag:hover {opacity: 0.7;}


#ContentPlaceHolder1_UpLoad2Tag:hover {opacity: 0.7;}

#ContentPlaceHolder1_UpLoad3Tag:hover {opacity: 0.7;}

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
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
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
        @media only screen and (max-width: 700px) {
            .modal-content {
                width: 100%;
            }
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
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
        <link href="../UI/Style/sweetalert.min.js" rel="stylesheet"/>
    <style>
.table{background-color:#F2F3F5!important;}
</style>
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
        /*.my-custom-scrollbar {
  position: relative;
  width: 800px;
  height: 400px;
  overflow: auto;
}*/

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


/*/*.gridview td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  /*content:  counter(Serial);*/ /* Display the counter */
/*}*/

</style> 
  

    
<%--   <div class="container"> --%>
<%--    <div class="my-custom-scrollbar my-custom-scrollbar-primary">--%>
    
 
<!-- Modal -->
      
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
        
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     
      <div class="modal-body">
      
          <label style="color: brown;">DBM_com</label> <br/>
          <label id="lbl_dbmemp"></label><br/><hr/>
            <label style="color: brown;">Commitee</label><br/>
          <label id="lbl_com"></label> <br/><hr/>
            <label style="color: brown;">DBM_MAN</label><br/>
          <label id="lbl_dbmman"></label> <br/><hr/>
            <label style="color: brown;">MANAGER</label><br/>
          <label id="lbl_man"></label> <br/><hr/>
            <label style="color: brown;">IMPLEMENTATION</label><br/>
          <label id="lbl_impl"></label> <br/><hr/>
            <label style="color: brown;">HOD</label> <br/>
          <label id="lbl_hod"></label><br/><hr/>
            <label style="color: brown;">BENIFICARY</label><br/>
          <label id="lbl_ben"></label> <br/><hr/>
            <label style="color: brown;">FINANCE_EMP</label><br/>
          <label id="lbl_finemp"></label> <br/><hr/>
            <label style="color: brown;">FINANCE_IMPL</label> <br/>
          <label id="lbl_finimpl"></label><br/>
          
       
         </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>
 
       

      
 
       

       <div id="preloader">
         <!--
<div id="status"  >&nbsp;</div>-->
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>
       <div class="row">
        <div class="col-lg-12 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
               
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >
                                    <div class="container mt-3">
                                       <ul class="nav nav-tabs">
                                        <li class="nav-item" id="hidenew">
                                            <a class="nav-link active" data-toggle="tab" href="#new">New  &nbsp;<span id="countnew" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                        <li class="nav-item" id="hideassign">
                                            <a class="nav-link" data-toggle="tab" href="#assigned">To HR &nbsp;<span id="countsent" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                            
                                        <li class="nav-item" id="hideResend">
                                            <a class="nav-link" data-toggle="tab" href="#Resendman">Resend Manager &nbsp;<span id="countRSMAN" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                        <li class="nav-item" id="hideResendHR">
                                            <a class="nav-link" data-toggle="tab" href="#ResendHR">FROM HR &nbsp;<span id="countFROMHR" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                          <%-- <li class="nav-item" id="hidenotfeasible">
                                            <a class="nav-link" data-toggle="tab" href="#MNotfeasible">NOT FEASIBLE &nbsp;<span id="countNhold" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>--%>
                                       </ul>
                                        <div class="tab-content">

                                            <div id="new" class="container tab-pane active">
                                                 <asp:Repeater ID="MailRepeater" runat="server">
                                                       
                                                        <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DAYS
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Department Name
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
                                                                <asp:Label ID="Label3" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("EmployeeName") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="Label2" runat="server" Text='  <%# Eval("DepName")%> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry" runat="server" Class="neons" Text='<%# Eval("IDeaID") %>' />
                                                               <%-- <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" runat="server" Text='<%#Bind("sno")%>' > </asp:TextBox>--%>
                                                            </td>
                                                          
                                                            
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>

                                                </asp:Repeater>
                                            </div>
                                            <div id="assigned" class="container tab-pane fade">
                                                <asp:Repeater ID="MailRepeatersent" runat="server">
                                                       
                                                     <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DAYS
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Department Name
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
                                                            </td >
                                                             <td class="ssid">
                                                                <asp:Label ID="Label7" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("HEmployeeName") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="Label2" runat="server" Text='  <%# Eval("DepName")%> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry" runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                             <div id="MNotfeasible" class="container tab-pane fade">
                                                <asp:Repeater ID="MailRepeaterMNotfeasible" runat="server">
                                                       
                                                     <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DAYS
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Department Name
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
                                                                <asp:Label ID="Label4" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("EmployeeName") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="Label2" runat="server" Text='  <%# Eval("DepName")%> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry" runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>


                                             <div id="Resendman" class="container tab-pane fade">
                                                <asp:Repeater ID="mailRepeaterRSman" runat="server">
                                                       
                                                     <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                <th >
                                                                   <h1> DAYS
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Department Name
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
                                                                <asp:Label ID="Label5" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("EmployeeName") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="Label2" runat="server" Text='  <%# Eval("DepName")%> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1 " data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry" runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                             <div id="ResendHR" class="container tab-pane fade">
                                                <asp:Repeater ID="mailRepeaterHR" runat="server">
                                                       
                                                     <HeaderTemplate >
                                                        <table class="con"  style="margin-right: 1px; margin-left:1px;width: 100%;"  >
                                                            <tr>
                                                                 <th >
                                                                 <h1>SI NO</h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> DAYS
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Employee Name
                                                                       </h1>
                                                                </th>
                                                                 <th >
                                                                   <h1> Department Name
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
                                                                <asp:Label ID="Label6" runat="server" Text='  <%# Eval("Datedif") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("EmployeeName") %> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="Label2" runat="server" Text='  <%# Eval("DepName")%> ' />
                                                            </td>
                                                            <td class="ssid">
                                                                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("Subject") %>' />
                                                            </td>
                                                            <td class="neons" colspan="1" data-toggle="tooltip" data-placement="right" title="C L I C K ">
                                                                <asp:Label ID="lblCountry" runat="server" CssClass="neons" Text='<%# Eval("IDeaID") %>' />
                                                            </td>
                                                          
                                                            
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>



                                        </div>
                                    </div>
                        
                                    </div>

                                <%--</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="bTd">

            </div>
       
        </div>
        </div>
    
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




                                            <asp:ScriptManager ID="ScriptManager" runat="server" />
                                            <asp:UpdatePanel ID="UpdatePanel1"
                                                UpdateMode="Conditional"
                                                runat="server">
                                                <ContentTemplate>

                                                     
                                                
                                                    
                
                                                  <form>        
        <div class="form-group">   
           <lable ID="SubjectTaglabel"   ></lable>
         <mark class="form-control" id="SubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                           </div>
           <mark  id="SContent" class="fnt" style="color:red"></mark>  
        <div class="form-group row">
           <mark  id="IdIdTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
         <mark id="IdeaIdTag"  style="padding-left: 10px"></mark>   
       </div>
      </div> 
       <div class="form-group row">
           <mark id="fromTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
         <mark id="EmployeeNameTag" ></mark>
       </div>
      </div>
        <div class="form-group row">
           <mark id="EIDTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
         <mark id="EmployeeIDTag" ></mark>
       </div>
      </div> 
       <div class="form-group row">
       <mark  id="DepTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
        <mark id="DepartmentTag" ></mark>
       </div>
      </div>
       <div class="form-group row">
      <mark  id="DesTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
        <mark  id="DesignationTag" ></mark>
       </div>
      </div>
       <div class="form-group row">
      <mark  id="CatTag"  class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
       <mark  id="CategoryTag" ></mark>
       </div>
      </div>
        <div class="form-group row">
    <mark id="BenTag"  class="fnt col-sm-2"></mark>                                                                                                              
       <div class="col-sm-10">
      <p id="BenefitsTag" class="textalign"  style="padding-left: 10px"></p>
       </div>
      </div>
      <div class="form-group row">
      <mark  id="g"  class="fnt col-sm-2">Date :</mark>
       <div class="col-sm-10">
       <mark  id="TimeTag" ></mark>
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
   
      </form>                                      
                                                       
                                                        <mark id="CmtIdTag" class="fnt" hidden></mark>
                                                      
                                                       
                                                       
                                                        <asp:TextBox ID="CEideaidTextBox" CssClass="MCideaidclass" runat="server" hidden></asp:TextBox>
                                                        <br />
                                                        <br />
                                                       
                                                             <br />
                                                            <br />

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
                                                                              
                                                                                        <img class="modal-content" id="img01" />
                                                                                        <div id="caption"></div>
                                                                                    </div>
                                                                            </div>

                                                          <%--  <div class="row">
                                                                <div class="col-md-4" style="padding-top:25px">ManagerUpload:</div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl4Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <div id="imgAt4">
                                                                                     <img src="ContentPlaceHolder1_UpLoad4Tag"  id="UpLoad4Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                </div>
                                                                                     <div id="fileAt4">
                                                                                    <a href="#" id="attachement4" target="_blank" class="btn btn-info">Man Download Attachment</a>
                                                                                      </div>
                                                                                </div>
                                                                            </div>
                                                                <div class="col-md-4"></div>
                                                                </div>--%>

                                                                 <form>        
        <div class="form-group">   
            <lable ID="SSubjectTaglabel"  ></lable>
            <mark class="form-control" id="SSubjectTagSUP style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
      </div>
            <mark  id="Sent" class="fnt" style="color:red">---Supervisor Description--</mark>     
        <div class="form-group row">
            <mark id="agSUP" class="fnt col-sm-2">From :</mark>
       <div class="col-sm-10">
              <mark id="SEmployeeNameTagSUP"></mark>
       </div>
      </div> 
      <div class="form-group row">
            <mark id="TagSUP" class="fnt col-sm-2">EmployeeID :</mark>
       <div class="col-sm-10">
             <mark id="SEmployeeIDTagSUP"></mark>
       </div>
      </div>
      <div class="form-group row">
           <mark  id="agSUP" class="fnt col-sm-2">Department :</mark>
       <div class="col-sm-10">
             <mark id="SDepartmentTagSUP"></mark>
       </div>
      </div>
      <div class="form-group row">
             <mark  id="ilSUP" class="fnt col-sm-2">Mail ID:</mark>
       <div class="col-sm-10">
              <mark id="SMailTagSUP"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="SMSUP" class="fnt col-sm-2">Date :</mark>
       <div class="col-sm-10">
              <mark id="STimeTagSUP"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="SSUP" class="fnt col-sm-2">Remarks :</mark>
       <div class="col-sm-10">
              <mark id="SContentTagSUP"></mark> 
       </div>
      </div> 
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
                                                                  <form>        
        <div class="form-group">   
            <lable ID="SSubjectTaglabel"  ></lable>
            <mark class="form-control" id="SSubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
      </div>
            <mark  id="Sent" class="fnt" style="color:red">---Manager Description--</mark>     
        <div class="form-group row">
            <mark id="SfromTag" class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
              <mark id="SEmployeeNameTag"></mark>
       </div>
      </div> 
      <div class="form-group row">
            <mark id="SEIDTag" class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
             <mark id="SEmployeeIDTag"></mark>
       </div>
      </div>
      <div class="form-group row">
           <mark  id="SDepTag" class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
             <mark id="SDepartmentTag"></mark>
       </div>
      </div>
      <div class="form-group row">
             <mark  id="SMail" class="fnt col-sm-2"></mark>
       <div class="col-sm-10">
              <mark id="SMailTag"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="SM" class="fnt col-sm-2">Date :</mark>
       <div class="col-sm-10">
              <mark id="STimeTag"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="S" class="fnt col-sm-2">Remarks :</mark>
       <div class="col-sm-10">
              <mark id="SContentTag"></mark> 
       </div>
      </div> 
      </form>

                                                    
<form id="Man_form" style="display:none"> 
    <div class="jumbotron">
  <div class="form-group" id="man_dis" >
   
    <lable ID="SSubjectTaglabel1"  ></lable>
     <mark class="form-control" id="SSubjectTag1" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="ent1" class="fnt" style="color:red">---HR Description----</mark>
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
                                                                   
                                                                <mark  id="StatusTag"  class="fnt" ></mark>
                                                        <mark id="StatusPTag" class="textalign"  style="padding-left: 10px; color:red"></mark>
                                                                    <br /><br />
                                                                <mark id="ReasonTag"  class="fnt"></mark>
                                                        <p id="ReasonPTag" class="textalign"  style="padding-left: 10px"></p>
                                                                <mark id="ResponseTag"  class="fnt"></mark>
                                                        <p id="ResponsePTag" class="textalign"  style="padding-left: 10px"></p>
                                                                    </fieldset>
                                                                 
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
                                     <div class="row" style="background-color: #a1a6af!important " >
                                   
                             </div>
                             <div class="col-lg-12">
               
                                        <input id="ApproveButton" class="form-control btns" style="height:50%;width:auto;color:white;    margin-left: 63rem; margin-block: 10px;" type="button" value="Response" data-toggle="modal" data-target="#myModalUpdate"/>

                                                <%-- type="button" id="btn_close" class="form-control btns" value="close" style=" height:50%; width:auto; color:white;  margin-block: 10px; margin-top: -40px;" />--%>
 
                                          </div>
                                     <div class="row">
                                <input id="RejectedButton" class="form-control btns" style="height:33%;width:auto%;color:white" type="button" value="Reject" data-toggle="modal" data-target="#myModalUpdate" hidden/>

          
                                 <input id="UpdatePopButton" class="form-control btns" style="height:50%;width:auto%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#myModalUpdate" onclick = "tableKeyPress()" hidden/>
                   </div>
             
            

                                  <%--  <div class="bdT" style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">


                                        <asp:UpdatePanel ID="UpdatePanel2"
                                            UpdateMode="Conditional"
                                            runat="server">
                                            <ContentTemplate>


                                                <div class="pear">--%>
                                                    <%--<mark runat="server" id="IdIdTag"></mark>
                                                    <p runat="server" id="IdeaIdTag"></p>
                                                    <br />
                                                    <mark runat="server" id="BefTag"></mark>
                                                    <p runat="server" id="BeforeTag"></p>
                                                    <br />
                                                    <mark runat="server" id="AftTag"></mark>
                                                    <p runat="server" id="AfterTag"></p>
                                                    <br />
                                                    <mark runat="server" id="BenTag"></mark>
                                                    <p runat="server" id="BenefitsTag" style="padding-left: 20px"></p>--%>

                                    <%--            </div>




                                            </ContentTemplate>


                                        </asp:UpdatePanel>
                                    </div>--%>
                                </div>
                            </div>

                        </div>
             
                
                 </div>
             
       </div>
        </div>
           <input type="hidden" name="ImplementationTeam"/>
       <%-- <div class=" col-lg-1 reps" style="padding:0px">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">--%>
            
              
     <%--   </div>
    </div>--%>
    
    <style>
        @media (min-width: 1200px){
.modal-xl {
    max-width: 1140px;
}
}
@media (min-width: 992px){
.modal-lg, .modal-xl {
    max-width: 800px;
}}
    </style>

       <%--
           MODALS COMMITEE EVALUATION Rejection
    --%>
        <div class="container">
        <div class="modal fade" id="myModalUpdate" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content" >
                    <div class="modal-header">
                        <h4 class="modal-title">Grade</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Update Grade with Respect to Idea</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <div class="row">
                                            
                                            <div class="col-sm-3"><label>Idea ID:</label>
                                                </div>
                                            <div class="col-sm-3">
                                                <mark id="IdeaIdPopUpTag" style="color: red; margin-left: -100px;"></mark>
                                                <input id="IdeaId1" name="IdeaId" class="form-control" hidden/>
                                                 <input id="empID" name="empID" class="form-control" hidden/>
                                                 <input id="empMailID" name="empMailID" class="form-control" hidden/>
                                                  <input id="recivedDate" name="recivedDate" class="form-control" hidden/>
                                              
                                            </div>
                                         </div>
                                        <div class="form-group">
                                              <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="margin-left: 20px; margin-top: 20px;"  RepeatDirection="Vertical" RepeatColumns="2">
                                                    <%-- <asp:ListItem   Value="Notfeasible">Not Feassible</asp:ListItem>--%>
                                                         <asp:ListItem Value="APPROVED">Approved</asp:ListItem>
                                                   <asp:ListItem class="fes" Value="RESEND">Re-send</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                         
                                                  <div id="Resend" style="display:block" > 
                                            <br />
                                                <table id="gridImpleTeam" class="table table-hover gridview" border="0" cellpadding="0" cellspacing="0" style=" margin-inline: -24px;font-size: smaller;">
                                                                           <thead>
                                                                                 <tr>
                                                                                   <%-- <th>
                                                                                        S.No
                                                                                    </th>--%>
                                                                                    <th>
                                                                                       Emp.Code
                                                                                    </th>
                                                                                    <th>
                                                                                      Emp.Name
                                                                                    </th>
                                                                                     <th>
                                                                                       Mail
                                                                                    </th>
                                                                                    <th>
                                                                                      Department
                                                                                    </th>
                                                                                     <th>
                                                                                      No.Days
                                                                                    </th>
                                                                                     <th>
                                                                                     Score(%)
                                                                                    </th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr> 
                                                                                   <%-- <td class="sno">
                                                                                        <p></p>
                                                                                    </td>--%>
                                                                                    <td class="ReceiverId">
                                                                                        <p></p>
                                                                                      
                                                                                    </td>
                                                                                    <td class="EmployeeName">
                                                                                        <p></p> 
                                                                                    </td> 
                                                                                     <td class="ETo" style=" font-family: emoji;">
                                                                                        <p></p> 
                                                                                    </td>
                                                                                     <td class="DepName">
                                                                                        <p></p> 
                                                                                    </td>
                                                                                     <td class="Datedif">
                                                                                         <p></p> 
                                                                                    </td>
                                                                                     <td class="score" >
                                                                                         <p></p>
                                                                                       
                                                                                    </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                         </table>


                                        
                                        <br />
                                        <input type="button" value="Show/Hide BENEFITS MATRIX" class="btn apopbtn" onclick="showHideTable()"/>
                                        <div id="scoreMatrixdiv">
                                        
<table class="table table-hover">

  <tr>
    <th >GRADE</th>
    <th>PRODUCTIVITY</th>
    <th>QUALITY (INTERNATIONAL OF PPM)</th>
	    <th>COST SAVING INR/ANNUM</th>
		    <th>SAFETY & ENVIRONMENT</th>
			 <th>6S</th>
  </tr>
  <tr>
    <td >A</td>
    <td  onclick="putvalue('A','6% & ABOVE','PRODUCTIVITY')">6% & ABOVE</td>
    <td onclick="putvalue('A','<200 PPM','QUALITY')"><200 PPM</td>
	<td onclick="putvalue('A','1,00,000 & ABOVE','COST SAVING')">1,00,000 & ABOVE</td>
	<td  onclick="putvalue('A','PREVENTIVE SIGNIFICANT','SAFETY')">PREVENTIVE SIGNIFICANT</td>
	<td onclick="putvalue('A','SIGNIFICANT','6S')">SIGNIFICANT</td>
	 
  </tr>
  <tr>
      <td>B</td>
    <td  onclick="putvalue('B','2% & ABOVE','PRODUCTIVITY')">2% & ABOVE</td>
    <td onclick="putvalue('B','500-200 PPM','QUALITY')">500-200 PPM</td>
	<td onclick="putvalue('B','50,000-1,00,000','COST SAVING')">50,000-1,00,000</td>
	<td  onclick="putvalue('B','PREVENTIVE MEDIUM','SAFETY')">PREVENTIVE MEDIUM</td>
	<td onclick="putvalue('B','MEDIUM','6S')">MEDIUM</td>
  </tr>
  <tr>
       <td>C</td>
    <td onclick="putvalue('C','<2%','PRODUCTIVITY')"><2%</td>
    <td onclick="putvalue('C','>500 PPM','QUALITY')">>500 PPM</td>
	<td onclick="putvalue('C','LESS THAN 50,000','COST SAVING')">LESS THAN 50,000</td>
	<td onclick="putvalue('C','PREVENTIVE LOW','SAFETY')">PREVENTIVE LOW</td>
	<td onclick="putvalue('C','LOW','6S')">LOW</td>
	    
  </tr>
      <tr>
       <td>D</td>
    <td onclick="putvalue('D','0','PRODUCTIVITY')">0</td>
    <td onclick="putvalue('D','0','QUALITY')">0</td>
	<td onclick="putvalue('D','0','COST SAVING')">0</td>
	<td onclick="putvalue('D','0','SAFETY')">0</td>
	<td onclick="putvalue('D','0','6S')">0</td>
	    
  </tr>
 
</table>
                                            </div>
<br/> 
<script> 
function showHideTable() {
    var x = document.getElementById("scoreMatrixdiv");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 
    function putvalue(grade, value, sub)
    {
        document.getElementById('fname').value = grade;
        document.getElementById('fname1').value = value;
        document.getElementById('fname2').value = sub;
    }
</script> 
<div class="row">
    <div class="col-md-1 text-nowrap"><b>Grade</b></div>
    <div class="col-md-2"><input type="text" class="form-control  inp SendToTextBoxclass" name="gradeText"  id="fname"/></div>
     <div class="col-md-2"><b>Subject</b></div>
    <div class="col-md-3"> <input type="text" class="form-control  inp SendToTextBoxclass" name="gradeSub"   id="fname2"/></div>
    <div class="col-md-1 text-nowrap"><b>Value</b></div>
    <div class="col-md-3">  <input type="text" class="form-control  inp SendToTextBoxclass" name="gradeVal"  id="fname1"/></div>
   
</div> 
                                        <hr />
                                     
                                              <%--  <script type="text/javascript">
                                                    
      
                                                    $(function () {
                                                        $(".myselect").select2();
                                                        $('#<%=ddlBenifialTeam.ClientID%>').multiselect({
                                                            includeSelectAllOption: true
                                                        });
                                                    });
 
</script>--%>
                                   <script>
                                       function getValues()
                                       {
                                          <%--  var manager=$('#<%=ddlBenifialTeam.ClientID %> option:selected').text();
                                           var email=$('#<%=ddlBenifialTeam.ClientID %> option:selected').val();
                                           var div = $("<ul />");--%>
                                           div.html(AddManagerToDiv(manager, email));
                                           $("#ManagerContainer").append(div);
                                       }
                                       $("body").on("click", ".remove", function () {
                                           $(this).closest("li").remove();
                                       });
                                       function AddManagerToDiv(value,email) {
                                           return ' <li class="row bg-light"><div class="col-md-2">*</div><div class="col-md-4"><input type="text" name="managerName" class="form-control" value="' + value + '" /></div><div class="col-md-4"><input type="text" name="managerEmail" class="form-control" value="' + email + '" /></div><div class="col-md-2"><input type="button"  class="remove btn" style="color:red" value="Remove" /></div></li>'
                                       }
                                   </script>
                                      
 <%--   <div class="col-md-4 text-nowrap">--%><%--<b>Benificial Team</b></div>
    <div class="col-md-6"> <asp:ListBox ID="listHOD" runat="server" CssClass="" SelectionMode="Multiple"></asp:ListBox>
        <asp:DropDownList ID="ddlBenifialTeam" CssClass="DepJQuery listbox  form-control" runat="server"></asp:DropDownList> </div>
                                         <div class="col-md-2 "><input type="button" class="btn apopbtn" value="Add" onclick="getValues()" />
                                         </div>    </div>--%>
                                      <ul id="ManagerContainer" >
                                         
                                      </ul>
                                             </div>
                                        <hr />

                                          <div class="row">
                                            <div class="col-sm-2">
                                                Subject
                                                </div>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtMailSubject" class="form-control  inp SendToTextBoxclass"  Style="pointer-events: none;"  name="txtMailSubject"  runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                                  
                                                 
                                        <div class="row">
                                            <div class="col-sm-2">
                                                Mail Body
                                                </div>
                                            <div class="col-sm-10"> 
                                                <textarea id="txtMailBody"class="form-control  inp SendToTextBoxclass" name="txtMailBody" cols="20" rows="2"></textarea>

                                                </div>
                                            </div>
                                       <%-- <div class="row">
                                         <div class="col-md-2"></div>
                                         <div class="col-md-8">
                                             <asp:FileUpload ID="ImageFileUpload3" CssClass="form-control" runat="server" />
                                         </div>
                                         <div class="col-md-2"></div>
                                     </div>--%>
   
                                     

                                </div>

                                </div>
                            </div>

                        </div>

                      



                 <script>
    function addText()
    {
        var div = $("<div />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
   } 
                     function GetDynamicTextBox(value) {
   // return '<input name = "DynamicTextBox" type="text" value = "' + value + '" />&nbsp;' +     '<input type="button" value="Remove" class="remove" />'

   return '<div class="row"><div class="col-md-1">S.No</div><div class="col-md-2">Emp.Code</div><div class="col-md-3">Emp.Name</div><div class="col-md-3">Mail</div><div class="col-md-2">Department</div><div class="col-md-1">No.Days</div></div>'
}
                 </script>
                    <div class="modal-footer">
                        <asp:Button ID="UpdateButton" runat="server" CssClass="form-control apopbtn" Text="Send" style="display:none;"  OnClick="UpdateButton_Click" />
                        <%--OnClick="TeamPopButton_Click"   OnClientClick = "GetTableValues()"--%>
                         <input type="button" class="form-control apopbtn" style="width:100%; " value="Send" onclick="sendEmail()" /> 
                    </div>   </div>
                </div>
            </div>
        </div>
        <div id="snackbar"> For more details.."please click the ideaID"</div>
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
       // alert(table);
    
        //Loop through Table Rows.
        for (var i = 1; i < table.rows.length; i++) {
            //Reference the Table Row.
            var row = table.rows[i];
          //  alert(row);
            var currentRow = $(row).closest("tr");
            //Copy values from Table Cell to JSON object.
            var implement = {};
            //implement.sno = currentRow.find("p:eq(0)").text();// row.cells[0].find("span").text();
           // console.log(implement.sno);
            implement.ReceiverId = currentRow.find("p:eq(0)").text(); //row.cells[1].innerHTML;
            implement.EmployeeName = currentRow.find("p:eq(1)").text(); //row.cells[2].innerHTML;
            implement.ETo = currentRow.find("p:eq(2)").text(); //row.cells[3].innerHTML;
            implement.DepName = currentRow.find("p:eq(3)").text(); //row.cells[4].innerHTML;
            currentRow.find("p:eq(4)").text('varan');
            implement.score = currentRow.find("p:eq(4)").text(); //row.cells[5].innerHTML;
            implement.score = $(".score", row).find("p").html();
            implementsteam.push(implement);
           
        }
       
          
        console.log("........................................................."+JSON.stringify(implementsteam));
        //Convert the JSON object to string and assign to Hidden Field.
        document.getElementsByName("ImplementationTeam")[0].value = JSON.stringify(implementsteam);
        
    }
</script>

    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>
<script src="../UI/Style/jquery.min.js"></script>  

    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <%-- IdeaID Sender to BackEnd  --%>
     <script>
        function sendEmail()
        {
            $("#preloader").hide();

            GetTableValues();
            var ManagersNames = new Array();
            var ManagersEmail = new Array();
            var ManagersID = new Array();
            var values = "";
            $("input[name=managerName]").each(function () {
                values += $(this).val() + "\n";
                var str = $(this).val();
                var res = str.split("-");
                ManagersNames.push(res[0]);
            });
            $("input[name=managerEmail]").each(function () {
                values += $(this).val() + "\n";
                var str = $(this).val();
                var res = str.split(" ");
                ManagersEmail.push(res[0]);
                ManagersID.push(res[2]);
            });
            console.log(ManagersNames.toString(),  ManagersEmail.toString(), ManagersID.toString())
             var someSession = '<%= Session["UserName"].ToString() %>';
             var empid= '<%= Session["UserId"].ToString() %>';
             var Designation= 'HOS';
           
            var formData2 = new FormData();


        
            formData2.append("toAddress", ManagersEmail.toString());// toaddress.split(" ").join(""));
            formData2.append("toName",  ManagersNames.toString());//toName.split(" ").join(""));
            formData2.append("toId", ManagersID.toString());//toId.split(" ").join(""));
            //formData.append("toAddress",  document.getElementById('< % = mailidtext.ClientID %>').value); 
           // formData.append("toName",document.getElementById('< % = EmpNameTextBox.ClientID %>').value);
            //formData.append("toId", document.getElementById('< % = EmpIDTextBox.ClientID %>').value);
            formData2.append("subject", "Own Team implementation -"+document.getElementById('<% = txtMailSubject.ClientID %>').value);
            formData2.append("ideaID", document.getElementById('IdeaIdPopUpTag').innerHTML);
            formData2.append("content",document.getElementById('txtMailBody').value);
            formData2.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData2.append("resci", "Team");
            formData2.append("type", "New");
            formData2.append("subTitle", "Beneficiary Verification of Idea ");
            swal({
                title: "Suggestion",
                text: "S E N D I N G.......",
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
                       document.getElementById("<%=UpdateButton.ClientID %>").click();
 
                    },
                    error: function (err) {
                        console.log(err);
                           document.getElementById("<%=UpdateButton.ClientID %>").click();
                    }
                 }); 
        }
    </script>
    
    <script>
        function tableInputKeyPress(e) {
            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13 || key == 9) //Enter
            {

                var empId = $('#SendToUpText').val();

                
                $.ajax({
                    url: 'EmployeeTask.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",

                    success: function (data) {
                        
                        document.getElementById("ToNameUpMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                        $(".SendToTextBoxclass").val(data.d.empid);

                        //$(".SendToAppTextBox").val(data.d.empid);


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
                $("#rej").hide();
                
                $("#myModalComiteeEvaluation").on('hidden.bs.modal', function (e) {
                    console.log("modal");
                });
                $("[id*=RepeaterLinkButton]").click(function () {
                    var lbIdeaID = $(".lbIdeaIDClass").text();
                });
            });
        </script>
    <script type ="text/javascript">

        $('.neons').click(function () {
            //alert("clicked")
            
           var IdeaID = $(this).text();
           // alert(IdeaID);
            //var text = $('input[type=hidden]', $(this).("td").val();
            //console.log(text+"s.no")
            // alert("text"+text);
            
            document.getElementById("show").style.display = "block";
            $(document).scrollTop($(document).height());
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'HOSDashboard.aspx/getDetails',
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
                      //  document.getElementById("AllcommentsTag").innerHTML = "Show All Comments ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject; SSubjectTag
                        document.getElementById("STimeTag").innerHTML = data.d.SDate; 
                        document.getElementById("SContent").innerHTML = "     ---  Suggestion Description  --- ";
                        document.getElementById("SContentTag").innerHTML = data.d.SContent;
                        document.getElementById("SContentTag1").innerHTML = data.d.SResponse;
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("IdeaIdPopUpTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("CmtIdTag").innerHTML = data.d.cmtid;
                        
                        document.getElementById("SubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SMail").innerHTML = "MailID : ";
                        document.getElementById("SMailTag").innerHTML = data.d.MailID;
                        document.getElementById("SEmployeeNameTag").innerHTML = data.d.Sempname;
                        document.getElementById("SEmployeeIDTag").innerHTML = data.d.Sempid;
                        document.getElementById("SDepartmentTag").innerHTML = data.d.SDepartment;

                        document.getElementById("empID").value = data.d.Sempid;
                        document.getElementById("empMailID").value = data.d.MailID;
                        
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
                        document.getElementById("upl3Tag").innerHTML = " Implement FileUpload : ";
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
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2', 'imgAt2', 'fileAt2');
                        imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');
                       // imageAttachmenthandler(data.d.upload4, 'ContentPlaceHolder1_UpLoad4Tag', 'attachement4', 'imgAt4', 'fileAt4');
                        document.getElementById("impremarkTag").innerHTML = data.d.iremark;
                        document.getElementById("impremarkTag1").innerHTML = data.d.impid;
                        document.getElementById("impremarkTag2").innerHTML = data.d.implname;
                        document.getElementById("impremarkTag3").innerHTML = data.d.impdept;
                        document.getElementById("impremarkTag4").innerHTML = data.d.impmail;
                        document.getElementById("impremarkTag5").innerHTML = data.d.impdate;
                        document.getElementById("SEmployeeIDTagSUP").innerHTML = data.d.SUP_ID;
                        document.getElementById("SEmployeeNameTagSUP").innerHTML = data.d.SUP_Name;
                        document.getElementById("SMailTagSUP").innerHTML = data.d.SUP_MAIL;
                        document.getElementById("STimeTagSUP").innerHTML = data.d.SUP_DAte;
                        document.getElementById("SContentTagSUP").innerHTML = data.d.SUP_Remark;
                        document.getElementById("SDepartmentTagSUP").innerHTML = data.d.SUP_Dept;
                        if (st != "") {
                            
                       
                            document.getElementById("ReplyTag").innerHTML = " Implementation Team Information ";
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
                        var bbs = data.d.SResponse;
                        if (bbs != "") {

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

                        //document.getElementById("SendToUpText").innerHTML = data.d.SenderID;
                        //$(".ToUPTextBoxClass").val(data.d.SenderID);
                        //document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        //$(".ideaidclass").val(data.d.IdeaIdTag);
                        
                        document.getElementById("IdeaId1").value = data.d.IdeaIdTag;  
                        document.getElementById("recivedDate").value = data.d.SDate;
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);
                        $("[id*=txtMailSubject]").val(data.d.subject);

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
                AppendRow(row, $(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("ETo").text(), $(this).find("DepName").text(), $(this).find("Datedif").text(), $(this).find("score").text())
                row = $("[id*=gridImpleTeam] > tbody tr:last-child").clone(true);
                addTextWithoutTable($(this).find("sno").text(), $(this).find("ReceiverId").text(), $(this).find("EmployeeName").text(), $(this).find("ETo").text(), $(this).find("DepName").text(), $(this).find("Datedif").text(), $(this).find("score").text());
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
        function AppendRow(row, sno, ReceiverId, EmployeeName, ETo, DepName, Datedif, score) {

            $(".sno", row).find("p").html(sno);


            $(".ReceiverId", row).find("p").html(ReceiverId);

            $(".EmployeeName", row).find("p").html(EmployeeName);

            $(".ETo", row).find("p").html(ETo);

            $(".DepName", row).find("p").html(DepName);

            $(".Datedif", row).find("p").html(Datedif);

            $(".score", row).find("p").html(score);

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
        $(document).ready(function () {
            $("[id*=RepCheckRadioButtonList]").click(function () {
                
                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "InProgress")) {
                    $(this).prop("checked", true);
                    $('#rej').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {
                        console.log("Not Checked " + $('.fes').checked);
                        $('#rej').hide();

                    }
                }
                else if (textbox == "Complete") {

                    $('#rej').hide(); 
                }
              
              

            });
            
        });

        
        </script>

    <script>
        function tableKeyPress() {
            // alert('Keypress called');


            var IdeaID = document.getElementById("CmtIdTag").innerHTML;
            console.log(IdeaID);
            if (IdeaID != "" && IdeaID != null) {
                $.ajax({
                    url: 'EmployeeTask.aspx/CheckingUpdate',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(IdeaID) + '}',
                    dataType: "json",

                    success: function (data) {
                        document.getElementById("SendToUpText").innerHTML = data.d.Sempid;
                        $(".ToUPTextBoxClass").val(data.d.Sempid);
                        document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        
                        $(".ResponseTextBoxClass").val(data.d.Response);
                        var che = data.d.Reason;
                        var type = data.d.Type;
                        //var chek = $("#RepCheckRadioButtonList").val().toString;
                        if (type == "Accepted" )
                        {
                            //$('#RepCheckRadioButtonList').find(':radio[value="0"]').prop('checked', true);
                            
                           
                            $('#rej').hide();
                            $('.ReasonRejTextBoxClass').val("");
                            $('.ResponseTextBoxClass').val(data.d.Response);
                        }
                        else
                        {
                            
                            $('#rej').show();
                            $('.ReasonRejTextBoxClass').val(data.d.Reason);
                            $('.ResponseTextBoxClass').val(data.d.Response);
                            //$("input[name='< %=RepCheckRadioButtonList.UniqueID %>']:checked").val("Rejected");
                            //$('#RepCheckRadioButtonList').find('input:radio[value="1"]').prop('checked', true);
                            
                           
                        }




                        //$(".SendToAppTextBox").val(data.d.empid);


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
            }
            else
            {
                console.log("Error Has Been Found");
            }
            return false; //return true to submit, false to do nothing

        }
        
    </script>
     <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
     <script type="text/javascript">

         function checkValuesofSelect() {
              
             var table = document.getElementById("gridImpleTeam");
             let inputdataInput = 0;
             let inputdataSelect = 0;
             //Loop through Table Rows.
             for (var i = 1; i < table.rows.length; i++) {
                 //Reference the Table Row.
                 var row = table.rows[i];
                 var currentRow = $(row).closest("tr"); 
               
                 inputdataSelect += currentRow.find("p:eq(5)").val();
             }

             console.log(inputdataInput, inputdataSelect)
            
         }

         $(function () {
             var total = 0;
             var changetotal = 0;
             
             $("[id*=scr]").change(function () {

                 var table = document.getElementById("gridImpleTeam");
                 let inputdataInput = 0;
                 let inputdataSelect = 0;
 
                 for (var i = 1; i < table.rows.length; i++) {
                     //Reference the Table Row.
                     var row = table.rows[i];
                     var currentRow = $(row).closest("tr");

                     inputdataSelect += parseInt(currentRow.find("p:eq(5)").val());
                 }
                         //total += parseInt($("[id*=scr]").val());
                         //total += parseInt($(this).val());
                         //console.log(total);

                         //checkValuesofSelect();
                 console.log(inputdataSelect)
                         if (inputdataSelect
                             > 100) {
                         alert("No numbers above 100%");
                        
                     }
                 });
             });
             
             
         
   </script>
    <script type="text/javascript">
        $(document).ready(function () {
            document.getElementById("ApproveButton").hidden = "";
            //document.getElementById("ApproveButton").hidden = "hidden";

            $("[id*=hideassign]").click(function () {
               
                document.getElementById("ApproveButton").hidden = "hidden";
            })
            $("[id*=hideResend]").click(function () {

                document.getElementById("ApproveButton").hidden = "hidden";
            })
            $("[id*=hidenew]").click(function () {

               document.getElementById("ApproveButton").hidden = "";
            })
            $("[id*=hideResendHR]").click(function () {

                document.getElementById("ApproveButton").hidden = "";
            })
        })
    </script>
     <%-- <script type ="text/javascript">
          $('.neons').click(function () {

              var IdeaID = $(this).text();
             

             
              console.log("checking");
      
              
                  console.log("IDea ID: " + IdeaID);
                //  alert("works")
                  $.ajax({
                      url: 'HOSDashboard.aspx/getcommentsdetails',
                      method: 'post',
                      contentType: "application/json; charset=utf-8",
                      async: true,
                      dataFilter: function (data) { return data; },
                      data: '{idea:' + IdeaID + '}',
                      dataType: "json",

                      success: function (data) {
                         // console.log(lbl_dbmemp);
                          document.getElementById("lbl_dbmemp").style.color = "blue";
                          document.getElementById("lbl_com").style.color = "blue";
                          document.getElementById("lbl_dbmman").style.color = "blue";
                          document.getElementById("lbl_man").style.color = "blue";
                          document.getElementById("lbl_impl").style.color = "blue";
                          document.getElementById("lbl_hod").style.color = "blue";
                          document.getElementById("lbl_ben").style.color = "blue";
                          document.getElementById("lbl_finemp").style.color = "blue";
                          document.getElementById("lbl_finimpl").style.color = "blue";

                          document.getElementById("lbl_dbmemp").innerHTML ="<mark>Suggesstion Comment:</mark>"+ data.d.lbl_dbmemp;
                          document.getElementById("lbl_com").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_com;
                          document.getElementById("lbl_dbmman").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_dbmman;
                          document.getElementById("lbl_man").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_man;
                          document.getElementById("lbl_impl").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_impl;
                          document.getElementById("lbl_hod").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_hod;
                          document.getElementById("lbl_ben").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_ben;
                          document.getElementById("lbl_finemp").innerHTML = "<mark>Suggesstion Comment:</mark>" + data.d.lbl_finemp;
                          document.getElementById("lbl_finimpl").innerHTML = "<mark>Suggesstion Comment:</mark>"+ data.d.lbl_finimpl;
                      
                         
                       
                      },
                      error: function (err) {
                          alert('Error : ' + data); console.log(err);
                          tableInputKeyPress(e);
                      }
                  });

                  return false; //return true to submit, false to do nothing
              



          });


        
          
          </script>--%>
           <script>
               $(document).ready(function () {
                   $('#btn_call').click(function () {
                       alert("clicked");
                       $('#ideadiv_contents').toggle('slow', function () {
                           // Animation complete.
                       });
                   });
               });
               </script>
           <script>
        $(document).ready(function () {
            $("[id*=RadioButtonList1]").click(function () {

                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);

                if (textbox == " ") {
                    document.getElementById("Resend").style.display = "block";

                }
                if (textbox == "APPROVED") {
                    document.getElementById("Resend").style.display = "block";
                }

                else if (textbox == "RESEND") {
                    document.getElementById("Resend").style.display = "none";
                }
             

                

            });

        });


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
                    $(document).ready(function () {
                  
                        //var a = $("#gridImpleTeam").attr('rows').length;
                        //for (var i = 1; i < table.rows.length; i++) {

                        //    var row = table.rows[i];
                        //    alert(row);
                       // $('#gridImpleTeam tr:eq(1) td:eq(1)').html("Paid");
                        //$('table.gridview tr:nth-child(even)').html('varan');

                            //$('#gridImpleTeam td').eq(5).html('new content');
                        //$('#gridImpleTeam tr:nth-child(even) td:nth-child(3)').html('summaaaaa');

                            //gridview td:first-child:before
                            //$('table.gridview tr:even td:last').html('Value');
                        

                    });
               </script>

                                                  
    
</asp:Content>

