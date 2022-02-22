<%@ Page Title="" Language="C#" MasterPageFile="~/BeneficiaryApproval.Master" AutoEventWireup="true" CodeBehind="Beneficiaryapprovalbulkprocess.aspx.cs" Inherits="ProclainPIMSMaster.Form.Beneficiaryapprovalbulkprocess" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

      <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/jqueryui.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
    <script src="../UI/Script/jquery-ui.js"></script>
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />  
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/Script/jquery.filtertable.min.js"></script>
     <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
        <link href="../UI/Style/sweetalert.min.js" rel="stylesheet"/> 


 
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

        .reps:hover {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }
        .btn {
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
            background: linear-gradient(-68deg, #3618dc, #2b2f5d) !important;
            margin: 10px;
            color: #ffffff !important;
        }
        .fnt .mark, mark {
            background-color: #f0f3f500!important;
        }
        #tblEmployees{
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
            width:100%;
        }
         #tblEmployees td {
                color: #232121;
            }

            #tblEmployees th {
                color: #000 !important;
                background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
                /*background-color: lightgrey;*/
            }
            #tblEmployees th tr {
            background-color: none !important;
            background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
        }
            .grossamtempbtn{
                
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
            }
            .grossimpamtbtn{
                
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
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
      
        
    </style>
     
    <script>
        $("[id*=DepartmentDDListEmp]").change(function () {
            var table = $('.noticedtemp');
            var txts = $(this).children("option:selected").text().toString();

            //table.destroy();

            table.column(3).search(txts).draw();
        });
        $("[id*=DepartmentDDListImp]").change(function () {
            var table = $('.noticedtimp');
            var txts = $(this).children("option:selected").text().toString();

            //table.destroy();

            table.column(3).search(txts).draw();
        });
    </script>
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridViewEmp.ClientID %>').DataTable();
        });
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="peer fxw-nw bdB cur-p jumbotron" >
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"><asp:LinkButton ID="refresh" runat="server" OnClick="refresh_Click" ><U>Refresh</U></asp:LinkButton></div>
        </div>
         <div class="container mt-3" style="width:100%;height:100%;">

                  <ul class="nav nav-tabs" >
                        <li class="nav-item" id="User" style="width:50%; font-size:100%;  padding-left:2%;">
                            <a class="nav-link active" data-toggle="tab" href="#new" style="font-weight:bold ;text-align:center;">Accepted Ideas  <%--&nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                        <li class="nav-item" id="Implement" style="width:50%; font-size:100%;padding-right:2%; ">
                            <a class="nav-link" data-toggle="tab" href="#assigned" style="font-weight:bold ;text-align:center;"> Implemented Ideas  <%--&nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                  </ul>
<div class="tab-content">
     <div id="new" class="container tab-pane active">
          <div class="row">        
               <div class=" col-md-12 ">
                    <div class="bd bgc-white p-20 cardintab reps">
                         <div class="layers">
                              <div class="table100 ver6 m-b-110 table-responsive">
                              <div class="form-control reps  " style="border: none!important;">
                                <%--<div class="row">
                                    <a data-toggle="modal" href="#myModal" class="form-control btn-primary"style="width:100%;text-align:center;">Get Report</a>
                                </div>--%>
                                 <div class="row"style="width:100%;">
                                   
                                    
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">StartDate:</div>
                                        <div class="col-md-8"><input type="date"  class="form-control" name="minemp" id="minemp"  />
                                            <asp:Label ID="dtfromemp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                    <%--<asp:textbox runat="server" CssClass="form-control" name="min" id="minemp" placeholder="StartDate"  />--%>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">EndDate:</div>
                                        <div class="col-md-8"><input type="date"  class="form-control" name="maxemp" id="maxemp"  />
                                            <asp:Label ID="dttoemp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                        <%--<asp:textbox runat="server" CssClass="form-control" name="max" id="maxemp" placeholder="EndDate"  />--%>

                                    </div>
                                    <div class="col-md-4">
                                        <asp:Button ID="GetReportEmp" runat="server" Text="GetFilterReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetReportEmp_Click" />
                                        
                                        
                                    </div>
                                </div>
                            </div>
                              <asp:GridView ID="SuggestionGridViewEmp"  runat="server" AutoGenerateColumns=false class="table table-striped">
      <Columns>
        <asp:TemplateField HeaderText="S.No" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label1" Text="<%#Container.DataItemIndex+1 %>" ToolTip="S.NO" Width="40px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="IdeaID" >
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label2" Text="<%#Bind('IDeaID')%>" ToolTip="IdeaID" Width="100px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Employee" >
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label3" Text="<%#Bind('Employee')%>" ToolTip="Employee" Width="100px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label4" Text="<%#Bind('DepName')%>" ToolTip="Department" Width="100px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>
          
          <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label5" Text="<%#Bind('Date')%>" ToolTip="Date" Width="140px"></asp:Label>
                    </ItemTemplate>


          </asp:TemplateField>

           <asp:TemplateField HeaderText="Amount">
                    <ItemTemplate>
                    <asp:TextBox runat="server" ID="grossamtemp" Text="<%#Bind('Amount')%>" CssClass="form-control clsTxtToCalculateemp" onkeyup="onEnter()"></asp:TextBox> <!--return isNumber(event);-->
                    </ItemTemplate>


               

          </asp:TemplateField >

          <%-- <asp:TemplateField HeaderText="Action">
                  <ItemTemplate>
                        <i  id="action" class="fa fa-eye" aria-hidden="true" style="background: none; align: right;width:25px; height:25px;cursor:pointer;font-size: x-large;color: #1819199c;"    data-toggle="modal" data-target="#myModalemp"></i>
                   </ItemTemplate> 


               

          </asp:TemplateField--%>
      
       </Columns>


    </asp:GridView>
                                       
                                
                              </div>
                              <div class="row" style="width:100%">
                                      <div class="col-md-3">
                                          <asp:Button ID="GetExcelReportEmp" runat="server" Text="GetExcelReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetExcelReportEmp_Click"  />
                                      </div>
                                      <div class="col-md-3"></div>
                                      <div class="col-md-3"><h2>GROSS TOTAL</h2></div>
                                      <div class="col-md-3" >
                                         <h1> <asp:label ID="grossempamt" runat="server"></asp:label></h1>
                                      </div>
                                  </div>
                              
                          </div>
                    
                        <div class="row"style="width:100%">
                      <div class="col-md-2"></div>
                        <div class="col-md-8" >
                       <asp:Button ID="grossamtempbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-size:large;font-weight:bold;" OnClick="grossamtempbtn_Click"  /> <br />
                       </div>
                        <div class="col-md-2"></div>
                       <%--<input type="button" runat="server" style="width:100%" class="btn btn-primary" value="Send" />--%>

                  </div>
                         </div>

                            <!-- ====================
                                    #Todo End
                                 ==================== -->
                   
              </div>
                  
                       
            </div>
         
         <script>
             //document.getElementsByClassName("fa fa-eye").addEventListener("click", displayDate);
             //function displayDate() {
             //    swal("success")
             //}
             function showdetails() {
                 swal({
                     title: 'Are you sure?',
                     text: "You won't be able to revert this!",
                     icon: 'warning',
                     showCancelButton: true,
                     confirmButtonColor: '#3085d6',
                     cancelButtonColor: '#d33',
                     confirmButtonText: 'Yes, delete it!'
                 })

             }
             
           
             </script>
        <script type="text/javascript">
            setInterval(function () {
                 $(".clsTxtToCalculateemp").each(function () {
                
               // console.log('using timer');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
              // console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });

            }, 5000)
        $(document).ready(function () {
            //Iterate through each Textbox and add keyup event handler
            $(".clsTxtToCalculateemp").each(function () {
                
              //  console.log('ob load');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
             //  console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });
        });
            function onEnter()
            {
                console.log('inside on enter');
                $(".clsTxtToCalculateemp").each(function () {
                
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
                    console.log(total,'aftern cao');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });}
    </script>
      
        </div>




<div id="assigned" class="container tab-pane ">
     <div class="row">        
          <div class=" col-md-12 ">
               <div class="bd bgc-white p-20 cardintab reps">
                    <div class="layers">
                         <div class="table100 ver6 m-b-110 table-responsive">
                              <div class="form-control reps  " style="border: none!important;">
                                <%--<div class="row">
                                    <a data-toggle="modal" href="#myModal" class="form-control btn-primary"style="width:100%;text-align:center;">Get Report</a>
                                </div>--%>
                               <div class="row" style="width:100%;">
                                   
                                    
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">StartDate:</div>
                                        <div class="col-md-8"><input type="date"  class="form-control" name="minimp" id="minimp"  />
                                            <asp:Label ID="dtfromimp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                    <%--<asp:textbox runat="server" CssClass="form-control" name="min" id="minemp" placeholder="StartDate"  />--%>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">EndDate:</div>
                                        <div class="col-md-8"><input type="date"  class="form-control" name="maximp" id="maximp"  />
                                            <asp:Label ID="dttoimp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                        <%--<asp:textbox runat="server" CssClass="form-control" name="max" id="maxemp" placeholder="EndDate"  />--%>

                                    </div>
                                    <div class="col-md-4">
                                        <asp:Button ID="GetReportImp" runat="server" Text="GetFilterReport" CssClass="form-control reps btn btn-primary" style="width:100%;color:black" OnClick="GetReportImp_Click" />
                                         
                                        
                                    </div>
                                </div>
                              </div> 
                              <asp:GridView ID="SuggestionGridViewImp" runat="server" AutoGenerateColumns=false class="table table-striped"  AutoGenerateSelectButton="false">
                              <Columns>
                                <asp:TemplateField HeaderText="S.No" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label1" Text="<%#Container.DataItemIndex+1 %>" ToolTip="S.NO" Width="40px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>
                                    <asp:TemplateField HeaderText="IdeaID" >
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label_ideaid" Class="IdeaId" Text="<%#Bind('IDeaID')%>" ToolTip="IdeaID" Width="100px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Members" >
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label3" Text="<%#Bind('IMPL_Members')%>" Class="Members" ToolTip="Members" Width="100px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Department">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label4" Text="<%#Bind('DepName')%>"  Class="Department" ToolTip="Department" Width="100px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>
          
                                  <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label5" Text="<%#Bind('Date')%>"  Class="Date" ToolTip="Date" Width="140px"></asp:Label>
                                            </ItemTemplate>


                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Grade">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label6" Text="<%#Bind('Grade')%>" Class="Grade" ToolTip="Date" Width="140px"></asp:Label>
                                            </ItemTemplate>


                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Amount">
                                            <ItemTemplate>
                                            <asp:TextBox runat="server" ID="grossamtimp" Text="<%#Bind('Amount')%>" CssClass="form-control clsTxtToCalculateimp" onkeypress="return isNumber(event)" ></asp:TextBox>
                                            </ItemTemplate>


                                  </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                      <ItemTemplate>
                                            <%--<asp:Button ID="Button1" CssClass="action" runat="server" Text="Button"  />--%>
 
                                           <i  id="action" class="fa fa-eye action" aria-hidden="true" style="background: none; align: right;width:25px; height:25px;cursor:pointer;font-size: x-large;color: #1819199c;" data-dismiss="modal" data-toggle="modal" data-target="#myModaleview"  ></i>
                                          <%--<asp:LinkButton ID="action" runat="server" Text="Select"   />--%>

                                       </ItemTemplate> 


               

          </asp:TemplateField>
                               </Columns>


                            </asp:GridView>
                                        


                           
                        </div>
                        <div class="row" style="width:100%">
                            <div class="col-md-3">
                                <asp:Button ID="GetExcelReportImp" runat="server" Text="GetExcelReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetExcelReportImp_Click"  />
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3" ><h2>GROSS TOTAL</h2></div>
                            <div class="col-md-3" >
                                <h1><asp:label ID="grossimpamt" runat="server"></asp:label></h1>
                            </div>
                        </div>
                       
                        
                                  
                    </div>
                   <div class="row"style="width:100%">
             <div class="col-md-2"></div>
             <div class="col-md-8" >
                 <%--<asp:label ID="grossimpamtbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-size:large;font-weight:bold;"></asp:label>--%>
              <asp:label ID="Label7" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-size:large;font-weight:bold;"></asp:label>
             </div>
             <div class="col-md-2"></div>
              <%--<input type="button"  style="width:100%;" class=" form-control btn btn-primary" value="Send to Finance" OnClick="grossimpamtbtn_Click"  />--%>

         </div>
               </div>
               
          </div>
         
     </div>
    <script>
        $(document).ready(function () {
            $("#grossimpamtbtn").click(function () {
                console.log("clicked the finance btn");
                //alert("success");
                //swal({
                //    text: "Successfully send to Finance",
                //    icon: "success",
                //    timer:3000

                //});
            });
        });

        </script>
    <script type="text/javascript">
            setInterval(function () {
                $(".clsTxtToCalculateimp").each(function () {
                
                console.log('using timer');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });

            }, 5000)
        $(document).ready(function () {
            //Iterate through each Textbox and add keyup event handler
            $(".clsTxtToCalculateimp").each(function () {
                
                console.log('ob load');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });
        });
            function onEnter()
            {
                console.log('inside on enter');
                $(".clsTxtToCalculateimp").each(function () {
                
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
                    console.log(total,'aftern cao');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });}
    </script>
                      
                      <%--<script >


                          $(document).ready(function () {

                              $('#<%= minimp.ClientID %>').datepicker();
                              $('#<%= maximp.ClientID %>').datepicker();

                            
                        });
                    </script>--%>
                     
</div>
             </div>
         </div>
    </div>

     <div class="container">
        <div class="modal fade" id="myModalemp" role="dialog">
            <div class="modal-dialog modal-lg" >

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">HR EVALUVATION POPUP</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                
                                <div class="send-header">
                                    <div class="form-group">
                                        <div class="row">
                                            
                                            <div class="col-sm-3"><label>Idea ID:</label>
                                                </div>
                                            <div class="col-sm-3">
                                                  <mark id="IdeaIdPopUpTag" style="color: red; margin-left: -100px;"></mark>
                                                <label id = "GFG" hidden></label>
                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                                
                                                 <input id="empID" name="empID" class="form-control" hidden/>
                                                 <input id="empMailID" name="empMailID" class="form-control" hidden/>
                                                  <input id="recivedDate" name="recivedDate" class="form-control" hidden/>
                                              
                                            </div>
                                         </div>
                                        <br/>
                                  <asp:RadioButtonList runat="server"  ID ="RadioButtonList_resend"  RepeatDirection="Horizontal" RepeatColumns="3" >
                                 <%--   <asp:ListItem  Value="NOTFEASIBLE"> NOT FEASIBLE</asp:ListItem>--%>
                                    <asp:ListItem Value="RESEND"> RESEND</asp:ListItem>
                                     <asp:ListItem  Value="APPROVED">APPROVED</asp:ListItem>
                                </asp:RadioButtonList>
                                        <%--<div id="resend_view" style="display:none" >
                                         <h6 class="c-grey-900 mB-20">RESEND :</h6>
                                            <div  style="padding-inline-start:65px">
                                           <asp:RadioButtonList runat="server"  ID ="RadioButtonList1"   >
                                            <asp:ListItem Value="HOD"> HOD</asp:ListItem>--%>
                                      <%--      <asp:ListItem value="MANAGER"> MANAGER</asp:ListItem>--%>
                                           <%--</asp:RadioButtonList>
                                                </div--%>
                                           

                                     <hr />    

                                          <div class="row" id="Notfeasible_hide">
                                            <div class="col-sm-2">
                                                Subject
                                                </div>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtMailSubject" class="form-control  inp SendToTextBoxclass" name="txtMailSubject"  runat="server"></asp:TextBox>
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
                                            </div>
                                            </div>

                                    </div>
                    </div>
                                </div>
                        <div class="modal-footer">
                                 <asp:Button ID="DBMButton" runat="server"   Text="Send" CssClass="form-control apopbtn btn-primary"   OnClick="send_Click" />
                       
                        </div>
                            </div>
                        
                    
                    


                </div>
                    
            </div>
        </div>
    </div>

    
     
        
                         <div class=" col-lg-12 reps" id="show"  style="display:none" >
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
                                                                                        <img class="modal-content" id="img01">
                                                                                        <div id="caption"></div>
                                                                                    </div>
                                                                            </div>

                                                            <div class="row">
                                                                <%--<div class="col-md-4" style="padding-top:25px">ManagerUpload:</div>
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
                                                                            </div>--%>
                                                                <div class="col-md-4"></div>
                                                                </div>

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

                                                                                                               <form>        
        <div class="form-group">   
            <lable ID="SSubjectTaglabel"  ></lable>
            <mark class="form-control" id="SSubjectTagSU style="text-align: left; text-transform: uppercase; font-size: 30px; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px; text-align: center;border: ridge; color: black;"></mark>   
      </div>
            <mark  id="Sent" class="fnt" style="color:red">---HOD Description--</mark>     
        <div class="form-group row">
            <mark id="agSU" class="fnt col-sm-2">From :</mark>
       <div class="col-sm-10">
              <mark id="SEmployeeNameTagSU"></mark>
       </div>
      </div> 
      <div class="form-group row">
            <mark id="TagSU" class="fnt col-sm-2">EmployeeID :</mark>
       <div class="col-sm-10">
             <mark id="SEmployeeIDTagSU"></mark>
       </div>
      </div>
      <div class="form-group row">
           <mark  id="agSU" class="fnt col-sm-2">Department :</mark>
       <div class="col-sm-10">
             <mark id="SDepartmentTagSU"></mark>
       </div>
      </div>
      <div class="form-group row">
             <mark  id="ilSU" class="fnt col-sm-2">Mail ID:</mark>
       <div class="col-sm-10">
              <mark id="SMailTagSU"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="SMSU" class="fnt col-sm-2">Date :</mark>
       <div class="col-sm-10">
              <mark id="STimeTagSU"></mark>
       </div>
      </div> 
       <div class="form-group row">
             <mark  id="SSU" class="fnt col-sm-2">Remarks :</mark>
       <div class="col-sm-10">
              <mark id="SContentTagSU"></mark> 
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

                                                                   
 <%--                                                                                                           
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

 --%>                                      <%-- <input type="button" onclick="removeDiv()" value="text" /> --%>
                                                                     
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
               
                                        <input id="ApproveButton" class="form-control btns" style="height:50%;width:auto;color:white;    margin-left: 63rem; margin-block: 10px;" type="button" value="Response" data-toggle="modal" data-target="#myModalemp"/>

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
                
     
                      
    
    
                            

    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 
                    
                
            <!-- =============================================
                 ### $App Screen Content Child Content End ###
                 ============================================= -->


    <%--<script>
        $(document).ready(function () {

            var table = $('.noticedt').DataTable();
           
            table.column(0).search(DepName).draw();
        });
    </script>--%>
    <script>
        function showModal() {
            alert("hit");
            //$("#myModaleview").on('hidden.bs.modal', () => $("#myModalemp").modal('show'))
            $("#myModaleview").modal('hide');
            $("#myModalemp").modal()
            $("#myModalemp").modal('show');
        }
        </script>

     <script>
     
             $("[id*=RadioButtonList_resend]").click(function () {
                 

                 var textbox = "" + $(this).val().toString();
                 console.log('first:' + textbox);

             //    if ((textbox == "RESEND")) {
             //        $(this).prop("checked", true);
             //        alert("sssss")
             //        $('#Notfeasible_hide').hide();
                 //}
                 if (textbox ==" ")
                 {
                     document.getElementById("resend_view").style.display = "none";

                 }
                 if (textbox == "APPROVED")
                 {
                     document.getElementById("resend_view").style.display = "none";
                 }
               
                else if (textbox =="RESEND") {
                    document.getElementById("resend_view").style.display = "block";
                }
          
            });
       
    </script>
    <script>
        //$(".action").click(function () {

        //    var somthing = $(this).closest("tr")[0].row;
        //    alert(somthing);
        //    //$("#Label7").html(row.find('td').eq(0).html());
        //    //var ds = (row.find('td').eq(0).html());
        //    //alert("inn"+ds);
            

        //});
     
        </script>
    <script type="text/javascript">
    
        $(document).on("click", "[id*=action]", function () {
            var implementsteam = new Array();
            var implement = {};
            implement.IdeaId = $(".IdeaId", $(this).closest("tr")).html();
            implement.Employee = $(".Members", $(this).closest("tr")).html();
            implement.Dept = $(".Department", $(this).closest("tr")).html();
            implement.Date = $(".Date", $(this).closest("tr")).html();
            implement.grade = $(".Grade", $(this).closest("tr")).html();
            implement.score = $(".clsTxtToCalculateimp", $(this).closest("tr")).val();
            implementsteam.push(implement);
           
        
       
          
        console.log("........................................................."+JSON.stringify(implementsteam));
        //Convert the JSON object to string and assign to Hidden Field.
        document.getElementsByName("ImplementationTeam")[0].value = JSON.stringify(implementsteam);

           var a= $(".IdeaId", $(this).closest("tr")).html()
           var b = $("#IdeaIdPopUpTag").html($(".IdeaId", $(this).closest("tr")).html());
           $("#GFG").html($(".IdeaId", $(this).closest("tr")).html());            
           document.getElementById("<%=HiddenField1.ClientID %>").value = a;
           


        //});
    
            var IdeaID = a;
           // alert(IdeaID);
       
            document.getElementById("show").style.display = "block";
            $(document).scrollTop($(document).height());
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'Beneficiaryapprovalbulkprocess.aspx/getDetails',
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

                       // document.getElementById("empID").value = data.d.Sempid;
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
                        document.getElementById("upl3Tag").innerHTML = " Implement Fileupload : ";
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
                        document.getElementById("SEmployeeIDTagSU").innerHTML = data.d.SU_ID;
                        document.getElementById("SEmployeeNameTagSU").innerHTML = data.d.SU_Name;
                        document.getElementById("SMailTagSU").innerHTML = data.d.SU_MAIL;
                        document.getElementById("STimeTagSU").innerHTML = data.d.SU_DAte;
                        document.getElementById("SContentTagSU").innerHTML = data.d.SU_Remark;
                        document.getElementById("SDepartmentTagSU").innerHTML = data.d.SU_Dept;

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
                        //var bbs = data.d.SResponse;
                        //if (bbs != "") {

                        //    document.getElementById("Man_form").style.display = "block";
                        //    document.getElementById("remark_mam").innerHTML = "Remark :";
                        //    document.getElementById("SfromTag1").innerHTML = "HOD Name: ";
                        //    document.getElementById("SEIDTag1").innerHTML = "HOD ID : ";
                        //    document.getElementById("SMail11").innerHTML = "MailID : ";
                        //    document.getElementById("SDepTag1").innerHTML = "Department : ";
                        //    document.getElementById("SSubjectTag1").innerHTML = data.d.SSubject;
                        //    document.getElementById("SEmployeeNameTag1").innerHTML = data.d.IEmpName1;
                        //    document.getElementById("SEmployeeIDTag1").innerHTML = data.d.IEmpId1;
                        //    document.getElementById("SDepartmentTag1").innerHTML = data.d.IDepID1;
                        //    document.getElementById("SMailTag1").innerHTML = data.d.Reason1;
                        //}
                        //else {
                        //    document.getElementById("Man_form").style.display = "none";
                        //}

                        //document.getElementById("SendToUpText").innerHTML = data.d.SenderID;
                        //$(".ToUPTextBoxClass").val(data.d.SenderID);
                        //document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        //$(".ideaidclass").val(data.d.IdeaIdTag);
                        
                        //document.getElementById("IdeaId1").value = data.d.IdeaIdTag;  
                        //document.getElementById("recivedDate").value = data.d.SDate;
                        //$(".IdeaIDClass").val(data.d.IdeaIdTag);
                        //$(".IMPIdeaIdClass").val(data.d.IdeaIdTag);
                        $("[id*=txtMailSubject]").val(data.d.subject);

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                       // $(".SendToTextBoxclass").val(data.d.subject);
                       // bindGrid(data.d.IdeaIdTag);  // table employee details
                      //  removeDiv(); // div table employee details
                        //bindGrid2(data.d.IdeaIdTag);
                        //$('#fromTag').html("From :");
                        $('#txtMailSubject').html(data.d.subject); 
                        document.getElementById("txtMailSubject").innerHTML = data.d.subject;


                       

                


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });
       
    </script>
   
        <script type ="text/javascript">
            $("[id*=ApproveButton]").click(function () {
               
                document.getElementById("show").style.display = "none";
            });
        </script>


</asp:Content>
