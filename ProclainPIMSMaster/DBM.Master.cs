
using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProclainPIMSMaster
{
    public partial class DBM : System.Web.UI.MasterPage
    {
        RegistrationLogin RL = new RegistrationLogin();
        Mailling M = new Mailling();
        static string us;
        static string UserName;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                loginload();
                //DeptVisible();
               // Department_Wise_Enable_Func();
            }
            catch (Exception)
            {
                //Response.Redirect("Main.aspx");
                Response.Redirect("Main.aspx");
            }


        }
        public void ChangeTitle(string newTitle)
        {
            Page.Title = newTitle;
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            //Response.Redirect("Main.aspx");
            Response.Redirect("Main.aspx");
        }

        //public void DeptVisible()
        //{
        //    try
        //    {
        //        int i, value;
        //        string data;



        //        DataTO da = new DataTO();
        //        DataSet ds = new DataSet();
        //        SqlParameter OP1 = new SqlParameter("@empid", us.ToString());
        //        da.parameters.Add(OP1);
        //        ds = da.ExecuteDataset("EnableLinkManagerRole");
        //        for (i = 0; i < ds.Tables[0].Rows.Count; i++)
        //        {
        //            data = ds.Tables[0].Rows[i].ItemArray[0].ToString();
        //            if (data == "ADMINISTRATION")
        //            {
        //                ADMINISTRATION.Visible = true;
        //            }
        //            else if (data == "AFTERMARKET")
        //            {
        //                AFTERMARKET.Visible = true;
        //            }
        //            else if (data == "APPLICATION ENGINEERING")
        //            {
        //                APPLICATION.Visible = true;
        //            }
        //            else if (data == "FINANCE")
        //            {
        //                FINANCE.Visible = true;
        //            }
        //            else if (data == "HR")
        //            {
        //                HR.Visible = true;
        //            }
        //            else if (data == "INNOVATION")
        //            {
        //                INNOVATION.Visible = true;
        //            }
        //            else if (data == "IT")
        //            {
        //                IT.Visible = true;
        //            }
        //            else if (data == "LOGISTIC")
        //            {
        //                LOGISTIC.Visible = true;
        //            }
        //            else if (data == "MAINTENANCE")
        //            {
        //                MAINTENANCE.Visible = true;
        //            }
        //            else if (data == "MANUFACTURING ENGINEERING")
        //            {
        //                MANUFACTURING.Visible = true;
        //            }
        //            else if (data == "PLANT MANAGEMENT")
        //            {
        //                PLANT.Visible = true;
        //            }
        //            else if (data == "PRODUCTION")
        //            {
        //                PRODUCTION.Visible = true;
        //            }
        //            else if (data == "PRODUCTION ABU")
        //            {
        //                ABU.Visible = true;
        //            }
        //            else if (data == "PRODUCTION MBU")
        //            {
        //                MBU.Visible = true;
        //            }
        //            else if (data == "PRODUCTION POWERTRAIN")
        //            {
        //                POWERTRAIN.Visible = true;
        //            }
        //            else if (data == "QUALITY")
        //            {
        //                QUALITY.Visible = true;
        //            }
        //            else if (data == "SALES & SALES SUPPORT")
        //            {
        //                SALES.Visible = true;
        //            }
        //            else if (data == "SOURCING")
        //            {
        //                SOURCING.Visible = true;
        //            }
        //            else if (data == "General Management")
        //            {
        //                GENERAL.Visible = true;
        //            }

        //            else
        //            {
        //                Response.Write("You are not assign to any role");
        //                Response.Redirect("Login.aspx");
        //            }

        //        }



        //    }
        //    catch (Exception e1)
        //    {

        //    }
        //}

        public void Department_Wise_Enable_Func()
        {
            try
            {

                int i, value;
                string data;



                DataTO da = new DataTO();
                DataSet ds = new DataSet();
                SqlParameter OP1 = new SqlParameter("@empid", us.ToString());
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
                    else if(value == 8 && data == "true")
                    {
                        Supervisor_dashboard.Visible = true;
                    }

                    else
                    {
                        //Response.Write("You are not assign to any role");
                        //Response.Redirect("Login.aspx");
                    }
                }



            }
            catch (Exception e1)
            {

            }


        }



        public void loginload()
        {
            if (Session["UserId"] == null)
            {
                //Response.Redirect("Main.aspx");
                Response.Redirect("Main.aspx");
            }
            else
            {
                us = Session["UserId"].ToString();
                if (us != "B2QBackEnd")
                {
                    if (us == "admin")
                    {
                        Session["UserName"] = "admin";
                        EmpNamespam.InnerText = Session["UserName"].ToString().TrimStart().TrimEnd();
                        Session["Designation"] = "Manager";
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



                        //DataSet Ds = new DataSet();
                        //RL.HEmployeeID = us;
                        //Ds = RL.LoginUserDetail(RL);
                        //Session["UserName"] = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        //Session["Department"] = Ds.Tables[0].Rows[0].ItemArray[3].ToString();
                        //Session["Designation"] = Ds.Tables[0].Rows[0].ItemArray[4].ToString();
                        //Session["Email"] = Ds.Tables[0].Rows[0].ItemArray[5].ToString();
                        //Session["Password"] = Ds.Tables[0].Rows[0].ItemArray[6].ToString();

                        //EmpNamespam.InnerText = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                        //Ds = M.DepartmetnRepeterView(M);
                        //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                        //Ds = M.SelectRepeterView();
                        //MailRepeater.DataSource = Ds.Tables[0];
                        ////MailRepeater.SelectMethod = "IdeaId";
                        //MailRepeater.DataBind();
                    }
                    else
                    {
                        DataSet Ds = new DataSet();
                        RL.HEmployeeID = us;
                        Ds = RL.LoginUserDetail(RL);
                        Session["UserName"] = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        Session["Department"] = Ds.Tables[0].Rows[0].ItemArray[3].ToString();
                        Session["Designation"] = Ds.Tables[0].Rows[0].ItemArray[4].ToString();
                        Session["Email"] = Ds.Tables[0].Rows[0].ItemArray[5].ToString();
                        Session["Password"] = Ds.Tables[0].Rows[0].ItemArray[6].ToString();

                        EmpNamespam.InnerText = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                        Ds = M.DepartmetnRepeterView(M);
                        M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                        Ds = M.SelectRepeterView();
                        MailRepeater.DataSource = Ds.Tables[0];
                        //MailRepeater.SelectMethod = "IdeaId";
                        MailRepeater.DataBind();
                    }



                }
                else
                {

                }

            }



        }

        protected void ADMINISTRATION_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "1";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void AFTERMARKET_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "2";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void APPLICATION_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "3";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void FINANCE_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "4";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void HR_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "5";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void INNOVATION_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "6";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void IT_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "7";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void LOGISTIC_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "8";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void MAINTENANCE_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "9";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void MANUFACTURING_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "10";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void PLANT_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "11";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void PRODUCTION_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "12";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void ABU_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "13";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void MBU_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "14";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void POWERTRAIN_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "15";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void QUALITY_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "16";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void SALES_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "17";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void SOURCING_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "18";
            Response.Redirect("ManagerMail.aspx");
        }

        protected void GENERAL_Click(object sender, EventArgs e)
        {
            Session["ManDep"] = null;
            Session["ManDep"] = "19";
            Response.Redirect("ManagerMail.aspx");
        }
    }
}