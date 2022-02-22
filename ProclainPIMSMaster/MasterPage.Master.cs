using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;

using ProclainPIMSMaster.Models;
using System.Data;

namespace ProclainPIMSMaster
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        Employee em = new Employee();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["UserId"].ToString() == "admin")
                {
                    string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                    Session["UserName"] = "admin";
                    lblempname.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                }
                else
                {
                    
                    lblempname.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                    string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                    Session["Email"].ToString().TrimStart().TrimEnd();
                    DataSet Ds = new DataSet();
                    
                    em.CMID = lbl.ToString();
                    Ds = em.ImplTeamEvalRepView(em);
                    int ccom = Ds.Tables[0].Rows.Count;
                    countcom.InnerHtml = ccom.ToString();
                    if (Session["UserId"].ToString() == "PI-266" || Session["UserId"].ToString() == "PI-315" || Session["UserId"].ToString() == "PI-273")
                    {
                        Department_Wise_Enable_Func();
                        employee_dashboard.Visible = true;
                        DBM_dashboard.Visible = true;
                    }
                    else if (Session["UserId"].ToString() == "PI-235")
                    {
                        Department_Wise_Enable_Func();
                        employee_dashboard.Visible = true;
                        finance_dashboard.Visible = true;

                    }
                    else if (Session["UserId"].ToString() != "pi-242" && Session["UserId"].ToString() != "PI-242")
                    {

                        Department_Wise_Enable_Func();
                        employee_dashboard.Visible = true;
                    }

                    else
                    {
                        hr_dashboard.Visible = true;
                        Department_Wise_Enable_Func();
                        employee_dashboard.Visible = true;
                    }
                }
               
            }
            catch (Exception E1)
            {
                //Response.Redirect("Main.aspx");
                Response.Redirect("Main.aspx");
            }


        }

        public void Department_Wise_Enable_Func()
        {
            try
            {

                int i, value;
                string data;

                if (Session["UserId"].ToString() == "admin")
                {
                    manager_Dashboard.Visible = true;
                    hod_dashboard.Visible = true;
                    employee_dashboard.Visible = true;
                    hr_dashboard.Visible = true;
                    finance_dashboard.Visible = true;
                    employee_dashboard.Visible = true;
                }
                else
                {

                    DataTO da = new DataTO();
                    DataSet ds = new DataSet();
                    SqlParameter OP1 = new SqlParameter("@empid", Session["UserId"].ToString());
                    da.parameters.Add(OP1);
                    ds = da.ExecuteDataset("deptdashboardlink");
                    for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        value = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[0].ToString());
                        data = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                        //if (value == 1 && data == "true")
                        //{
                        //    //comlogin.Visible = true;

                        //}
                        if (value == 2 && data == "true")
                        {
                            //hodlogin.Visible = true;
                            manager_Dashboard.Visible = true;
                        }
                        //else if (value == 3 && data == "true")
                        //{
                        //    implogin.Visible = true;
                        //}
                        else if (value == 4 && data == "true")
                        {
                            //hoslogin.Visible = true;
                            hod_dashboard.Visible = true;
                        }
                        //else if (value == 5 && data == "true")
                        //{
                        //    benlogin.Visible = true;
                        //}
                        //else if (value == 6 && data == "true")
                        //{
                        //    lnkDBA.Visible = true;
                        //}
                        else if (value == 7 && data == "true")
                        {
                            //emplogin.Visible = true;
                            employee_dashboard.Visible = true;
                        }
                        else if (value == 8 && data == "true")
                        {
                            //emplogin.Visible = true;
                            Supervisor_dashboard.Visible = true;
                        }

                        else
                        {
                            //Response.Write("You are not assign to any role");
                            //Response.Redirect("Login.aspx");
                        }
                    }
                }



            }
            catch (Exception e1)
            {

            }


        }


        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            //Response.Redirect("Main.aspx");
            Response.Redirect("Main.aspx");
        }
    }
}