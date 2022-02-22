
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;
using System.Configuration;
using System.Data.SqlClient;


namespace ProclainPIMSMaster.Form
{
    public class EMtestDataPassersss
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Memberof { get; set; }
        public string Other { get; set; }
        public string ErrorLabel { get; set; }
        public string DupCheck { get; set; }
        public string Email { get; set; }
        public string Manager_Id { get; set; }
        public string Manager_name { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class AddSupervisor : System.Web.UI.Page
    {

        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Employee E = new Employee();
        int Check = 0;
        string EmpId = "";
        int SIDepID;
        static int DID;
        static int DDesID;
        int SIDesID = 0;
        int SIDepPopID = 0;
        string DepID;
        string DesID;
        string ComID;
        string points = "0";
        string Allowance = "0";
        string Remark1 = "0";
        string Remark2 = "0";
        static string CMID;
        string i = "";
        ManagerMaster MA = new ManagerMaster();


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
                    load();
                    EmployeeIdTextBox.Enabled = true;
                    ////EmployeeTableView();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }



        }

        private void load()
        {
            try
            {
                if ((!IsPostBack) || (Check == 1))
                {
                    DepartmentNameView();
                  
                    // CompanyNameView();
                    SuggestionTableView();

                    ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                    admaster.ChangeTitle("Add New Supervisor");
                }
            }
            catch (Exception e1)
            {

            }


        }



        public void DepIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = E.DepartmentIdAuto();
                DepID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

        }
        public void ComIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = E.CompanyIdAuto();
                ComID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

        }




        public void DepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                Ds = NSM.DepartmentSelectAll();

                DepartmentDDList.DataSource = Ds.Tables[0];
                DepartmentDDList.DataTextField = "DepName";
                DepartmentDDList.DataValueField = "DepId";
                DepartmentDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                //SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
            }
            catch (Exception e1)
            {

            }


        }

        //public void ManDepartmentNameView(string emp)
        //{
        //    Manager M = new Manager();
        //    try
        //    {
        //        DataSet DS = new DataSet();

        //        M.IEmpName = emp.ToString();

        //        DS = M.DeptEwiseManagerNameSelect(M);
        //        ManagerDepartmentTextBox.DataSource = DS.Tables[0];
        //        ManagerDepartmentTextBox.DataTextField = "Members";
        //        ManagerDepartmentTextBox.DataValueField = "EmpId";
        //        ManagerDepartmentTextBox.DataBind();
        //    }
        //    catch (Exception e1)
        //    {

        //    }


        //}





        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = E.SupervisorSelectAll();
                //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
                //  {
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
                //}
            }
            catch (Exception e1)
            {

            }

        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        #region Insert Record

        #region Insert Validation


        private bool txtvalid(TextBox t)
        {
            bool va = VC.TextBoxValidation(t);
            if (va == true)
            {
                //this.RequiredFieldValidator1.Text = t +  "This Fields Must Contain Text";
                return true;
            }
            else
            {
                //this.RequiredFieldValidator1.Text = t + " ";
                return false;
            }

        }


        #endregion

        public void clear()
        {

            EmployeeIdTextBox.Text = "";
            EmployeeNameTextBox.Text = "";
            DepartmentDDList.SelectedIndex = 0;
            ManagerDepartmentTextBox.SelectedIndex = 0;
            ToTextBox.Text = "";


        }


        /* Insert New Emloyee Details*/

        public void Insert()
        {
            Manager M = new Manager();
            DataSet Ds = new DataSet();
            DataTable dt = new DataTable();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    
                        

                    M.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd().ToUpper();


                    Ds = M.MANIDexists(M);
                    Label1.Text = Ds.Tables[0].Rows[0]["EmployeeId"].ToString();
             
                    if(Label1.Text=="1")
                    {
                        ErrorLabel.Text = "Check whether the manager id as a employe id";
                        Check = 0;
                    }
                    else
                    {

                        E.EmployeeId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd().ToUpper();
                        E.EmployeeName = EmployeeNameTextBox.Text.ToString().Trim();
                        E.Email = email.Text.ToString().Trim();
                        SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
                        E.DepartmentId = SIDepID.ToString();
                        E.DepartmentName = SIDepID.ToString();
                        E.ManagerId = ToTextBox.Text.ToString();


                        E.SupervisorInsert(E);
                        string myscript = "alert ('Supervisor Detail is Added');";
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                        Check = 1;
                        Response.Redirect("AddSupervisor.aspx");
                    }


                }
                else
                {
                    string myscript = "alert ('Check the Supervisor Detail');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }

            }
            catch (Exception e1)
            {
                // throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }


        /* Insert New Departmetn Details*/

       






        #endregion


        protected void AddDetailsSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                Insert();
                if (Check == 1)
                {
                    clear();
                }
                //Form.UnLoad();
            }
            catch (Exception e1)
            {

            }


        }



        protected void DepartmentPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                DepIdAutoGeneretion();

              
             
                clear();

                
            }
            catch (Exception e1)
            {

            }

        }


        #region Employee Id Search

        public void Spsearch()
        {
            try
            {

                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().Trim();

                    DataSet DS = new DataSet();
                    DS = E.Spsearch(E);
                    EmployeeNameTextBox.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    //DepartmentDDList.SelectedItem.Text = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    DepartmentDDList.SelectedValue = DS.Tables[0].Rows[0].ItemArray[2].ToString();

                    DID = Convert.ToInt32(DS.Tables[0].Rows[0].ItemArray[2].ToString());
                    string data = DepartmentDDList.SelectedItem.ToString();
                    string data1 = DepartmentDDList.SelectedIndex.ToString();
                    string data2 = DepartmentDDList.SelectedValue.ToString();

                    DDesID = Convert.ToInt32(DS.Tables[0].Rows[0].ItemArray[4].ToString());






                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter The Employee Id')", true);
                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }


        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Spsearch();
            EmployeeIdTextBox.Enabled = false;
        }
        #endregion


        #region Employee Update Process

        public void Update()
        {
            DataSet Ds = new DataSet();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd().ToUpper() ;
                    E.EmployeeName = EmployeeNameTextBox.Text.ToString().Trim();
                    E.Email = email.Text.ToString().Trim();
                    SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
                    E.DepartmentId = SIDepID.ToString();
                    E.SupervisorUpdate(E);
                    string myscript = "alert ('Supervisor Detail is Updated');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
                else
                {
                    string myscript = "alert ('Check The Employee Record');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {

                Update();
                clear();
            }
            catch (Exception e1)
            {
            }
        }

        #endregion






        //public void EmployeeTableView()
        //{
        //    DataSet Ds = new DataSet();
        //    Ds = E.EmployeeDetailAll();
        //    EmployeeGridView.DataSource = Ds.Tables[0];
        //    EmployeeGridView.DataBind();
        //}


        [WebMethod()]
        public static CESEmpEmailContents MCheckings(string emp)
        {


            DataBankManager DBM = new DataBankManager();
            CESEmpEmailContents EEC = new CESEmpEmailContents();
            DataSet DS = new DataSet();
            Manager M = new Manager();

            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {

                        M.IEmpId = emp.ToString();

                        DS = M.MAN_Details(M);
                        EEC.HEmployeeID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        EEC.HEmployeeName = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        EEC.Email = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        EEC.ErrorLabel = "0";


                    }

                    else if (emp == "")
                    {

                        EEC.ErrorLabel = "Check the Employee ID ";
                    }

                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return EEC;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

        [WebMethod]
        public static List<ListItem> MChecking(string idea)
        {
            Manager M = new Manager();
            List<ListItem> customers = new List<ListItem>();
            try
            {

                DataSet Ds = new DataSet();
                M.IdeaId = idea.ToString();

                Ds = M.DeptEwiseManagerNameSelect(M);
                for (int i = 0; i < Ds.Tables[0].Rows.Count; i++)
                {
                    customers.Add(new ListItem
                    {
                        Value = Ds.Tables[0].Rows[i]["EmpId"].ToString(),
                        Text = Ds.Tables[0].Rows[i]["Members"].ToString()
                    });
                }



            }
            catch (Exception e1)
            {

            }

            return customers;
        }
        [WebMethod()]
        public static EMtestDataPassers CMChecking(string cmid)
        {
            ManagerMaster M = new ManagerMaster();

            Employee E = new Employee();
            EMtestDataPassers tdp = new EMtestDataPassers();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((cmid != "") && (cmid != "System.Data.DataRowView"))
                    {
                        CMID = cmid.ToString().Trim();
                        Console.Write(cmid);
                        E.EmployeeId = cmid.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = E.Spsearch(E);

                        tdp.empid = cmid.ToString().TrimStart().TrimEnd();
                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        tdp.Email = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                     
                     

                    
                       

                        tdp.ErrorLabel = "0";
                    }

                    else if (cmid == "")
                    {

                        tdp.ErrorLabel = "Check the Employee ID ";
                    }
                    else
                    {
                        tdp.ErrorLabel = "1";
                    }

                }
                catch (Exception ex)
                {
                    tdp.ErrorLabel = "1";

                }
                return tdp;
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }
        [WebMethod]
        public static List<ListItem> ManagerFilter(string emp)
        {
            Manager M = new Manager();
            List<ListItem> customers = new List<ListItem>();
            try
            {

                DataSet Ds = new DataSet();
                M.IdeaId = emp.ToString();

                Ds = M.DeptEwiseManagerNameSelect(M);
                for (int i = 0; i < Ds.Tables[0].Rows.Count; i++)
                {
                    customers.Add(new ListItem
                    {
                        Value = Ds.Tables[0].Rows[i]["EmpId"].ToString(),
                        Text = Ds.Tables[0].Rows[i]["Members"].ToString()
                    });
                }



            }
            catch (Exception e1)
            {

            }

            return customers;
        }

        protected void DELETE_Click(object sender, EventArgs e)
        {
            Manager M = new Manager();
            try
            {

                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {

                    M.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd().ToUpper();
                    M.IDepID = DepartmentDDList.Text.ToString().TrimStart().TrimEnd();
                    M.SupervisorDetailDelete(M);
                    string myscript = "alert ('Supervisor Detail Deleted');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    // SuggestionTableView();
                    //Response.Redirect("HOSAdd.aspx");
                    clear();
                }
                else
                {
                    string myscript = "alert ('Employee ID Is Empty');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }


            }
            catch (Exception e1)
            {

            }
        }
    }
    }
