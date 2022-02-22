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
    public class MtestDataPasserss
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Memberof { get; set; }
        public string Other { get; set; }
        public string ErrorLabel { get; set; }
        public string DupCheck { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class HODView : System.Web.UI.Page
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

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("HOSAdd.aspx");
            }
            catch (Exception e1)
            {

            }

        }





    }
}