<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeTask.aspx.cs" Inherits="ProclainPIMSMaster.Form.EmployeeTask"   EnableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

 
       <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
            <link href="../UI/Style/select2.min.css" rel="stylesheet" />     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />


 
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
.table-bordered {
    border: 1px solid #3b4752;
}
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
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            max-width: 227px;
            margin-left: 667px;
            font-size: x-large;
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
#ContentPlaceHolder1_UpLoad2Tag:hover {opacity: 0.7;}

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
        
    </style>
      <link href="../UI/Style/all.css" rel="stylesheet" />
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
       <div class="row">
        <div class="col-lg-12 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                        <div class="layer w-100">
               
                        </div> 
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >
                                     <div class="container mt-3">
                                          <ul class="nav nav-tabs">
                                        <li class="nav-item" id="hidenew">
                                            <a class="nav-link active" data-toggle="tab" href="#new">Inbox  &nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                        <li class="nav-item" id="hideassign">
                                            <a class="nav-link snd" data-toggle="tab" href="#assigned">Send &nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li></ul>
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
                                                                   <h1> DATE
                                                                       </h1>
                                                                </th>
                                                                <th >
                                                                   <h1> Supervisor Name
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
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("SendFrom") %> ' />
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
                                                    <asp:Repeater ID="MailRepeaterreassign" runat="server">
                                   
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
                                                                   <h1> Implementer Name
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
                                                                <asp:Label ID="lblCustomerId" runat="server" Text='  <%# Eval("SendFrom") %> ' />
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
                                                runat="server">
                                                <ContentTemplate>


                                                  
                                                  <form>        
        <div class="form-group">   
            <lable ID="SubjectTaglabel"   ></lable>
            <mark class="form-control textalign "  id="SubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>                                                                                                  
        </div>
            <mark  id="SContent" class="fnt" style="color:red"></mark>
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
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl3Tag" class="fnt"></mark>
                                                                            </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt3">
                                                                                    </div>
                                                                                      <div id="fileAt3">
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
   
    <lable ID="SSubjectTaglabel"  ></lable>
     <mark class="form-control" id="SSubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="ent" class="fnt" style="color:red">---Supervisor Description----</mark>
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
<%--RESEND by Manger--%>
<form id="Man_form" style="display:none"> 
    <div class="jumbotron">
  <div class="form-group" id="man_dis" >
   
    <lable ID="SSubjectTaglabel1"  ></lable>
     <mark class="form-control" id="SSubjectTag1" style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
                                                        
  </div>
      <mark  id="ent1" class="fnt" style="color:red">---Manager Description----</mark>
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
  <mark  id="SMail1" class="col-sm-2 fnt"></mark>
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
//img2.onclick = function () {
//    modal.style.display = "block";
//    modalImg.src = this.src;
    
//}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
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


                                                </ContentTemplate>


                                            </asp:UpdatePanel>
 
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
                                    </div>
                                     <input id="ApproveButton" class="form-control apopbtn btn btn-primary " style="width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalImpIdeaForm"/>
            
                                </div>
                            </div>
                           
                        </div>
             
                
                 </div>
              </div>
             
        </div>

        <div class=" col-lg-0">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">
             <%--<div class="row">--%>
                 
             <%--</div>
             <div class="row">--%>
                 <input id="RejectedButton" class="form-control btns" style="height:33%;width:100%;color:white" type="button" value="Reject" data-toggle="modal" data-target="#myModalUpdate" hidden/>

             <%--</div>--%>
             <input id="UpdatePopButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#myModalUpdate" onclick = "tableKeyPress()" hidden/>                 
              </div>             
        </div>
          </div>
    
    

     

     <div class="container">
        <div class="modal fade bd-example-modal-lg" id="myModalImpIdeaForm" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Update</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >                              
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox"  CssClass="form-control inp IMPIdeaIdClass" Style="pointer-events: none;"  placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>
                                         <label id="task1" class="hiddendiv" style="color:red">Idea ID Missing</label>
                                    </div>

                                </div>
                                <asp:TextBox ID="manageremailid" CssClass="form-control inp manageremailid" runat="server" hidden></asp:TextBox>

                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="ID " Style="pointer-events: none;"  runat="server" ></asp:TextBox>

                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp" placeholder="ID " runat="server" ClientIDMode="Static" Visible="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID"  Style="pointer-events: none;"  runat="server"></asp:TextBox>
                                    <asp:TextBox ID="DupMailIdIMPTextBox" CssClass="form-control inp" placeholder="To: " runat="server" ClientIDMode="Static" Visible="false" ></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp subjecttext" placeholder="Mail Subject"  Style="pointer-events: none;"    runat="server"></asp:TextBox><%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ValidationGroup="send" Style="color:red" ErrorMessage="*" ControlToValidate="SubjectIMPTextBox"></asp:RegularExpressionValidator>--%>
                                     <label id="task2" class="hiddendiv" style="color:red">Enter the SUbjectMail</label>
                                </div>
                                <div class="form-group">
                                    <label>Remarks</label>
                                    <asp:TextBox ID="ContectIMPTextBox" CssClass="form-control inp" runat="server" placeholder="Enter the Remark"   TextMode="MultiLine" Rows="10"></asp:TextBox><%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ValidationGroup="send" Style="color:red" ErrorMessage="*" ControlToValidate="ContectIMPTextBox"></asp:RegularExpressionValidator>--%>
                                    <label id="task3" class="hiddendiv" style="color:red">Enter the Remark</label>
                                </div>
                                 <div class="form-group">
                                     <div class="row">
                                         <div class="col-md-2"></div>
                                         <div class="col-md-8">
                                             <asp:FileUpload ID="ImageFileUpload3" CssClass="form-control" runat="server" />
                                         </div>
                                         <div class="col-md-2"></div>
                                     </div>
                                     
                                 </div>
                                <div align="center" style="display: none; padding-left: 20px;" id="diverror">
                                    <span id="spn_error" style="font-size: 14px; color: Red; font-family: Arial;"></span>
                                </div>
 
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                      
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary"   ValidationGroup="send" Text="Send"  style="display:none;"  OnClick="ManagerButton_Click"  />
                        <input type="button" class="form-control apopbtn btn-primary"  " value="Send" onclick="sendEmail();"/>    <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
              <%--OnClick="TeamPopButton_Click"--%>
                   
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
       $(".snd").click(function () {
           $("#ApproveButton").hide();
       });
       
   </script>
    <script>
        function sendEmail() {
            document.getElementById('task1').className = 'hiddendiv';
            document.getElementById('task2').className = 'hiddendiv';
            document.getElementById('task3').className = 'hiddendiv';

            var task1 = $("[id*=IMPIdeaIdTextBox]").val();
            var task2 = $("[id*=SubjectIMPTextBox]").val();
            var task3 = $("[id*=ContectIMPTextBox]").val();


            if (task1 == "" || task1 == null) {
                document.getElementById('task1').className = 'visiblediv';
            }
            else if (task2 == "" || task2 == null) {
                document.getElementById('task2').className = 'visiblediv';
            }
            else if (task3 == "" || task3 == null) {
                document.getElementById('task3').className = 'visiblediv';
            }
            else {
                $("#preloader").hide();
                var someSession = '<%= Session["UserName"].ToString() %>';
                var empid = '<%= Session["UserId"].ToString() %>';
                //var Designation= ' < %= Session["Designation"].ToString() %>';

                var formData = new FormData();
                var toaddress = document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
                var toName = document.getElementById('<% = TOIMPTextBox.ClientID %>').value;
                var toId = document.getElementById('<% = EmpIDIMPTextBox.ClientID %>').value;
                var manemailid = document.getElementById('<% = manageremailid.ClientID %>').value;
                var formData = new FormData();
                formData.append("toAddress", toaddress.split(" ").join(""));
                formData.append("toName", toName.split(" ").join(""));
                formData.append("toId", toId.split(" ").join(""));
                formData.append("toCCId", manemailid.split(" ").join(""));

                formData.append("subject", "HOS verification -" + document.getElementById('<% = SubjectIMPTextBox.ClientID %>').value);
                formData.append("ideaID", document.getElementById('<% = IMPIdeaIdTextBox.ClientID %>').value);
                formData.append("content", document.getElementById('<% = ContectIMPTextBox.ClientID %>').value);
                formData.append("sender", someSession + ",<br/>" + empid);


                formData.append("resci", "Team");
                formData.append("type", "New");
                formData.append("subTitle", "HOS verification after idea implementation");
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
                formData.forEach(function (value, key) {
                    object[key] = value;
                });
                var json = JSON.stringify(object);
                $.ajax({
                    //   url: 'http://localhost:90/PIMS_emailPHP/email/send_mail.php',
                    //url: 'http://10.14.0.150:90/PIMS_emailPHP/email/send_mail.php',
                    url: 'http://10.14.0.40/WebEmail/api/Email/pimsEmailCC',
                    //url:'http://localhost/EmailApi/api/Email/pimsEmail',pimsEmailCC
                    type: 'POST',
                    cache: false,
                    contentType: 'application/json',
                    processData: false,
                    data: json,//formData,  

                    success: function (data) {
                        console.log(data);
                        document.getElementById("<%=ManagerButton.ClientID %>").click();
                        //  document.getElementById("Submit").click();
                    },
                    error: function (err) {
                        console.log(err);
                        document.getElementById("<%=ManagerButton.ClientID %>").click(); // document.getElementById("Submit").click();
                    }
                });

            }
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

            console.log(IdeaID);
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'EmployeeTask.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data1) { return data1; },
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
                        document.getElementById("SContentTag1").innerHTML = data.d.SReason;
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
                      //  document.getElementById("IdeaIdPopUpTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("CmtIdTag").innerHTML = data.d.cmtid;
                        
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
                        //document.getElementById("upl3Tag").innerHTML = "FileUpload3 : ";
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
                        <%-- imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');--%>
                        var bbs = data.d.SReason;
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
                        if (bbs != "") {

                            document.getElementById("Man_form").style.display = "block";
                            document.getElementById("remark_mam").innerHTML = "Remark :";
                            document.getElementById("remark_mam").innerHTML = "Remark :";
                            document.getElementById("SfromTag1").innerHTML = "Managr Name: ";
                            document.getElementById("SEIDTag1").innerHTML = "Managr ID : ";
                            document.getElementById("SMail1").innerHTML = "MailID : ";
                            document.getElementById("SDepTag1").innerHTML = "Department : "; 
                            document.getElementById("SSubjectTag1").innerHTML = data.d.subject;
                            document.getElementById("SEmployeeNameTag1").innerHTML = data.d.IEmpName1;
                            document.getElementById("SEmployeeIDTag1").innerHTML = data.d.IEmpId1;
                            document.getElementById("SDepartmentTag1").innerHTML = data.d.IDepID1;
                            document.getElementById("SMailTag1").innerHTML = data.d.Reason1;
                        }
                        else
                        {
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
                        $(".SendToTextBoxclass").val(data.d.empid);
                        console.log("////////////////CALLED FUNCTION");
                        getHOD_emailDetails(data.d.IdeaIdTag);
                      
                       

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                      
                        //$('#fromTag').html("From :");
                        //$('#SubjectTagLabel').html(data.d.subject);


                    },
                    error: function (err) {
                        alert('Error : '+err); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });

        function getHOD_emailDetails(IdeaIdTag)
        {
            
         
             $.ajax({
                                url: 'EmployeeTask.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{idea:' + JSON.stringify(IdeaIdTag) + '}',
                                dataType: "json",
                               
                                success: function (data) {
                                    console.log(data);
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                                    
                            
                                    var fxs = "";
                                    var fzs = "";
                                    fs = data.d.Email;
                                    feids = data.d.HEmployeeID;
                                    var EIDs = $(".IMPEmpIDTextBoxClass").val().toString();
                                    var zs = $(".IMPmailidtextClass").val().toString();
                                    
                                    if (zs == "") {
                                        fxs = zs + " " + fs;
                                        fzs = EIDs + "" + feids;
                                    }
                                    else {
                                       // console.log("Textbox" + txts);
                                        fxs = zs + ',' + " " + fs;
                                        fzs = EIDs + ',' + "" + feids;

                                    }
                                    $(".IMPmailidtextClass").val(fxs);
                                    $(".IMPEmpIDTextBoxClass").val(fzs);
                                    $(".IMPToTextBoxClass").val(data.d.HEmployeeName);
                                    $(".manageremailid").val(data.d.CCMail);
                                    

                        },
                        error: function (err) {
                            alert('Error : ' + data); console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
        }
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
                        if (type == "Complete" )
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
                            //$("input[name='']:checked").val("Rejected");
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
    <script type="text/javascript">
        //function validate_sub() {
            
        //}
        //function validate_cmt() {

        //}
        function validate() {
            
            var subject = $('#SubjectIMPTextBox').val();
            var comment = $('#ContectIMPTextBox').val();
            if (subject == null || subject == "") {
                
                alert('Please Enter subject box');
                console.log("enter");
                $('#myModalImpIdeaForm').show();
                return false;
            }
           
            else if (comment == null || comment == "") {
                
                alert('Please Enter Remark/Comments');
                console.log("enter");
                $('#myModalImpIdeaForm').show();
                return false;
            }
            else {
                $('#diverror').hide();
                return true;
            }
            
        }
    </script>
    <%--<script type="text/javascript">
        // $(".js-example").select2();
        $(document).ready(function () {
            $("#SubjectIMPTextBox").keyup(function () {
                $("#diverror").hide();
                var subject = $('#SubjectIMPTextBox').val();
                if (subject == null || subject == "") {
                    //$('#ddl_partno').focus();
                    alert('Please Enter subject box');
                    return false;
                }
                else {
                    $('#diverror').hide();
                    return true;
                }
                 
            });
            $("#ContectIMPTextBox").keyup(function () {
                var comment = $('#ContectIMPTextBox').val();
                if (comment == null || comment == "") {
                    //$('#ddl_partno').focus();
                    alert('Please Enter Remark/Comments');
                    return false;
                }
                else {
                    $('#diverror').hide();

                }

            });
        })
         </script>--%>

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

</asp:Content>
