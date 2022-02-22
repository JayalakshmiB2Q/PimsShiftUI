
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
    public partial class HODGraphReport : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        Employee E = new Employee();
        HOSModule ho = new HOSModule();
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

                    DataSet Ds = new DataSet();
                    E.EmployeeId = us1;

                    E.CMID = us1.ToString();
                    M.IEmpId = us1.ToString();
                    M.DepId = "";
                    Ds = ho.getEmailbyHOSId(us1);//em.ImplTeamEvalRepView(em);
                    int c = Ds.Tables[0].Rows.Count;
                                     
                    Ds = ho.getEmailbyHOSIdFROMHR(us1);
                    int fr = Ds.Tables[0].Rows.Count;

                    Ds = ho.getEmailbyHOSIdRSMAN(us1);
                    int rm = Ds.Tables[0].Rows.Count; 
                                     
                    Ds = ho.getEmailbyHOSIdSent(us1);
                    int csent = Ds.Tables[0].Rows.Count;                 

                                                   
                string script = "bindgraph('" + c + "','" + fr + "','" + rm + "','" + csent +  "'); ";
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