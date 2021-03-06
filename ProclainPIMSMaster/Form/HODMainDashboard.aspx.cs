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
    public partial class HODMainDashboard : System.Web.UI.Page
    {
        Mailling M = new Mailling();     
        Manager MM = new Manager();
        Employee E = new Employee();
        RegistrationLogin RL = new RegistrationLogin();
        static String us1;
        int EMPDBM;
        int com;
        int Super;
        int DBMHOD;
        int hod;
        int imp;
        int hos;
        int ben;
        int fin;
        int newHos;
        int notfes;
        int approvedHos;
        int totalHos;
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
                   
                    bindgraphNew();
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

                    Ds = M.ManagerSelectRepeterView(M);
                    int c = Ds.Tables[0].Rows.Count;
                    count.InnerHtml = c.ToString();
                   
                    //Ds = M.ManagerSelectRepeterViewassigned(M);
                    //int cass = Ds.Tables[0].Rows.Count;
                    //countass.InnerHtml = cass.ToString();
                 

                    Ds = M.ManagerSelectRepeterViewcomplete(M);
                    int ccom = Ds.Tables[0].Rows.Count;
                    countcom.InnerHtml = ccom.ToString();

                    Ds = M.ManagerSelectRepeterViewFromImpl(M);
                    int crej = Ds.Tables[0].Rows.Count;
                    countFromImpl.InnerHtml = crej.ToString();

                    //Ds = M.ManagerSelectRepeterViewhold(M);
                    //int chol = Ds.Tables[0].Rows.Count;
                    //counthold.InnerHtml = chol.ToString();


                    //Ds = M.ManagerSelectRepeterViewotherdept(M);
                    //  int cotr = Ds.Tables[0].Rows.Count;
                    //  countotr.InnerHtml = cotr.ToString();

                    Ds = M.ManagerSelectRepeterViewresend_hod(M);
                    int crs_h = Ds.Tables[0].Rows.Count;
                    countRS_HOD.InnerHtml = crs_h.ToString();
                 
                   
                  
                   TeamDetailView();

                }
            }
            catch (Exception e1)
            {

            }

        }
        //public void SuggestionTableView()
        //{
        //    E.GridReceiverID = us1.ToString();
        //    DataSet Ds = new DataSet();
        //    Ds = E.HODGridviewDashboard(E);
        //    //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
        //    //  {
        //    SuggestionGridView.DataSource = Ds.Tables[0];
        //    SuggestionGridView.DataBind();




        //}
        //public void SuggestionCounts()
        //{
        //    E.CountReceiverID = us1.ToString();
        //    DataSet Ds = new DataSet();

        //    E.Type = "counts";


        //    Ds = E.HODCountDashboard(E);
        //    spanNew.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
        //    //spanRejected.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
        //    spanNotFeas.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
        //    spanApproved.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
        //    spanTotal.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[3].ToString();




        //}
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
        protected void FilterReport_Click(object sender, EventArgs e)
        {

            //Iframe1.Attributes.Add("src", "");
            //Page.ClientScript.RegisterStartupScript(GetType(), "modelBox", "$("#myModal").modal('show');", true);
        }
       
        public void loader()
        {
            //HttpWebRequest myRequest;
            //HttpWebResponse myResponse = null;
            //XmlDocument MyXMLdoc = null;

            //myRequest = (HttpWebRequest)WebRequest.Create("http://www.google.com/ig/api" +
            //    "?weather=" + string.Format("Puducherry"));
            //myResponse = (HttpWebResponse)myRequest.GetResponse();
            //MyXMLdoc = new XmlDocument();
            //MyXMLdoc.Load(myResponse.GetResponseStream());
        }
    }

}