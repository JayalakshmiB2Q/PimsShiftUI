using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

using Newtonsoft.Json;
using System.Web.Script.Serialization;

namespace ProclainPIMSMaster.Form
{
    public class Allcommentsdetails
    {
        public string lbl_dbmemp { get; set; }
        public string lbl_com { get; set; }
        public string lbl_dbmman { get; set; }
        public string lbl_man { get; set; }
        public string lbl_impl { get; set; }
        public string lbl_hod { get; set; }
        public string lbl_ben { get; set; }
        public string lbl_finemp { get; set; }
        public string lbl_finimpl { get; set; }
    }


    public partial class HOSDashboard : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee em = new Employee();

        HOSModule hos = new HOSModule();

        static string SendID;
        static string[] ena;
        static string[] mail;
        static string index;
        static string us1;
        static string from;
        static string to;
        static string Fmail;
        static string TMail;
        static string TeamID = "";
        static string SIDepPopID;
        static string ProjectID;
        static string UserName;
        static string k;
        static int z = 0;
        static int y = 0;
        static string ComEvalSendID;
        static string Idea;
        static string rowId = "";
        string array1;
        string ds;
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

                        load();
                        fillDropdown();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }

        }
        #region Default Employee Details
        public void load()
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                us1 = Session["UserId"].ToString();

                DataSet Ds = new DataSet();
                em.EmployeeId = us1;

                em.CMID = us1.ToString();
                M.IEmpId = us1.ToString();
                M.DepId = "";
                Ds = hos.getEmailbyHOSId(us1);//em.ImplTeamEvalRepView(em);
                int c = Ds.Tables[0].Rows.Count;
                countnew.InnerHtml = c.ToString();
                MailRepeater.DataSource = Ds.Tables[0];
                // MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();

                Ds = hos.getEmailbyHOSIdFROMHR(us1);
                int fr = Ds.Tables[0].Rows.Count;
                countFROMHR.InnerHtml = fr.ToString();
                mailRepeaterHR.DataSource = Ds.Tables[0];
                // MailRepeater.SelectMethod = "IdeaId";
                mailRepeaterHR.DataBind();

                Ds = hos.getEmailbyHOSIdRSMAN(us1);
                int rm = Ds.Tables[0].Rows.Count;
                countRSMAN.InnerHtml = rm.ToString();
                mailRepeaterRSman.DataSource = Ds.Tables[0];
                // MailRepeater.SelectMethod = "IdeaId";
                mailRepeaterRSman.DataBind();

                Ds = hos.getEmailbyHOSIdSent(us1);
                int csent = Ds.Tables[0].Rows.Count;
                countsent.InnerHtml = csent.ToString();
                MailRepeatersent.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeatersent.DataBind();

                //Ds = hos.getEmailbyHOSIdhold(us1);
                //int chol = Ds.Tables[0].Rows.Count;
                //countNhold.InnerHtml = chol.ToString();
                //MailRepeaterMNotfeasible.DataSource = Ds.Tables[0];
                ////MailRepeater.SelectMethod = "IdeaId";
                //MailRepeaterMNotfeasible.DataBind();
            }
        }
        #endregion
        public void fillDropdown()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = hos.getBeneficiaryList("");
                if (Ds.Tables[0].Rows.Count > 0)
                {
                    //ddlBenifialTeam.DataSource = Ds;
                    //ddlBenifialTeam.DataTextField = "Name";
                    //ddlBenifialTeam.DataValueField = "SL_No";
                    //ddlBenifialTeam.DataBind();

                    //listHOD.DataSource = Ds;
                    //listHOD.DataTextField = "Name";
                    //listHOD.DataValueField = "SL_No";
                    //listHOD.DataBind();

                }
                //for(int i = 0; i <= 100; i++)
                //{
                //    int count = i + 5;
                //    scorecount.DataSource = count;
                //    scorecount.DataBind();
                //}
            }
            catch (Exception e1)
            {

            }

        }
        public void ComEvalSendIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalSendBoxAuto();
                ComEvalSendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

        }


        protected void Mailrepeater_cmd(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Session["IdeaID"] = e.CommandArgument.ToString();
                rowId = Session["IdeaID"].ToString();
                if (rowId != "")
                {
                    //MangerSearchMailContent();

                }
            }
        }
        [WebMethod()]
        public static CEmpEmailContents getDetails(string idea)

        {
            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();
            Manager MM = new  Manager();

            HOSModule hos = new HOSModule();
            try
            {


                index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();
                DS = hos.changeEmailbySno(idea, "header");
                idea = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                DS = hos.getEmailbySno(idea, "header");


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";






                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
                EECS.UpLoad4 = DS.Tables[0].Rows[0].ItemArray[27].ToString();
                EECS.iremark = DS.Tables[0].Rows[0].ItemArray[28].ToString();
                EECS.impid = DS.Tables[0].Rows[0].ItemArray[29].ToString();
                EECS.implname = DS.Tables[0].Rows[0].ItemArray[30].ToString();
                EECS.impdept = DS.Tables[0].Rows[0].ItemArray[31].ToString();
                EECS.impmail = DS.Tables[0].Rows[0].ItemArray[32].ToString();
                EECS.impdate = DS.Tables[0].Rows[0].ItemArray[33].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[34].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload4 = "../UI/Image/" + EECS.UpLoad4;
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Implementation Team Information ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                MM.IdeaId = idea.ToString();
                DS = MM.Supervisor_detailsDashBoard(MM);
                EECS.SUP_ID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EECS.SUP_Name = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                //EECS.SUP_Dept = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                EECS.SUP_MAIL = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.SUP_DAte = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SUP_Remark= DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EECS.SUP_Dept = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                string bbc = EECS.SResponse;
                if (bbc == "")
                {


                }
                else
                {
                    MM.IdeaId = idea.ToString();
                    DS = MM.HR_dtails_Mail_view(MM);
                    EECS.Reason1 = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    EECS.IEmpId1 = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    EECS.IEmpName1 = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    EECS.IDepID1 = DS.Tables[0].Rows[0].ItemArray[3].ToString();

                }

                return EECS;




            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

        [WebMethod]
        public static CEmpEmailContents getDetailsToMan(string idea)
        {
            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();



            HOSModule hos = new HOSModule();
            try
            {


                index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();

                DS = hos.getEmailbyIdea(idea, "header");


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";


                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;

                //EECS.UpLoad4 = DS.Tables[0].Rows[0].ItemArray[27].ToString();
                //// EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                //EECS.upload4 = "../UI/Image/" + EECS.UpLoad4;

                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Implementation Team Information ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[21].ToString();
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();




                return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }

        [WebMethod]
        public static string getFillGrid(string idea)
        {
            DataSet DS = new DataSet();

            HOSModule hos = new HOSModule();
            try
            {

                DS = hos.getEmailbySno(idea, "gridview");
            }
            catch (Exception e) { }
            return DS.GetXml();
        }


        [WebMethod()]
        public static CEmpEmailContents MailContent(string idea)
        {

            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();
            try
            {

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);
                index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();

                DS = em.ImplTeamRepViewUpatePannel(em);


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";

                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();

                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Reply ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[21].ToString();
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
            //DataSet DS = new DataSet();
            //DS = M.Repeatersearch(M);
            //fromTag.InnerHtml = "From : ";
            //EIDTag.InnerHtml = "Employee ID : ";
            //DepTag.InnerHtml = "Department : ";
            //DesTag.InnerHtml = "Designaton : ";
            //CatTag.InnerHtml = "Category : ";
            //BefTag.InnerHtml = "Before : ";
            //AftTag.InnerHtml = "After : ";
            //BenTag.InnerHtml = "Benefits : ";

            //EmployeeNameTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //EmployeeIDTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            //DepartmentTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[2].ToString();
            //DesignationTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[3].ToString();

            //TimeTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[4].ToString();
            //CategoryTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[5].ToString();
            //SubjectTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[6].ToString();
            //BeforeTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[7].ToString();
            //AfterTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[8].ToString();
            //BenefitsTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[9].ToString();


        }


        [WebMethod()]
        public static CEmpEmailContents Checking(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContents tdp = new CEmpEmailContents();
            DataBankManager DBM = new DataBankManager();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        Console.Write(emp);

                        DBM.IEmpId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = DBM.EmpIDSearch(DBM);

                        tdp.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                    }

                    else
                    {

                    }
                    return tdp;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }



        [WebMethod()]
        public static CEmpEmailContents CheckingUpdate(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContents tdp = new CEmpEmailContents();
            DataBankManager DBM = new DataBankManager();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        Console.Write(emp);

                        DBM.IdeaId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = DBM.ComEvalUpdateDashboardProcess(DBM);

                        tdp.Type = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        tdp.Reason = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Response = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Sempname = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();


                    }

                    else
                    {

                    }
                    return tdp;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }
        protected void ApproveButton_Click(object sender, EventArgs e)
        {
            try
            {
                ComEvalSendIDAutoGeneration();
                insert();

            }
            catch (Exception e1)
            {

            }

        }
        public void insert()
        {
            try
            {
                if (index != "" && index != "System.Data.DataRowView")
                {
                    DBM.ComInboxID = index.ToString();
                    DBM.Status = "Accepted";
                    //DBM.Suggestion = RBTApTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.Reason = "Accepted";
                    DBM.ComiteeResponse(DBM);

                    string myscript = "alert ('Thanks For Response');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
                else
                {
                    string myscript = "alert ('Forget To Select the IDea ID');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception e1)
            {

            }

        }

        public void Rejinsert()
        {
            try
            {
                if (index != "" && index != "System.Data.DataRowView")
                {
                    DBM.ComInboxID = index.ToString();
                    DBM.Status = "Rejected";
                    //DBM.Suggestion = RemarkByTeamTextBox.Text.ToString().TrimStart().TrimEnd();
                    //DBM.Reason = ReasonTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.ComiteeResponse(DBM);

                    string myscript = "alert ('Thanks For Response');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
                else
                {
                    string myscript = "alert ('Forget To Select the IDea ID');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception e1)
            {

            }

        }
        /*
        public void Upinsert()
        {
            if (index != "" && index != "System.Data.DataRowView")
            {
                DBM.ComInboxID = index.ToString();
                string check;
                check =
                check = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                DBM.Status = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                if (check == "Accepted")
                {
                    DBM.Reason = "NULL";
                }
                else
                {
                    DBM.Reason = ReasonRejTextBox.Text.ToString().TrimStart().TrimEnd();
                }
                DBM.Suggestion = ResponseTextBox.Text.ToString().TrimStart().TrimEnd();

                DBM.ComiteeResponse(DBM);

                string myscript = "alert ('Thanks For Response');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            else
            {
                string myscript = "alert ('Forget To Select the IDea ID');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

            }
        }
        */

        protected void RejectPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                ComEvalSendIDAutoGeneration();
                Rejinsert();
            }
            catch (Exception e1)
            {

            }

        }
        protected string Values1;
        protected string Values2;
        protected void UpdateButton_Click(object sender, EventArgs e)
         {

            string IdeaId = Request.Form["IdeaId"];
            string txtMailBody = Request.Form["txtMailBody"];
            string value = RadioButtonList1.SelectedValue;
            string txtMailSubjec = txtMailSubject.Text.ToString();
            if (value == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please Select Approved or Re-Send','warning')", true);
            }
            else
            {
                if (value == "APPROVED")
                {
                    try
                    {
                        string ImplementsJSON = Request.Form["ImplementationTeam"];
                        DataTable dt = JsonConvert.DeserializeObject<DataTable>(ImplementsJSON);


                        //string[] managerName = Request.Form.GetValues("managerName");
                        //string[] managerEmail = Request.Form.GetValues("managerEmail");

                        string gradeText = Request.Form["gradeText"];
                        string gradeSub = Request.Form["gradeSub"];
                        string gradeVal = Request.Form["gradeVal"];

                        string senderID = Request.Form["empID"];
                        string senderMail = Request.Form["empMailID"];
                        string recivedDate = Request.Form["recivedDate"];

                        //if (managerName == null )
                        //{
                        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please select Beneficiary then click Add','warning')", true);
                        //}
                        if (txtMailSubjec == null || txtMailSubjec == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please enter subject box','warning')", true);
                        }
                        else if (txtMailBody == null || txtMailBody == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please enter comment box','warning')", true);
                        }
                        else
                        {

                            //for (int i = 0; i < managerName.Length; i++)
                            //{
                            //    string[] userData = managerName[i].Split('-');
                            //    string[] userMails = managerEmail[i].Split('-');
                            //    string reciverID = userMails[1] + "-" + userMails[2];
                            hos.sendMailToBenificials(senderMail, senderID, "", IdeaId, senderMail, "", txtMailSubject.Text, txtMailBody, "Accepted", "A", txtMailBody, "", gradeText, gradeSub + " - " + gradeVal, recivedDate);
                            //}
                            for (int j = 0; j < dt.Rows.Count; j++)
                            {
                                hos.UpdateEmployeeScore("Accepted", dt.Rows[j].ItemArray[0].ToString(), IdeaId, dt.Rows[j].ItemArray[4].ToString(), "");
                            }
                            hos.updateHOSMail("", senderID, IdeaId);

                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Sent to HR','success').then(function() {window.location = 'HOSDashboard.aspx'})", true);

                            //Response.Redirect("HOSDashboard.aspx");
                        }

                    }
                    catch (Exception e1)
                    {

                    }
                }
                if (value == "Notfeasible")
                {
                    try
                    {
                        if (txtMailBody == null || txtMailBody == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Please enter comment box')", true);
                        }

                        else
                        {
                            Notfeasible();
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','ADD to Not feasible ','success').then(function() {window.location = 'ManagerMail.aspx'})", true);
                            // Response.Redirect("ManagerMail.aspx",false);
                        }
                    }
                    catch (Exception e1)
                    {
                    }

                }
                if (value == "RESEND")
                {
                    try
                    {

                        if (txtMailSubjec == null || txtMailSubjec == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please enter subject box','warning')", true);
                        }
                        else if (txtMailBody == null || txtMailBody == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPs','Please enter comment box','warning')", true);
                        }
                        Resend_Manager();


                    }
                    catch (Exception e1)
                    {
                    }
                }

            }
            }
        
        //[WebMethod()]
        //public static Allcommentsdetails getcommentsdetails(string idea)
        //{
        //    string ch_dbmemp, ch_com, ch_dbmcom, ch_man, ch_impl;
        //    NewSuggestionModel NSM = new NewSuggestionModel();
        //    Employee E = new Employee();
        //    Allcommentsdetails Acs = new Allcommentsdetails();
        //    DataBankManager DBM = new DataBankManager();
        //    DataSet DS = new DataSet();
        //    try
        //    {
        //        DS = E.Allcomments(idea);
        //        ch_dbmemp = DS.Tables[0].Rows[0].ItemArray[2].ToString();
        //        if (ch_dbmemp == "")
        //        {
        //            Acs.lbl_dbmemp = "-No comments-";
        //        }
        //        else
        //        {
        //            Acs.lbl_dbmemp = ch_dbmemp;
        //        }
        //        ch_com = DS.Tables[0].Rows[0].ItemArray[3].ToString();
        //        if (ch_com == "")
        //        {
        //            Acs.lbl_dbmemp = "-No comments-";
        //        }
        //        else
        //        {
        //            Acs.lbl_dbmemp = ch_com;
        //        }
        //        //Acs.lbl_dbmemp = DS.Tables[0].Rows[0].ItemArray[2].ToString();
        //        //Acs.lbl_com = DS.Tables[0].Rows[0].ItemArray[3].ToString();
        //        Acs.lbl_dbmman = DS.Tables[0].Rows[0].ItemArray[4].ToString();
        //        Acs.lbl_man = DS.Tables[0].Rows[0].ItemArray[5].ToString();
        //        Acs.lbl_impl = DS.Tables[0].Rows[0].ItemArray[6].ToString();
        //        Acs.lbl_hod = DS.Tables[0].Rows[0].ItemArray[7].ToString();
        //        Acs.lbl_ben = DS.Tables[0].Rows[0].ItemArray[8].ToString();
        //        Acs.lbl_finemp = DS.Tables[0].Rows[0].ItemArray[9].ToString();
        //        Acs.lbl_finimpl = DS.Tables[0].Rows[0].ItemArray[10].ToString();
        //    }
        //    catch (Exception er)
        //    {

        //    }
        //    return Acs;
        //}
        public void Notfeasible()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = Request.Form["IdeaId"];
                MM.IEmpId = us1.ToString();
                MM.Discription = Request.Form["txtMailBody"];
                MM.HODEvaInsertNotfeasible(MM);
            }
            catch (Exception e1) { }

        }

        public void MANIdAutoGeneretion(string b)
        {
            DataSet DS = new DataSet();
            DS = MM.ManagerIDAuto(MM);
            us1 = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void MAN_Details(string c)
        {
            DataSet DS = new DataSet();
            DS = MM.MAN_Details(MM);
            ds = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            array1 = DS.Tables[0].Rows[0].ItemArray[2].ToString();
        }

        public void Resend_Manager()
        {
            DataSet Ds = new DataSet();
            try
            {
                NSDataPasser dp = new NSDataPasser();
                dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();

                MM.SendId = dp.sesid.ToString();

                MM.IdeaId = Request.Form["IdeaId"];
                MANIdAutoGeneretion(MM.IdeaId);
                MM.IEmpId = us1.ToString();
                MAN_Details(MM.IEmpId);
                MM.Subject = txtMailSubject.Text.ToString();
                MM.Discription = Request.Form["txtMailBody"];
                MM.TempMail = array1.ToString();
                MM.TempId = ds.ToString();
                MM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                MM.Remark1 = "i";
                MM.Remark2 = "RS-HOD";

                // MM.resend_Man(MM);
                MM.Manager_resend_InboxInsert(MM);
                //  MM.ManagerEvaInsertNotfeasible(MM);


            }
            catch (Exception e1) { }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','RESEND TO MANAGER ','success').then(function() {window.location = 'HOSDashboard.aspx'})", true);

        }

    }
}