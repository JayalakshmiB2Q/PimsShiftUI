using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using ProclainPIMSMaster.Models;
using System.Web.Services;
using ClosedXML.Excel;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

namespace ProclainPIMSMaster.Form
{
    public partial class Beneficiaryapprovalbulkprocess : System.Web.UI.Page
    {
       
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee E = new Employee();
        Manager MM = new Manager();
        HOSModule hos = new HOSModule();

        static String us1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"].ToString() == null || Session["UserId"].ToString() == "")
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();
                    if (!IsPostBack)
                    {
                        SuggestionTableView();
                        DepartmentNameView();
                    }

                    //load();
                    //Barchart_details();

                    //SuggestionCounts();
                    //DepartmentNameView();
                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }


        }

        public void SuggestionTableView()
        {

            DataSet Ds = new DataSet();
            Ds = E.BeneficiaryBulkEmpgridview("Emp");
            //SuggestionGridView.DataSource = Ds.Tables[0];
            //SuggestionGridView.DataBind();
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridViewEmp.DataSource = Ds.Tables[0];
            SuggestionGridViewEmp.DataBind();
            //GridView1.DataSource = Ds.Tables[0];
            //GridView1.DataBind();

            Ds = E.BeneficiaryBulkImpgridview("");
            SuggestionGridViewImp.DataSource = Ds.Tables[0];
            SuggestionGridViewImp.DataBind();

        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        public void DepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                Ds = NSM.DepartmentSelectAll();

                //DepartmentDDListEmp.DataSource = Ds.Tables[0];
                //DepartmentDDListEmp.DataTextField = "DepName";
                //DepartmentDDListEmp.DataValueField = "DepId";
                //DepartmentDDListEmp.DataBind();
                ////DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                ////SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);

                //Ds = NSM.DepartmentSelectAll();
                //DepartmentDDListImp.DataSource = Ds.Tables[0];
                //DepartmentDDListImp.DataTextField = "DepName";
                //DepartmentDDListImp.DataValueField = "DepId";
                //DepartmentDDListImp.DataBind();




            }
            catch (Exception e1)
            {

            }


        }
        protected void grossamtempbtn_Click(object sender, EventArgs e)
        {
            try
            {


                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    // dtRow = ordersTable.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");
                    E.Bulkempideaid = IdeaId.Text;
                    E.Bulkempid = Employee.Text;
                    E.Bulkempdep = Dept.Text;
                    E.Bulkempdate = Date.Text;
                    E.Bulkempamt = score.Text;
                    E.EmployeeId = us1.ToString();
                    E.BulkProcessEmp(E);


                    //mm.idea = name.text;
                    //inset.hr(ideaid.text, '', '');




                }
                //sendEmail();
                string myscript = "alert ('Successfully Send To Finance');";
                Response.Redirect("Beneficiaryapprovalbulkprocess.aspx",false);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            catch (Exception e1)
            {

            }
        }
        public void grossimpamtbtn_Click( )
        {
            try
            {
                string ImplementsJSON = Request.Form["ImplementationTeam"];
                DataTable dt = JsonConvert.DeserializeObject<DataTable>(ImplementsJSON);

                for (int i = 0; i < dt.Rows.Count; i++) // read data from  gridview  
                {
                    // dtRow = ordersTable.NewRow();
                    string IdeaId = dt.Rows[i].ItemArray[0].ToString();/*(Label)SuggestionGridViewImp.Rows[i].FindControl("Label_ideaid");*/ // get value from lable as well as textbox using id of the elements raja
                    string Employee = dt.Rows[i].ItemArray[1].ToString();
                    string Dept = dt.Rows[i].ItemArray[2].ToString();
                    string Date = dt.Rows[i].ItemArray[3].ToString();
                    string grade = dt.Rows[i].ItemArray[4].ToString();
                    string score = dt.Rows[i].ItemArray[5].ToString();
                    E.Bulkimpideaid = IdeaId;
                    E.Bulkimpid = Employee;
                    E.Bulkimpdep = Dept;
                    E.Bulkimpdate = Date;
                    E.Bulkimpbengrade = grade;
                    E.Bulkimpamt = score;
                    E.EmployeeId = us1.ToString();
                    E.BulkProcessImp(E);


                    //mm.idea = name.text;
                    //inset.hr(ideaid.text, '', '');



                }
                //sendEmail();
                //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Send To Ben_Approvel','success').then(function() {window.location = 'BeneficiaryDashboard.aspx'})", true);
                string myscript = "swal ('Successfully Send To Finance')";
                Response.Redirect("Beneficiaryapprovalbulkprocess.aspx", false);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

            }
            catch(Exception e1)
            {

            }
            
        }
       
        public void sendEmail()
        {
            string apiUrl = "http://10.14.0.40/WebEmail/api/Email"; // located in IIS server
            // string apiUrl = "http://10.14.0.40/WebEmail/api/Email/pimsEmail/"; 
            string apiUrlLocal = "http://10.14.0.40/WebEmail/api/Email"; 
                // Running instance from Visual Studio
            object input = new
            {
                toName = "rajesh",
                toId = "PI-235",
                toAddress = "rajesh.arumugam@poclain.com",
                subject = "Beneficiary Appproval Bulk process",
                content = "From Beneficiary Approved Ideas to Payment Process",
                sender = "Vengadessane" + ",<br/>" + "PI-242" + ",<br/>" + "HR",
                ideaID = "Bulk Idea",
                resci = "Team",
                type = "New",
                subTitle= "Send To Final Payment Process"

                
            };
            string inputJson = (new JavaScriptSerializer()).Serialize(input);
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            // string json = client.UploadString(apiUrl + "/posted", inputJson);   // IIS server webapi project method
            string json = client.UploadString(apiUrlLocal + "/pimsEmail", inputJson);   // Running instance from Visual Studio - webapi project method
            var data = (new JavaScriptSerializer()).Deserialize<UserInfo>(json);  // using UserInfo class receview response from api
            Response.Write(data.password.ToString());
        }

        protected void GetReportEmp_Click(object sender, EventArgs e)
        {
            try
            {
                string startdate = Request.Form["minemp"];
                string enddate = Request.Form["maxemp"];
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                { 
                    DataSet Ds = new DataSet();
                    E.Empstartdate = Request.Form["minemp"];
                    E.Empenddate = Request.Form["maxemp"];

                    Ds = E.BeneficiaryBulkEmpgridviewFilter(E);

                    SuggestionGridViewEmp.DataSource = Ds.Tables[0];
                    SuggestionGridViewEmp.DataBind();
                }
                else
                {
                    string myscript = "alert ('Enter Start And End Dates');";
                    
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
            }
            catch (Exception e1)
            {

                throw ;
            }
           
            

           
        }

        protected void GetReportImp_Click(object sender, EventArgs e)
        {
            try
            {
                string startdate = Request.Form["minimp"];
                string enddate = Request.Form["maximp"];
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                {
                    DataSet Ds = new DataSet();
                    E.Impstartdate = Request.Form["minimp"];
                    E.Impenddate = Request.Form["maximp"];
            
                    Ds = E.BeneficiaryBulkImpgridviewFilter(E);
                    SuggestionGridViewImp.DataSource = Ds.Tables[0];
                    SuggestionGridViewImp.DataBind();
                }
                else
                {
                    string myscript = "alert ('Enter Start And End Dates');";

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
            }
            catch (Exception e1)
            {

                throw;
            }
        }

        protected void GetExcelReportImp_Click(object sender, EventArgs e)
        {
            try
            {

                DataTable GetExcelReportImp = new DataTable("collection");
                DataColumn dtColumn;
                DataRow dtRow;

                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "IdeaId";
               
                dtColumn.Caption = "IdeaId";
                
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create Name column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Employee";
                dtColumn.Caption = "Employee";
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create CustId column which Reprence Cust Id from    
                // The cust Table    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Dept";
                
                dtColumn.Caption = "Dept";
               
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Date";
                dtColumn.Caption = "Date";
                GetExcelReportImp.Columns.Add(dtColumn);


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "grade";
                dtColumn.Caption = "grade";
                GetExcelReportImp.Columns.Add(dtColumn);


                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "score";
                dtColumn.Caption = "score";
                GetExcelReportImp.Columns.Add(dtColumn);


                for (int i = 0; i < SuggestionGridViewImp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportImp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label5");
                    Label grade = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label6");
                    TextBox score = (TextBox)SuggestionGridViewImp.Rows[i].FindControl("grossamtimp");

                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    GetExcelReportImp.Rows.Add(dtRow);


                }
                //SuggestionGridViewImp.DataSource = GetExcelReportImp;
                //SuggestionGridViewImp.DataBind();
                //DataSet Ds = new DataSet();
                //MM.IdeaId = Request.QueryString["IdeaID"];
                //Ds = MM.FinanceExcelView(MM);
                ////ds = sho.GetDatasetByCommandString("sp_Report_excel_two", param, value);
                //DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(GetExcelReportImp, "PIMSImpl");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = GetExcelReportImp.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Implement Member List";
                    ws.Cell(1, cc).Style.Font.Bold = true;
                    ws.Cell(1, cc).Style.Font.FontSize = 25;
                    ws.Cell(1, cc).Style.Font.FontName = "Calibri";
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=PIMS-" + DateTime.Now.ToString("dd/MM/yyyy") + ".xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }



                }
                string prevPage = String.Empty;
                prevPage = Request.UrlReferrer.ToString();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void GetExcelReportEmp_Click(object sender, EventArgs e)
        {
            try
            {

                DataTable GetExcelReportEmp = new DataTable("collection");
                DataColumn dtColumn;
                DataRow dtRow;

                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "IdeaId";

                dtColumn.Caption = "IdeaId";

                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create Name column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Employee";
                dtColumn.Caption = "Employee";
                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create CustId column which Reprence Cust Id from    
                // The cust Table    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Dept";

                dtColumn.Caption = "Dept";

                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Date";
                dtColumn.Caption = "Date";
                GetExcelReportEmp.Columns.Add(dtColumn);


                //dtColumn = new DataColumn();
                //dtColumn.DataType = Type.GetType("System.String");
                //dtColumn.ColumnName = "grade";
                //dtColumn.Caption = "grade";
                //GetExcelReportEmp.Columns.Add(dtColumn);


                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "score";
                dtColumn.Caption = "score";
                GetExcelReportEmp.Columns.Add(dtColumn);


                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportEmp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");

                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    //dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    GetExcelReportEmp.Rows.Add(dtRow);


                }
                //SuggestionGridViewImp.DataSource = GetExcelReportImp;
                //SuggestionGridViewImp.DataBind();
                //DataSet Ds = new DataSet();
                //MM.IdeaId = Request.QueryString["IdeaID"];
                //Ds = MM.FinanceExcelView(MM);
                ////ds = sho.GetDatasetByCommandString("sp_Report_excel_two", param, value);
                //DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(GetExcelReportEmp, "PIMSEmp");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = GetExcelReportEmp.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Employee List";
                    ws.Cell(1, cc).Style.Font.Bold = true;
                    ws.Cell(1, cc).Style.Font.FontSize = 25;
                    ws.Cell(1, cc).Style.Font.FontName = "Calibri";
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=PIMS-" + DateTime.Now.ToString("dd/MM/yyyy") + ".xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }



                }
                string prevPage = String.Empty;
                prevPage = Request.UrlReferrer.ToString();
            }
            catch (Exception e1)
            {

                throw;
            }
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Beneficiaryapprovalbulkprocess.aspx");
        }
        protected void send_Click(object sender, EventArgs e)
        {

            try
            {
               
                string IdeaId1 = HiddenField1.Value;
                string txtMailBody = Request.Form["txtMailBody"];
                string value1 = RadioButtonList_resend.SelectedValue;
                string txtMailSubjec = txtMailSubject.Text.ToString();
                // string value = RadioButtonList1.SelectedValue;
                if (value1 == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please Select Approved or Re-Send','warning')", true);
                }
                else
                {
                    if (value1 == "RESEND")
                    {
                        try
                        {

                            DataSet Ds = new DataSet();


                            hos.resendHR_HOD(txtMailBody, txtMailSubjec, IdeaId1);

                            //catch (Exception e1) { }
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION',' RESEND TO HOD ','success').then(function() {window.location = 'Beneficiaryapprovalbulkprocess.aspx'})", true);

                            //if (value == "MANAGER")
                            //{
                            //    DataSet Ds = new DataSet();
                            //    try
                            //    {
                            //        hos.resendHR_MANAGER(txtMailBody, txtMailSubjec, IdeaId1);
                            //    }
                            //    catch (Exception e1) { }
                            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION',' RESEND TO MANAGER ','success').then(function() {window.location = 'Beneficiaryapprovalbulkprocess.aspx'})", true);

                        }
                        catch (Exception e1) { }
                    }
                    else if (value1 == "APPROVED")
                    {
                        try
                        {

                            grossimpamtbtn_Click();
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION',' Send To Finance').then(function() {window.location = 'Beneficiaryapprovalbulkprocess.aspx'})", true);
                            // Response.Redirect("ManagerMail.aspx",false);

                        }
                        catch (Exception e1)
                        {
                        }

                    }
                }
            }
            catch(Exception e1) { }
        }

        public void Notfeasible()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = HiddenField1.Value;
                MM.IEmpId = us1.ToString();
                MM.Discription = Request.Form["txtMailBody"];
                MM.HREvaInsertNotfeasible(MM);
            }
            catch (Exception e1) { }
        }

        //        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        //        {
        //            if (!Page.IsPostBack)
        //            {
        //                //Accessing BoundField Column.
        //                //string name = GridView1.SelectedRow.Cells[0].Text;

        //                //Accessing TemplateField Column controls.
        //                string country = (SuggestionGridViewImp.SelectedRow.FindControl("Label_ideaid") as Label).Text;
        //                //Label7.Text = SuggestionGridViewImp.SelectedRow.Cells[1].Text;

        ////Label7.Text = country;
        //                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
        //            }
        //        }




        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.Header)
        //    {
        //        //add the thead and tbody section programatically
        //        e.Row.TableSection = TableRowSection.TableHeader;
        //    }
        //    //}

        //}
        [WebMethod]
        public static CEmpEmailContents getDetails(string idea)

        {
            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();
            Manager MM = new Manager();

            HOSModule hos = new HOSModule();
            try
            {


              string  index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();
                DS = hos.changeEmailbySno(idea, "header");
                idea = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                DS = hos.getEmailbySno(idea, "header");


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";

                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
                EECS.UpLoad4 = DS.Tables[0].Rows[0].ItemArray[27].ToString();
                EECS.iremark = DS.Tables[0].Rows[0].ItemArray[28].ToString();
                EECS.impid = DS.Tables[0].Rows[0].ItemArray[29].ToString();
                EECS.implname = DS.Tables[0].Rows[0].ItemArray[30].ToString();
                EECS.impdept = DS.Tables[0].Rows[0].ItemArray[31].ToString();
                EECS.impmail = DS.Tables[0].Rows[0].ItemArray[32].ToString();
                EECS.impdate = DS.Tables[0].Rows[0].ItemArray[33].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[34].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload4 = "../UI/Image/" + EECS.UpLoad4;
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Implementation Team Information ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();

                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                MM.IdeaId = idea.ToString();
                DS = MM.Supervisor_detailsDashBoard(MM); 
                EECS.SUP_ID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EECS.SUP_Name = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                //EECS.SUP_Dept = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                EECS.SUP_MAIL = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.SUP_DAte = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SUP_Remark = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EECS.SUP_Dept = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                DS = MM.HOD_detailsDashBoard(MM);
                EECS.SU_ID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EECS.SU_Name = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                //EECS.SUP_Dept = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                EECS.SU_MAIL = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.SU_DAte = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SU_Remark = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EECS.SU_Dept = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                string bbc = EECS.SResponse;
                if (bbc == "")
                {


                }
                else
                {
                    MM.IdeaId = idea.ToString();
                    DS = MM.HR_dtails_Mail_view(MM);
                    EECS.Reason1 = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    EECS.IEmpId1 = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    EECS.IEmpName1 = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    EECS.IDepID1 = DS.Tables[0].Rows[0].ItemArray[3].ToString();

                }

                return EECS;




            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

    }
}