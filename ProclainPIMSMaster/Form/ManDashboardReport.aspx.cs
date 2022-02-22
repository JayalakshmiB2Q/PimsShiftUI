
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
    public partial class ManDashboardReport : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        Employee E = new Employee();
        RegistrationLogin RL = new RegistrationLogin();
        static String us1;
        int EMPDBM;
        int com;
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
                    bindgraph();                   
                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }
           
        }
   
     
      
      

        public void bindgraph()
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
                    int New = Ds.Tables[0].Rows.Count;

                 

                    Ds = M.ManagerSelectRepeterViewcomplete(M);
                    int To_HOD = Ds.Tables[0].Rows.Count;
                                    

                    Ds = M.ManagerSelectRepeterViewresend_hod(M);
                    int Resend_HOD = Ds.Tables[0].Rows.Count;

                    Ds = M.ManagerSelectRepeterViewFromImpl(M);
                    int countFromImpl = Ds.Tables[0].Rows.Count;
                   

                    string script = "bindgraph('" + New + "','" + To_HOD + "','"  + Resend_HOD + "','" + countFromImpl+"'); ";
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