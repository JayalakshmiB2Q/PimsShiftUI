using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster.Form
{
    public partial class CredentialView : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        RegistrationLogin RL = new RegistrationLogin();
        DataBankManager DBM = new DataBankManager();
        int SIDepID;
        int SIDesID;
        string Remark1 = "i";
        string Remark2 = "i";
        string P;
        string cp;
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
                if (!IsPostBack)
                {
                   
                    SuggestionTableView();

                    ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                    admaster.ChangeTitle("Add Credential Employees");

                }
                //Label1.Visible = false;
            }
            catch (Exception e1)
            {

            }

        }
        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("HODAdd.aspx");
            }
            catch (Exception e1)
            {

            }

        }
        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = DBM.HODDetailGridView();
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
    }
}