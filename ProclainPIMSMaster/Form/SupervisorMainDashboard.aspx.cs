
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

namespace ProclainPIMSMaster.Form
{
    public partial class SupervisorMainDashboard : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        Employee E = new Employee();
        RegistrationLogin RL = new RegistrationLogin();
        static String us1;
        int EMPDBM;
        int com;
        int DBMHOD;
        int Super;
        int hod;
        int imp;
        int hos;
        int ben;
        int fin;
        int newHos;
        int notfes;
        int approvedHos;
        int totalHos;
        int coun;
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


                    //SuggestionTableView();
                    //SuggestionCounts();

                    TeamDetailView();

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }
            load();
            bindgraphNew();

        }
        public void TeamDetailView()
        {
            try
            {
                MM.TeamHead = us1.ToString();
                DataSet Ds = new DataSet();


                Ds = MM.TeamMemDDList(MM);

                TeamNamePopUPDDList.DataSource = Ds.Tables[0];
                TeamNamePopUPDDList.DataTextField = "EmployeeName";
                TeamNamePopUPDDList.DataValueField = "EmpId";
                TeamNamePopUPDDList.DataBind();

            }
            catch (Exception e1)
            {

            }

        }
        public void load()
        {
            try
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();
                    string depid = Session["ManDep"].ToString();
                    DataSet Ds = new DataSet();
                    RL.HEmployeeID = us1;

                    M.IEmpId = us1.ToString();
                    M.DepId = depid.ToString();

                    Ds = M.SupervisorSelectRepeterView(M);
                    int c = Ds.Tables[0].Rows.Count;
                    count.InnerHtml = c.ToString();


                    Ds = M.ManagerSelectRepeterViewassigned(M);
                    int cass = Ds.Tables[0].Rows.Count;
                    countass.InnerHtml = cass.ToString();

                    Ds = M.ManagerSelectRepeterViewhold(M);
                    int chol = Ds.Tables[0].Rows.Count;
                    counthold.InnerHtml = chol.ToString();

                    Ds = M.ManagerSelectRepeterViewotherdept(M);
                    int cotr = Ds.Tables[0].Rows.Count;
                    countotr.InnerHtml = cotr.ToString();



                    TeamDetailView();

                }
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
        public void bindgraphNew()
        {
            try
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {

                    Mailling m = new Mailling();
                    DataSet Ds = new DataSet();
                    Ds = m.Barchart_get_details();
                    EMPDBM = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                    Super = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                    imp = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
                    hod = int.Parse(Ds.Tables[0].Rows[0].ItemArray[3].ToString());
                    hos = int.Parse(Ds.Tables[0].Rows[0].ItemArray[4].ToString());
                    ben = int.Parse(Ds.Tables[0].Rows[0].ItemArray[5].ToString());
                    fin = int.Parse(Ds.Tables[0].Rows[0].ItemArray[6].ToString());
                    us1 = Session["UserId"].ToString();

                    string script = "bindgraphNew('" + EMPDBM + "','" + Super + "','" + imp + "','" + hod + "','" + hos + "','" + ben + "','" + fin + "'); ";
                    ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);

                }
            }
            catch (Exception e1)
            {

            }
        }



        [System.Web.Services.WebMethod()]

        public static GraphItems getReport()
        {
            AddSuggestion A = new AddSuggestion();
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();


            GraphItems gra = new GraphItems();
            try
            {

                Mailling m = new Mailling();
                DataSet Ds = new DataSet();
                Ds = m.Barchart_get_details();
                gra.Com = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                gra.Hod = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                gra.Imp = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
                gra.Hos = int.Parse(Ds.Tables[0].Rows[0].ItemArray[3].ToString());
                gra.Ben = int.Parse(Ds.Tables[0].Rows[0].ItemArray[4].ToString());
                gra.Fin = int.Parse(Ds.Tables[0].Rows[0].ItemArray[5].ToString());

                return gra;

            }
            catch (Exception ex)
            {

                return gra;
            }


        }

    }

}