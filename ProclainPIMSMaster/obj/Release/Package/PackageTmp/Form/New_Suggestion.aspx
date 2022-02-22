<%@ Page EnableEventValidation="false"Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="New_Suggestion.aspx.cs" Inherits="ProclainPIMSMaster.Form.AddSuggestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
  <!--  <link href="../UI/Style/select2Search.css" rel="stylesheet" />
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script>
          -->
    
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <script src="../UI/Script/sweetalert2@9.js"></script>
   

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
    .form-control {}
      @media (max-width: 575.98px) {
            .resps {
                border: none;
                margin-right: 10%;
            }
        }


        @media (min-width: 576px) and (max-width: 767.98px) {
            .resps {
                border: none !important;
                margin-left: 12%;
            }
        }


        @media (min-width: 768px) and (max-width: 991.98px) {
            .resps {
                border: none !important;
                margin-left: 14%;
            }
        }


        @media (min-width: 992px) and (max-width: 1199.98px) {
            .resps {
                border: none !important;
                margin-left: 15%;
            }
        }


        @media (min-width: 1200px) {
            .resps {
                border: none !important;
                margin-left: 20%;
            }
        }

</style>
    
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
</style> 
     
<style type="text/css">
@keyframes ldio-l05zvogs5db {
  0% {
    opacity: 1;
    backface-visibility: hidden;
    transform: translateZ(0) scale(2.4099999999999997,2.4099999999999997);
  } 100% {
    opacity: 0;
    backface-visibility: hidden;
    transform: translateZ(0) scale(1,1);
  }
}
.ldio-l05zvogs5db div > div {
  position: absolute;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  background: #72c4ff;
  animation: ldio-l05zvogs5db 1s linear infinite;
}.ldio-l05zvogs5db div:nth-child(1) > div {
  left: 148px;
  top: 88px;
  animation-delay: -0.8888888888888888s;
}
.ldio-l05zvogs5db > div:nth-child(1) {
  transform: rotate(0deg);
  transform-origin: 160px 100px;
}.ldio-l05zvogs5db div:nth-child(2) > div {
  left: 134px;
  top: 127px;
  animation-delay: -0.7777777777777778s;
}
.ldio-l05zvogs5db > div:nth-child(2) {
  transform: rotate(40deg);
  transform-origin: 146px 139px;
}.ldio-l05zvogs5db div:nth-child(3) > div {
  left: 98px;
  top: 147px;
  animation-delay: -0.6666666666666666s;
}
.ldio-l05zvogs5db > div:nth-child(3) {
  transform: rotate(80deg);
  transform-origin: 110px 159px;
}.ldio-l05zvogs5db div:nth-child(4) > div {
  left: 58px;
  top: 140px;
  animation-delay: -0.5555555555555556s;
}
.ldio-l05zvogs5db > div:nth-child(4) {
  transform: rotate(120deg);
  transform-origin: 70px 152px;
}.ldio-l05zvogs5db div:nth-child(5) > div {
  left: 32px;
  top: 109px;
  animation-delay: -0.4444444444444444s;
}
.ldio-l05zvogs5db > div:nth-child(5) {
  transform: rotate(160deg);
  transform-origin: 44px 121px;
}.ldio-l05zvogs5db div:nth-child(6) > div {
  left: 32px;
  top: 67px;
  animation-delay: -0.3333333333333333s;
}
.ldio-l05zvogs5db > div:nth-child(6) {
  transform: rotate(200deg);
  transform-origin: 44px 79px;
}.ldio-l05zvogs5db div:nth-child(7) > div {
  left: 58px;
  top: 36px;
  animation-delay: -0.2222222222222222s;
}
.ldio-l05zvogs5db > div:nth-child(7) {
  transform: rotate(240deg);
  transform-origin: 70px 48px;
}.ldio-l05zvogs5db div:nth-child(8) > div {
  left: 98px;
  top: 29px;
  animation-delay: -0.1111111111111111s;
}
.ldio-l05zvogs5db > div:nth-child(8) {
  transform: rotate(280deg);
  transform-origin: 110px 41px;
}.ldio-l05zvogs5db div:nth-child(9) > div {
  left: 134px;
  top: 49px;
  animation-delay: 0s;
}
.ldio-l05zvogs5db > div:nth-child(9) {
  transform: rotate(320deg);
  transform-origin: 146px 61px;
}
.loadingio-spinner-spin-70jldgjfy3 {

   width: 200px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
            
            background-repeat: no-repeat;
            background-position: center;
            margin: -100px 0 0 -100px;
}
.ldio-l05zvogs5db {
  width: 100%;
  height: 100%;
  position: relative;
  transform: translateZ(0) scale(1);
  backface-visibility: hidden;
  transform-origin: 0 0; /* see note above */
}
.ldio-l05zvogs5db div { box-sizing: content-box; }
/* generated by https://loading.io/ */
.hiddendiv {display:none;}
.visiblediv {display:block;}



</style>
  
     
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
       $(document).ready(function () {
           $("#preloader").hide();
           $("#imp").hide();
       });
   </script>
    <div id="preloader">
         <!--
<div id="status"  >&nbsp;</div>-->
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>
     <script>
         function tableInputKeyPress(e) {
             // alert('Keypress called');
             e = e || window.event;

             var key = e.keyCode;
             //alert(key);
             if (key == 13 || key == 9) //Enter
             {
                 //alert('keydown');


                 var empId = $('.EmployeeIdTextBoxClass').val();
                 $.ajax({
                    url: 'New_Suggestion.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",
                    
                    success: function (data) {

                        console.log(data);
                        var er = data.d.ErrorLabel;
                       
                        if (er != 1) {
                        console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        }
                        else
                        {
                            $("#ErrorLabel").show();
                            document.getElementById('<%= ErrorLabel.ClientID %>').value = "Employee ID Does Not Exist";
                            $('.ErrorLabelClass').text("Employee ID Does Not Exist");
                        
                        }

                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                 });
                document.getElementById('<%= SubjectTextBox.ClientID %>').focus();
                //$("#SubjectTextBox").focus();
                e.preventDefault();
                return false; //return true to submit, false to do nothing
             }
             }
         
               
         function tabPress(e) {
           
            e = e || window.event;
            var key = e.KeyCode;
            alert(key);
            if (key == 13 || key == 9) //Enter
            {
                alert('keydown');
            }
        }
         </script>
<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">
    <center><h4 class="fw-300 c-grey-902 mB-30">IMPROVEMENT IDEA FORM
        <br />
        <small>முன்னேற்றம் / யோசனை படிவம்</small>
            </h4> </center>

    <div class="row errordiv"><div class="col-sm-12">
        <asp:Label ID="ErrorLabel" CssClass="ErrorLabelClass" runat="server" style="color:red" ></asp:Label>
        
        </div>
        </div>
   <div class="row"><div class="col-sm-5">
       <label>DATE:     </label>
                   <b> <label id="TimeLable" runat="server" style="color:red"> </label></b>
                    
                    </div><div class ="col-sm-5">
                        
                          </div>
       <div class="col-sm-2"><lable>IDEA ID:     </lable><b><label id="IdeaIdLable" runat="server" style="color:red"> </label></b>

       </div></div><br />
    <div class="form-group">         
            <div class="row">
                 <div class="col-sm-3">
                    <label>Employee ID<small> (எண்) </small></label>                    
                           <asp:TextBox ID="EmployeeIdTextBox" CssClass="form-control EmployeeIdTextBoxClass" placeholder="Employee Id" runat="server" Style="pointer-events: none;"    onkeydown="return tableInputKeyPress(event);" ></asp:TextBox>                   
                     </div>                       
                <div class="col-sm-3">
                    <label>Employee Name<small> (பெயர்)</small></label>
                    <asp:TextBox ID="EmployeeTextBox" CssClass="form-control EmpNameClass" Width="100%" Enabled="false" placeholder="Employee Name" runat="server" ></asp:TextBox>
                     </div>                
                <div class="col-sm-3">
                    <label>Department <small>(துறை)</small></label>
                    <asp:TextBox ID="DepartmentTextBox" CssClass="form-control" Width="100%" Enabled="false" placeholder="Department Name" runat="server"></asp:TextBox>                   
                </div>                                
                <div class="col-sm-3">
                    <label>Job Title<small> (பதவி)</small></label><br />
                    <asp:TextBox ID="DesignationTextBox" CssClass="form-control" Width="100%" Enabled="false" placeholder="Designation Name" runat="server"></asp:TextBox>                   
                </div>                 
              </div>
        <br />
             <div class="row">
             <div class="col-sm-5">              
                   <label>Improvement Idea Subject<small> </small></label> 
                    <asp:TextBox ID="SubjectTextBox" CssClass="form-control SubjectTextBoxClass" placeholder="Specify Area, Machine, Department for better Understanding" runat="server" TextMode="MultiLine" Height="100px" Width="400px" onkeydown="return MoveNext('BenefitsTextBox',event.keyCode);"></asp:TextBox>
             <label id="sub" class="hiddendiv" style="color:red">Enter Improve Idea Form</label>
  </div>
                 <div class="col-sm-4">
                     <label>Benefits</label>
                    <asp:TextBox ID="BenefitsTextBox" CssClass="form-control BenefitsTextBoxClass" placeholder="Attach Sheets If Needed" runat="server" TextMode="MultiLine" Height="100px" Width="320px" onkeydown = "return MoveNext('BeforeTextBox',event.keyCode);"></asp:TextBox>
               <label id="sub1" class="hiddendiv" style="color:red">Enter Benifits</label>
                    </div>
                 <div class="col-sm-3">
                 <label>Category</label><br />
                 <asp:CheckBoxList ID="CategoryCheckBoxList" CssClass="CheckBoxList" runat="server" RepeatDirection="Vertical" RepeatColumns="2" RepeatLayout="Table">                         
                         <asp:ListItem>Productivity</asp:ListItem>
                         <asp:ListItem>Quality</asp:ListItem>
                         <asp:ListItem>Cost</asp:ListItem>
                         <asp:ListItem>HSE</asp:ListItem>  
                          <asp:ListItem>Energy</asp:ListItem>                                                
                         <asp:ListItem>6S</asp:ListItem>                        

                     </asp:CheckBoxList>  
                       <label id="sub2" class="hiddendiv" style="color:red">Select Category</label>               
                 </div>               
             </div>                       
           <br />

             <div class="form-group">                 
        <div class="row">
                 <div class="col-sm-5">
                  <label> Before <small> (விளக்கம்)</small></label><label id="sub3" class="hiddendiv" style="color:red">Enter Before Content</label></div>
                   
            <div class="col-sm-5">
                  <label> After <small> (விளக்கம்)</small></label>
                   <label id="sub4" class="hiddendiv" style="color:red">Enter After Content</label>
                   </div>
            <div class="col-sm-2">
                  <label> Upload <small> (விளக்கம்)</small></label></div>
            </div>
         <div class="row">
                 <div class="col-sm-5">
                 <asp:TextBox ID="BeforeTextBox" CssClass="form-control BeforeTextBoxClass" runat="server" placeholder="Attach Sheets If Needed" TextMode="MultiLine" Rows="10" onkeydown = "return MoveNext('AfterTextBox',event.keyCode);"></asp:TextBox></div>
            
             <div class="col-sm-5">
                 <asp:TextBox ID="AfterTextBox" CssClass="form-control AfterTextBoxClass" runat="server" placeholder="Attach Sheets If Needed" TextMode="MultiLine" Rows="10" onkeydown = "return MoveNext('ImageFileUpload1',event.keyCode);"></asp:TextBox></div>
             
                  <div class="col-sm-2">
                      <asp:FileUpload ID="ImageFileUpload1"  runat="server" onchange="validateSize(this)" /><br />
                      <asp:FileUpload ID="ImageFileUpload2"  runat="server" /><br />
                 <asp:FileUpload ID="ImageFileUpload3"  runat="server" hidden />                  
                 </div>                
             </div>
             <br />
                 <div class="row">
                   <div class="col-md-3" >
                  <label style="font-size: smaller;" >Team Leader/Supervisor Name <small>(அணி தலைவர்/மேற்பார்வையாளர் பெயர்)</small></label>
                    <asp:DropDownList ID="ManagerDepartmentTextBox" CssClass="js-example form-control bor" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                     <asp:ListItem>--Select--</asp:ListItem>                                                           
                    </asp:DropDownList> 
                   <%-- <asp:TextBox ID="ManagerDepartmentTxtbox"  CssClass="js-example form-control bor" Style="pointer-events: none;"    placeholder="To: " Width="100%" runat="server" AutoPostBack="false"   ></asp:TextBox>--%>
                     <label id="sub5" class="hiddendiv" style="color:red">Select Manager</label>  
        </div>
                       <div class="col-md-3" id="show" <%--style="display:none"--%>>
                            <label>To: </label>
                           <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass"  Style="pointer-events: none;"   placeholder="To: " Width="100%" runat="server" AutoPostBack="false"   ></asp:TextBox>
                    
                       </div>
                            <div class="col-md-4" id="showM" <%--style="display:none"--%>> 
                            <label>Mail ID: </label>  
                         <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass"  Style="pointer-events: none;"    placeholder="Mail ID" Width="100%" AutoPostBack="false"  runat="server" ></asp:TextBox>
                          
                            </div>                                    
               
               </div>
                 
             </div>                              
        <div class="col-md-12 bg-light text-right">                                                                                             
                 <asp:Button ID="Submit" CssClass=" btn btn-primary submitBTN" Width="10%" BorderColor ="DodgerBlue" runat="server" AutoPostBack="false" Text="Submit" style="display:none;"  OnClick="Submit_Click" /> 
                 <input type="button" class="btn btn-primary submitBTN" style="width:10%;border-color:dodgerblue"  value="Submit" onclick="sendEmail()" />    <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>                                     
                 <a class="btn btn-primary" style="background-color:#000666"  href="New_Suggestion.aspx" role="button">Cancel</a>   
                   </div>            
             <div class="form-group">    
    <div class="col-sm-2">
             <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>              
                            </div>
             </div>           
    </div>
<div class="container">
        <div class="modal fade" id="myModalComiteeEvaluation" role="dialog">
            <div class="modal-dialog">
     

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Commitee Evaluvation</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <form class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDTextBox" CssClass="form-control IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>
                                     <div class="row errordiv"><div class="col-sm-12">
                                        <asp:Label ID="Label2" CssClass="ErrorLabelClass" runat="server" style="color:red" ></asp:Label>
        
                                     </div>
                                     </div>

                                </div>

                                <div class="form-group">
                                    <label>Department</label>
                                    <asp:CheckBoxList ID="DepRepCheckBoxList" CssClass="DepJQuery form-control" runat="server" RepeatDirection="Vertical" RepeatColumns="3" RepeatLayout="Table" OnSelectedIndexChanged="DepRepCheckBoxList_SelectedIndexChanged">
                                        <asp:ListItem class="form-control HRClass"  style="border:none;">HR</asp:ListItem>
                                        <asp:ListItem class="form-control LeanClass"  style="border:none;">Lean</asp:ListItem>
                                        <asp:ListItem class="form-control resps HSEClass" >HSE</asp:ListItem>                        
                                        <asp:ListItem class="form-control resps ProductionClass">Production ABU</asp:ListItem>
                                        <asp:ListItem class="form-control resps ProductionClass" >Production MBU</asp:ListItem>
                                        <asp:ListItem class="form-control resps ProductionClass" >Maintenance</asp:ListItem>
                                        
                                    </asp:CheckBoxList>
                                    <div id="go">
                                        <asp:DropDownList ID="DepartmentPopUPDDList" CssClass="js-example form-control DDJQuery DDJClass" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>

                                        </asp:DropDownList>
                                        <asp:TextBox ID="OthersDepRepTextBox" CssClass="form-control testid" placeholder="Idea ID" runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="ToTextBox" ReadOnly="True" CssClass="form-control ToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpDepTextBox"  CssClass="form-control EmpDepTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="EmpNameTextBox"  CssClass="form-control EmpNameTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpIDTextBox"  CssClass="form-control EmpIDTextBoxClass" placeholder="ID " runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="mailidtext"  CssClass="form-control mailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <%--<div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="subjecttext" CssClass="form-control" placeholder="Mail Subject"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ComposeTextBox" CssClass="form-control"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>
                            </form>
                           
                                
                         

                        </div>
                    </div>

                    <div class="modal-footer">
                        
                      
                    
                  <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
                <input type="button" value="testing post"  class="btn btn-primary" onclick="sendEmail()"/>
                        <asp:Button ID="ImproButton" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="Submit_Click" OnClientClick="sendEmail()" />
                     
              
                         <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>       
    <script src="../UI/Style/jquery.min.js"></script>
 <script>
      $(document).ready(function () {

          $("[id*=ManagerDepartmentTextBox]").change(function () {
                 console.log("mailtest1");
                 var st=$(this).children("option:selected").val().toString();
                 var res=st.split(',');
                 var txts = res[0];
                
                 
              console.log(txts);
                console.log("Checking :" + txts);
                if (txts != "--Select--") {
                    if (txts != "") {
                        var textboxs2 = $(".IMPToTextBoxClass").val().toString();
                       
                        $(".IMPToTextBoxClass").val(txts);
                        console.log("TT:" + textboxs2 + 'textbox:' + txts);
                        document.getElementById("show").style.display = "block";
                        document.getElementById("showM").style.display = "block";
                        var ks = txts.toString();
                        console.log(ks)
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'New_Suggestion.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                               data: '{emp:' + JSON.stringify(ks) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                                    <%--document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                                    document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                                    document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                            --%>
                                
                                    var fxs = data.d.Email;
                                    var fzs = data.d.HEmployeeID;
                                    console.log("test1"+fxs,"test2"+fzs)
                                    $(".IMPmailidtextClass").val(fxs);
                                    $(".IMPEmpIDTextBoxClass").val(fzs);
                                    
                            

                        },
                        error: function (err) {
                             console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
                        return false;
                   
                    }
                    
               }
            });
         });




     </script>
       
<script>
    function validateSize(input) {
        const fileSize = input.files[0].size / 1024 / 1024; // in MiB
        if (fileSize > 1) {
            alert('File size exceeds 1 MiB');
            // $(file).val(''); //for clearing with Jquery
        } else {
            // Proceed further
        }
    }
</script>

    <script>
        function sendEmail()
        {
            document.getElementById('sub').className = 'hiddendiv';
            document.getElementById('sub1').className = 'hiddendiv';
            document.getElementById('sub2').className = 'hiddendiv';
            document.getElementById('sub3').className = 'hiddendiv';
            document.getElementById('sub4').className = 'hiddendiv';
            document.getElementById('sub5').className = 'hiddendiv';

          
            var selectedValues = [];
            $("[id*=CategoryCheckBoxList] input:checked").each(function () {
                selectedValues.push($(this).val());
            });
           
                      
            var sub = $("[id*=SubjectTextBox]").val();
            console.log(selectedValues.length);
            var ben = $("[id*=BenefitsTextBox]").val();
            
            var beftxt = $("[id*=BeforeTextBox]").val();
            var afttxt = $("[id*=AfterTextBox]").val();

           
           
            var ManagerDepttxt = $('#ManagerDepartmentTextBox :selected').val();
           // var ManagerDepttxt = $("[id*=ManagerDepartmentTextBox]").val();
            if (sub == "" || sub == null) {
                document.getElementById('sub').className = 'visiblediv';
            }
            else if (ben == "" || ben == null) {
               
                document.getElementById('sub1').className = 'visiblediv';
            }
            else if (selectedValues.length == 0) {
               
                document.getElementById('sub2').className = 'visiblediv';
            }
            else if (beftxt == "" || beftxt == null) {
               
                document.getElementById('sub3').className = 'visiblediv';
            }
            else if (afttxt == "" || afttxt == null) {
               
                document.getElementById('sub4').className = 'visiblediv';
            }
            //else if (ManagerDepttxt == "" || ManagerDepttxt == null) {

            //    document.getElementById('sub5').className = 'visiblediv';
            //}
                         
  
            else {
               
            
            console.log(document.getElementById('<%= IdeaIdLable.ClientID %>').innerHTML, document.getElementById('<%= SubjectTextBox.ClientID %>').value, document.getElementById('<%= EmployeeTextBox.ClientID %>').value, document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value, document.getElementById('<%= DepartmentTextBox.ClientID %>').value)
            
            $("#preloader").show();
           <%-- var formData = new FormData();
            formData.append("toAddress", "jeevabalan.g@poclain.com");
           // formData.append("toAddress", "raja.g@binary2quantumsolutions.com");
            formData.append("toName", "Jeevabalan");
            formData.append("toId", "PI-049");
            formData.append("subject", "New Suggestion Posting");
            formData.append("ideaID", document.getElementById('<%= IdeaIdLable.ClientID %>').innerHTML);
            formData.append("content",document.getElementById('<%= SubjectTextBox.ClientID %>').value);
            formData.append("sender",document.getElementById('<%= EmployeeTextBox.ClientID %>').value+",<br/>"+document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value+",<br/>"+document.getElementById('<%= DepartmentTextBox.ClientID %>').value);


            formData.append("resci", "Sir");
            formData.append("type", "New");
            formData.append("subTitle", "Evaluation");--%>





                var empid = '<%= Session["UserId"].ToString() %>';   
             
            var formData = new FormData();
            var toaddress=document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
            var toName=document.getElementById('<% = EmpNameTextBox.ClientID %>').value;
            var toId=document.getElementById('<% = TOIMPTextBox.ClientID %>').value;
            var formData = new FormData();
            formData.append("toAddress", toaddress.split(" ").join(""));
            formData.append("toName",  toName.split(" ").join(""));
            formData.append("toId", toId.split(" ").join(""));
           
            formData.append("subject", "New Suggestion Posting");
            formData.append("ideaID", document.getElementById('<%= IdeaIdLable.ClientID %>').innerHTML);
            formData.append("content",document.getElementById('<%= SubjectTextBox.ClientID %>').value);
            formData.append("sender", document.getElementById('<%= EmployeeTextBox.ClientID %>').value+",<br/>"+document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value+",<br/>"+document.getElementById('<%= DepartmentTextBox.ClientID %>').value);


                 formData.append("resci", "Sir");
            formData.append("type", "New");
            formData.append("subTitle", "Evaluation");


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
                        // $("[id*=Submit]").click();
                        //alert('test')
                        document.getElementById("<%=Submit.ClientID %>").click();
                        console.log('button clicked');
                       // alert(data);
                       //  document.getElementById("Submit").click();
                    },
                    error: function (err) {
                        console.log('error', err.d);
                        //alert('test')
                         document.getElementById("<%=Submit.ClientID %>").click();
                       //  document.getElementById("Submit").click();
                        
                    }
                 });
            }
        }
    </script>


     <script type="text/javascript">
        // $(".js-example").select2();
         $(document).ready(function () {
             $(".EmployeeIdTextBoxClass").keyup(function () {
                 $("#errordiv").hide();
                 var EID = $(".EmployeeIdTextBoxClass").val();
                 //alert(EID);
                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("Enter The Emlpoyee ID");
                 }
                 else {
                     $("#errordiv").hide();
                     $(".ErrorLabelClass").text("");
                     //$(".ErrorLabelClass").val("Check The Employee ID");
                 }
                 
             });
             $(".BeforeTextBoxClass").keyup(function () {
                 var EID = $(".BeforeTextBoxClass").val();

                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("Before is Empty");
                 }
                 else {
                     $("#errordiv").hide();
                     $(".ErrorLabelClass").text("");
                 }

             });
             $(".SubjectTextBoxClass").keyup(function () {
                 var EID = $(".SubjectTextBoxClass").val();
                 var Ename = $(".EmpNameClass").val();
                 if (Ename != "") {
                     if (EID == "") {
                         $("#errordiv").show();
                         $(".ErrorLabelClass").text("Subject is Empty");
                     }
                     else {
                         $("#errordiv").hide();
                         $(".ErrorLabelClass").text("");
                     }
                 }
                 else
                 {
                     $(".ErrorLabelClass").text("Employee ID Does Not Exists");
                 }

             });
             $(".BenefitsTextBoxClass").keyup(function () {
                 var EID = $(".BenefitsTextBoxClass").val();

                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("Benefits is Empty");
                 }
                 else {
                     $("#errordiv").hide();
                     $(".ErrorLabelClass").text("");
                 }


             });
         });
         $(".AfterTextBoxClass").keyup(function () {
             var EID = $(".AfterTextBoxClass").val();

             if (EID == "") {
                 $("#errordiv").show();
                 $(".ErrorLabelClass").text("After is Empty");
             }
             else {
                 $("#errordiv").hide();
                 $(".ErrorLabelClass").text("");
             }


         });
         </script>
    <script>
         function submitBtn(e) {


                 Swal.fire({
                     title: 'Are you sure?',
                     text: "Do You Want To Post YOU Suggestion!",
                     icon: 'warning',
                     showCancelButton: true,
                     confirmButtonColor: '#3085d6',
                     cancelButtonColor: '#d33',
                     confirmButtonText: 'Yes, Post!'
                 }).then((result) => {
                     if (result.value == 1) {
                         console.log(result.value);
                         Swal.fire(
                           'Posted!',
                           'Your file has been Posted Sucessfully.',
                           'success'
                         )
                     }
                 })
                 return false;
                 e.preventDefault();
             //});
         }
      </script>
                <%--<script>
                    $(document).ready(function () {
             $(".js-example").select2(
                 {

                     placeholder: "--Select--",
                      
                             
                     allowClear: true
                 });
             
             
             $(".BeforeTextBoxClass").keydown(function () {
                 var EID = $(".BeforeTextBoxClass").val();

                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("Before is Empty");
                 }
                 else {
                     $("#errordiv").hide();
                 }

             });
             $(".BenefitsTextBoxClass").keydown(function () {
                 var EID = $(".BenefitsTextBoxClass").val();

                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("Benefits is Empty");
                 }
                 else {
                     $("#errordiv").hide();
                 }


             });
             
             $(".AfterTextBoxClass").keydown(function () {
                 var EID = $(".AfterTextBoxClass").val();

                 if (EID == "") {
                     $("#errordiv").show();
                     $(".ErrorLabelClass").text("After is Empty");
                 }
                 else {
                     $("#errordiv").hide();
                 }


             });
             
             
            return false;
         });

 
         </script>--%>

  <%--  <script>
       
        function tableInputKeyPress1(e) {
            e = e || window.event;
            var key = e.Keycode;
            console.log("checking");
            if (key == 0) //Enter
            {
        
                $(".SubjectTextBoxClass").keydown(function () {
                    var EID = $(".SubjectTextBoxClass").val();

                    if (EID == "") {
                        $("#errordiv").show();
                        $(".ErrorLabelClass").text("Subject is Empty");
                    }
                    else {
                        $("#errordiv").hide();
                    }
                        ////}
            

                    });
        
            //tableInputKeyPress(e);
                }

     }
 $(".CheckBoxList input:checkbox:first").change(function () {
                 $(".CheckBoxList").find(':checkbox').prop("checked", this.checked);
             });

             $(".CheckBoxList input:checkbox:not(first)").change(function () {
                 $(".CheckBoxList").find(':checkbox:first').prop("checked", this.checked);
             });
      
      
        // After Validation
    
     
    </script>--%>

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
    <script>
        function tableInputKeyPress(e) {

            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13||key ==9) //Enter
            {   
                var empId = $('.Emplidclass').val();
               
                $.ajax({
                    url: 'ManagerList.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",
                    
                    success: function (data) {
                       
                        var er = data.d.ErrorLabel;
                        if (er != 1) {
                            $("#Error").hide();
                            console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        }
                        else
                        {
                        $("#Error").show();
                            document.getElementById('<%= ErrorLabel.ClientID %>').value = "Employee ID Does Not Exist";
                            $('.ErrorLabelClass').text("Employee ID Does Not Exist");
                        
                        }

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
           
        })
    </script>
     <script>
        $(document).ready(function () {
            //alert("asd");
            $("#go").hide();
            $("#ErrorLabel").hide();
            //$(".js-example-Newtag").select2({
            //    createTag: function (params) {
            //        var term = $.trim(params.term);

            //        if (term === '') {
            //            return null;
            //        }

            //        return {
            //            id: term,
            //            text: term,
            //            newTag: true // add additional parameters
            //        }
            //    }
            //});
        });
    </script>
      <script type="text/javascript">

        $(document).ready(function () {
            var finalArray = [];
            function filterData(keyDataFrom) {
                var condition = finalArray.some(function (item) {
                    return item.key == keyDataFrom
                });
                return condition;
            }
            $("[id*=DepRepCheckBoxList]").change(function () {
                //code mani 

                var keyData = $(this).val();
                var checked = [];
                var unchecked = [];

               
                checked = []; unchecked = [];
                if ($("[id*=DepRepCheckBoxList]").is(":checked")) {
                     
                    console.log('checked data from testing side')
                }
                $("[id*=DepRepCheckBoxList]:not(:checked)").each(function () {
                    unchecked.push($(this).val());
                    console.log('item unchecked list', $(this).val())
                    //var con = finalArray.includes($(this).val());
                    console.log(filterData($(this).val()), 'Using Function')
                    console.table(finalArray)
                    if (filterData($(this).val()) == true) {
                        console.table(finalArray)
                        for (var i = 0; i < finalArray.length; i++) {
                            if (finalArray[i].key == $(this).val())
                            {
                                finalArray.splice(i, 1);  // array.splice(index,remove items count) was the parameter

                            }
 
                        }
                        console.log('pop value', $(this).val())
                        //finalArray.pop($(this).val());
                        console.table(finalArray)
                     }                    

                });
                $("[id*=DepRepCheckBoxList]:checked").each(function () {
                    console.log('item checked', $(this).val())
                    checked.push($(this).val());
                    //var con = finalArray.includes($(this).val());
                    //if (con == false) {
                    //    finalArray.push($(this).val());
                    //}

                    // dummyMulti.push({ key: $(this).val(), Name: $(this).val(), email: "", empid: "" });
                });
              
                // code end from mani

                    var textbox = "" + $(this).val().toString();
                    console.log('first:' + textbox);
                    var tt = "";
                    var x = "";
                    if (($(this).val() == "Others")) {
                        $('#go').show();
                        console.log("Others" + $(this).is(":checked"));
                        console.log("Others" + $(this).val());

                        if ($(this).is(":checked") == 0)
                        {
                            console.log("Not Checked " + $('.other').checked);
                            $('#go').hide();

                        }
                        //textbox = "" + $(".DDJQuery").val().toString();
                        return false;


                    }
                    else if (($(this).val() != "Others") && ($(this).is(":checked") != "false")) {
                        //console.log("else" + $(this).val());
                        //console.log($(this).not(":checked"));
                        //textbox = "" + $(this).val().toString();
                        // alert('first:' + textbox);
                        if ($(this).is(":checked") == 1) {
                            //console.log("else" + $(this).is(":checked"));

                            textbox = "" + $(this).val().toString();


                            <%--document.getElementById('<%= ToTextBox.ClientID %>').value+= textbox+',';
                        document.getElementById('<%= ToTextBox.ClientID %>').value = "";--%>
                            console.log("Textbox" + $(this).val().toString());
                        }
                    }
                    if ($(this).is(":checked") == true)
                    {
                    if (textbox != "") {
                        var textbox2 = $(".ToTextBoxClass").val().toString();

                        
                        if (textbox2 == "") {
                            var tt = textbox2 + " " + textbox;
                        }
                        else {
                            console.log("Textbox" + textbox);
                            tt = textbox2 + ',' + " " + textbox;
                               
                        }
                        $(".ToTextBoxClass").val(tt);
                        console.log("TT:" + textbox2 + 'textbox:' + textbox);
                        var k = textbox.toString();
                        var f = "";
                        var feid = "";
                        var e = "";
                        $.ajax({
                            url: 'New_Suggestion.aspx/eChecking',
                            method: 'post',
                            contentType: "application/json; charset=utf-8",
                            async: true,
                            dataFilter: function (data) { return data; },
                            data: '{emp:' + JSON.stringify(k) + '}',
                            dataType: "json",
                            
                            success: function (data) {
                                

                                console.log("test1HEID" + data.d.HEmployeeID);
                                console.log("test1HEN" + data.d.HEmployeeName);
                                console.log("testHMID" + data.d.Email);
                                if (filterData(keyData) == false)
                                {
                                    finalArray.push({ key: keyData, Name: data.d.HEmployeeName, email: data.d.Email, empid: data.d.HEmployeeID });
                                }
                                console.log(finalArray)
                                console.table(finalArray)

                                <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                var fx = "";
                                var fz = "";
                                var fn = "";
                                f = data.d.Email;
                                feid = data.d.HEmployeeID;
                                e = data.d.HEmployeeName;
                                var er = data.d.ErrorLabel;
                                if ((er != 1)&&(feid != null)&&(feid != "")) {
                                    
                                        var EID = $(".EmpIDTextBoxClass").val().toString();
                                        var EName = $(".EmpNameTextBoxClass").val().toString();
                                        var z = $(".mailidtextClass").val().toString();
                                        if (EName == "") {
                                            fn = EName + " " + e;


                                        }
                                        else {
                                            console.log("Textbox" + textbox);
                                            fn = EName + ',' + " " + e;


                                        }
                                        if (z == "") {
                                            fx = z + " " + f;


                                        }
                                        else {
                                            console.log("Textbox" + textbox);
                                            fx = z + ',' + " " + f;


                                        }
                                        if (EID == "") {

                                            fz = EID + " " + feid;

                                        }
                                        else {
                                            console.log("Textbox" + feid);

                                            fz = EID + ',' + " " + feid;

                                        }
                                        
                                        var NameArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            NameArray.push(finalArray[i].Name);
                                        }
                                        var EmailArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            EmailArray.push(finalArray[i].email);
                                        }
                                        var IDArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            IDArray.push(finalArray[i].empid);
                                        }
                                        var userArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            userArray.push(finalArray[i].key);
                                        }

                                        $(".mailidtextClass").val('');
                                        $(".EmpIDTextBoxClass").val('');
                                        $(".EmpNameTextBoxClass").val('');
                                        $(".ToTextBoxClass").val('');

                                        $(".mailidtextClass").val(EmailArray);
                                        $(".EmpIDTextBoxClass").val(IDArray);
                                        $(".EmpNameTextBoxClass").val(NameArray);
                                        $(".ToTextBoxClass").val(userArray);
                                }
                                else {
                                    $("#ErrorLabel").show();
                                    document.getElementById('<%= ErrorLabel.ClientID %>').value = "Record Not Found";
                                    $('.ErrorLabelClass').text("Record Not Found");

                                }

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
                    else
                    {
                        var NameArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            NameArray.push(finalArray[i].Name);
                        }
                        var EmailArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            EmailArray.push(finalArray[i].email);
                        }
                        var IDArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            IDArray.push(finalArray[i].empid);
                        }
                        var userArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            userArray.push(finalArray[i].key);
                        }

                        $(".mailidtextClass").val('');
                        $(".EmpIDTextBoxClass").val('');
                        $(".EmpNameTextBoxClass").val('');
                        $(".ToTextBoxClass").val('');

                        $(".mailidtextClass").val(EmailArray);
                        $(".EmpIDTextBoxClass").val(IDArray);
                        $(".EmpNameTextBoxClass").val(NameArray);
                        $(".ToTextBoxClass").val(userArray);
                    }
                });
            


        });
        </script>   
             
</asp:Content>
