
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
    public partial class HODBarchart : System.Web.UI.Page
    {
        Mailling M = new Mailling();


        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        Manager MM = new Manager();
        Employee E = new Employee();
        HOSModule ho = new HOSModule();
        static String us1;
        int EMPDBM;

        int hod;
        int imp;
        int hos;
        int ben;
        int fin;
        int newHos;
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
                    
                  

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
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


                    string script = "bindgraphNew('" + c + "','" + fr + "','" + rm + "','" + csent + "'); ";

                    ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);

                }
            }
            catch (Exception e1)
            {

            }
        }

      
    }

}