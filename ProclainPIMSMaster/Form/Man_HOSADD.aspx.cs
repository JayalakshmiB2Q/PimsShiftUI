using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace ProclainPIMSMaster.Form
{
    [System.Web.Script.Services.ScriptService]
    public partial class Man_HOSADD : System.Web.UI.Page
    {

        DataBankManager DBM = new DataBankManager();
        Manager M = new Manager();
        static string ManID;
        static string SIDepID;
        static string SIDesID;
        static int i = 0;

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
                    if (!IsPostBack)
                    {
                        SuggestionTableView();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }

        }
        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = M.HODGridView();
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
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
        public void ComEvalInboxIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = M.HODIdAuto();
                ManID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                insert();
                if (i == 1)
                {
                    clear();
                }
            }
            catch (Exception e1)
            {

            }



        }
        public void clear()
        {
            EmployeeIdTextBox.Text = "";
            EmployeeTextBox.Text = "";
            DepartmentTextBox.Text = "";
            DesignationTextBox.Text = "";
        }
        public void insert()
        {
            try
            {

                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    ComEvalInboxIDAutoGeneration();
                    M.TeamID = ManID;
                    M.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();
                    M.IEmpName = EmployeeTextBox.Text.ToString().TrimStart().TrimEnd();
                    M.IDepID = DepartmentTextBox.Text.ToString().TrimStart().TrimEnd();
                    M.TeamCount = DesignationTextBox.Text.ToString().TrimStart().TrimEnd();
                    M.Remark1 = "i";
                    M.HODDetailInsert(M);
                    string myscript = "alert ('HOD Detail Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    SuggestionTableView();
                    i = 1;
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

        [WebMethod()]
        public static MtestDataPasser Checking(string emp)
        {

            Manager M = new Manager();
            Employee E = new Employee();
            MtestDataPasser tdp = new MtestDataPasser();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((emp != "") && (emp != "System.Data.DataRowView"))
                    {
                        Console.Write(emp);

                        M.IEmpId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = M.EmpIDSearch(M);


                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        SIDepID = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                        tdp.ErrorLabel = "0";
                        //SuggestionTableView();
                    }

                    else if (emp == "")
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

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {

                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {

                    M.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();

                    M.HODDetailDelete(M);
                    string myscript = "alert ('HOD Detail Deleted');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    SuggestionTableView();
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