using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{

    public class EmpEmailContents
    {
        public string DBM { get; set; }

        public string DBMlbl { get; set; }
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Date { get; set; }
        public string category { get; set; }
        public string subject { get; set; }
        public string Before { get; set; }
        public string After { get; set; }
        public string Benifit { get; set; }
        public string status { get; set; }
        public string UpLoad1 { get; set; }
        public string UpLoad2 { get; set; }
        public string UpLoad3 { get; set; }
        public string ErrorLabel { get; set; }
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string Email { get; set; }
        public string DepartmentName { get; set; }
        public string fromTag { get; set; }
        public string EIDTag { get; set; }
        public string DepTag { get; set; }
        public string DesTag { get; set; }
        public string CatTag { get; set; }
        public string IdIdTag { get; set; }
        public string BefTag { get; set; }
        public string AftTag { get; set; }
        public string BenTag { get; set; }
        public string IdeaIdTag { get; set; }
        public string upl1Tag { get; set; }
        public string upl2Tag { get; set; }
        public string upl3Tag { get; set; }
        public string upload1 { get; set; }
        public string upload2 { get; set; }
        public string upload3 { get; set; }

        public string Description { get; set; }

    }
    [System.Web.Script.Services.ScriptService]
    public partial class ManagerMail : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        static string SendID;
        static string depid;
        static string[] ena;
        static string[] mail;
        static int index;
        static string us1="";
        static string TeamID = "";
        static string SIDepPopID;
        static string ProjectID;
        static string UserName;
        static string k;
        static int z = 0;
        static int y = 0;
        static string rowId="";
        static string TeamSel;
        static string ComEvalInboxID;
        static string extn;
        static string etn;
        static string path;
        string giud = Guid.NewGuid().ToString();
        static string ImageName;
        
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
                        if (Session["UserId"] != null)
                        {
                            NSDataPasser dp = new NSDataPasser();
                            dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();
                            Label8.Text = Session["ManDep"].ToString();
                          
                            M.IDepID = Label8.Text.ToString();
                        }
                        else
                        {
                            Response.Redirect("Login.aspx");
                        }
                        string b = Session["UserId"].ToString();
                        TeamDetailView();
                      
                        load();
                        // IMPDepartmentNameView();
                      //  MailingRepeterControl();


                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
           
            
        }
        //public void MailingRepeterControl()
        //{
        //    load();
        //}
        //#region Default Employee Details
        //public void load()
        //{
        //    try
        //    {
        //        if (Session["UserId"] == null)
        //        {
        //            Response.Redirect("Main.aspx");
        //        }
        //        else
        //        {
        //            us1 = Session["UserId"].ToString();

        //            if (us1 == "admin")
        //            {
        //                DataSet Ds = new DataSet();
        //                RL.HEmployeeID = us1;
        //                //Ds = RL.LoginUserDetail(RL);
        //                //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
        //                //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
        //                //Ds = M.DepartmetnRepeterView(M);
        //                //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

        //                Ds = M.SelectRepeterView();
        //                if (Ds == null)
        //                {
        //                    MailRepeater.DataSource = "No Record Found";
        //                }
        //                MailRepeater.DataSource = Ds.Tables[0];
        //                //MailRepeater.SelectMethod = "IdeaId";
        //                MailRepeater.DataBind();
        //            }
        //            else
        //            {
        //                DataSet Ds = new DataSet();
        //                RL.HEmployeeID = us1;
        //                Ds = RL.LoginUserDetail(RL);
        //                UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
        //                M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
        //                Ds = M.DepartmetnRepeterView(M);
        //                M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

        //                Ds = M.SelectRepeterView();
        //                if (Ds == null)
        //                {
        //                    MailRepeater.DataSource = "No Record Found";
        //                }
        //                MailRepeater.DataSource = Ds.Tables[0];
        //                int c = Ds.Tables[0].Rows.Count;
        //                count.InnerHtml = c.ToString();
        //                //MailRepeater.SelectMethod = "IdeaId";
        //                MailRepeater.DataBind();

        //                FromDateTextBox.Text = System.DateTime.Now.Date.ToString("dd-MM-yyyy");
        //                ToDateTextBox.Text = System.DateTime.Now.Date.AddDays(30).ToString("dd-MM-yyyy");
        //                TeamDetailView();
        //            }


        //        }
        //    }
        //    catch (Exception EX)
        //    {

        //    }



        //}
        //#endregion




        #region Default Employee Details
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
                    string a = Label8.Text;
                    DataSet Ds = new DataSet();
                    RL.HEmployeeID = us1;
                    //Ds = RL.LoginUserDetail(RL);
                    //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    //Ds = M.DepartmetnRepeterView(M);
                    //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    M.IEmpId = us1.ToString();
                    M.DepId = depid.ToString();
                

                    Ds = M.ManagerSelectRepeterView(M);
                    int c = Ds.Tables[0].Rows.Count;
                    count.InnerHtml = c.ToString();
                    MailRepeater.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeater.DataBind();

                    //Ds = M.ManagerSelectRepeterViewassigned(M);
                    //int cass = Ds.Tables[0].Rows.Count;
                    //countass.InnerHtml = cass.ToString();
                    //MailRepeaterassigned.DataSource = Ds.Tables[0];
                    ////MailRepeater.SelectMethod = "IdeaId";
                    //MailRepeaterassigned.DataBind();

                    Ds = M.ManagerSelectRepeterViewcomplete(M);
                    int ccom = Ds.Tables[0].Rows.Count;
                    countcom.InnerHtml = ccom.ToString();
                    MailRepeatercomplete.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeatercomplete.DataBind();


                    //Ds = M.ManagerSelectRepeterViewhold(M);
                    //int chol = Ds.Tables[0].Rows.Count;
                    //counthold.InnerHtml = chol.ToString();
                    //MailRepeaterhold.DataSource = Ds.Tables[0];
                    ////MailRepeater.SelectMethod = "IdeaId";
                    //MailRepeaterhold.DataBind();

                    Ds = M.ManagerSelectRepeterViewFromImpl(M);
                    int crej = Ds.Tables[0].Rows.Count;
                    countFromImpl.InnerHtml = crej.ToString();
                    MailRepeaterFromIMPL.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeaterFromIMPL.DataBind();

                    //Ds = M.ManagerSelectRepeterViewotherdept(M);
                    //int cotr = Ds.Tables[0].Rows.Count;
                    //countotr.InnerHtml = cotr.ToString();
                    //MailRepeaterotherdept.DataSource = Ds.Tables[0];
                    ////MailRepeater.SelectMethod = "IdeaId";
                    //MailRepeaterotherdept.DataBind();

                    Ds = M.ManagerSelectRepeterViewresend_hod(M);
                    int crs_h = Ds.Tables[0].Rows.Count;
                    countRS_HOD.InnerHtml = crs_h.ToString();
                    MailRepeaterresend_hod.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeaterresend_hod.DataBind();

                   // Ds = M.ManagerSelectRepeterViewresendHR(M);
                   // int crs_hr = Ds.Tables[0].Rows.Count;
                   //// countRS_HR.InnerHtml = crs_hr.ToString();
                   // MailRepeaterresend_HR.DataSource = Ds.Tables[0];
                   // //MailRepeater.SelectMethod = "IdeaId";
                   // MailRepeaterresend_HR.DataBind();

                    FromDateTextBox.Text = System.DateTime.Now.Date.ToString("dd-MM-yyyy");
                    // ToDateTextBox.Text = System.DateTime.Now.Date.AddDays(30).ToString("dd-MM-yyyy");

                   
                }
            }
            catch (Exception e1)
            {

            }

        }
        #endregion

        public void TeamDetailView()
        {
            try
            {
                string depid = Session["ManDep"].ToString();
                MM.IDepID = depid.ToString();
                MM.TeamHead = Session["UserId"].ToString();
                DataSet Ds = new DataSet();


                Ds = MM.TeamMemDDList_GetDepId(MM);
               
                TeamNamePopUPDDList.DataSource = Ds.Tables[0];
                TeamNamePopUPDDList.DataTextField = "EmployeeName";
                TeamNamePopUPDDList.DataValueField = "EmployeeId";
                TeamNamePopUPDDList.DataBind();

            }
            catch (Exception e1)
            {
                 
            }
           
        }

        protected void MailRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Session["IdeaID"] = e.CommandArgument.ToString();
                rowId = Session["IdeaID"].ToString();
                if(rowId != "")
                {
                    //MangerSearchMailContent();
                }
            }
        }
        [WebMethod()]
        public static CEmpEmailContents MailContent(string idea)
        {

            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            Manager MM = new Manager();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();
            try
            {

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);
                MM.IdeaId = idea.ToString();
                M.IdeaId = idea.ToString();
                // em.IdeaID = us1.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();

                MM.IdeaId = idea.ToString();
                DS = MM.EmployeesubjectDashBoard(MM);
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[0].ToString();

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

               
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
              
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
              
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
               
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
               
                EECS.Reply = " Reply ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                EECS.iremark = DS.Tables[0].Rows[0].ItemArray[27].ToString();
                EECS.impid= DS.Tables[0].Rows[0].ItemArray[28].ToString();
               EECS.implname= DS.Tables[0].Rows[0].ItemArray[29].ToString();
              EECS.impdept = DS.Tables[0].Rows[0].ItemArray[30].ToString();
               EECS.impmail= DS.Tables[0].Rows[0].ItemArray[31].ToString();
                EECS.impdate = DS.Tables[0].Rows[0].ItemArray[32].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[33].ToString();
                string bbc = EECS.SResponse;
                if (bbc == "")
                {


                }
                else
                {
                    MM.IdeaId = idea.ToString();
                    DS = MM.HOD_dtails_Mail_view(MM);
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

        [WebMethod()]
        public static EmpEmailContents MailConten(string idea)
        {
            
            EmpEmailContents EECS = new EmpEmailContents();
            Mailling MM = new Mailling();
            Manager M=new Manager();
            DataSet DS = new DataSet();
            RegistrationLogin RL = new RegistrationLogin();
            try
            {
                
                
                MM.IdeaId = idea.ToString();
                M.IdeaId = idea.ToString();
                DS = M.EmployeesubjectDashBoard(M);
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[0].ToString();


                DS = MM.RepeatersearchCommitteeEval(MM);


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DBMlbl = "DBM";
                EECS.DepTag = "Department : ";
                EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";
                EECS.IdeaIdTag = idea.ToString();

                EECS.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[7].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
                EECS.Description = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.DBM = DS.Tables[0].Rows[0].ItemArray[15].ToString();
                return EECS;


            



                //EECS.fromTag = "From : ";
                //EECS.EIDTag = "Employee ID : ";
                //EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                //EECS.CatTag = "Category : ";
                //EECS.IdIdTag = "Idea ID: ";
                //EECS.BefTag = "Before : ";
                //EECS.AftTag = "After : ";
                //EECS.BenTag = "Benefits : ";
                //EECS.upl1Tag = "FileUpload1";
                //EECS.upl2Tag = "FileUpload2";
                ////EEC.upl3Tag = "FileUpload3";
                //EECS.IdeaIdTag = idea.ToString();

            //EECS.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //EECS.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            //EECS.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
            //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
            //EECS.Date = DS.Tables[0].Rows[0].ItemArray[4].ToString();
            //EECS.category = DS.Tables[0].Rows[0].ItemArray[5].ToString();
            //EECS.subject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
            //EECS.Before = DS.Tables[0].Rows[0].ItemArray[7].ToString();
            //EECS.After = DS.Tables[0].Rows[0].ItemArray[8].ToString();
            //EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[9].ToString();
            //EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[11].ToString();
            //// EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
            //EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
            //EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[12].ToString();
            ////EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
            //EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
            //EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[13].ToString();
            //// EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
            //EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
            //DS = MM.DBMReplyCE(MM);
            //string   chk = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            //   if (chk != "Empty")
            //   {
            //       EECS.RIdeaID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            //       EECS.REmpID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //       EECS.RMail = DS.Tables[0].Rows[0].ItemArray[2].ToString();
            //       EECS.RSub = DS.Tables[0].Rows[0].ItemArray[3].ToString();
            //       EECS.RCon = DS.Tables[0].Rows[0].ItemArray[4].ToString();
            //       string[] breakMysentence = EECS.REmpID.Split(',');
            //       string[] ena1 = new string[breakMysentence.Length];
            //       string n = "";
            //       foreach (string data in breakMysentence)
            //       {

            //           ena1[i] = data;
            //           i = i + 1;
            //           RL.HEmployeeID = data.ToString().TrimStart().TrimEnd();
            //           DS = RL.LoginSearch(RL);
            //           if (n != "")
            //           {
            //               n = n + ", " + DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //           }
            //           else
            //           {
            //               n = n + DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //           }


            //  }
            //       EECS.REmpName = n;
            // }







            //return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
            

        }

        

        public void DepIdAutoGeneretion()
        {
            DataSet DS = new DataSet();
            DS = MM.TeamIDAuto();
            SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void DepIdAuto(string idea)
        {
            DataSet DS = new DataSet();
            DS = MM.TeamIDAuto();
            SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void ComEvalInboxIDAutoGeneration()
        {
            DataSet DS = new DataSet();
            DS = MM.ComEvalInboxIDAuto();
            ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public string ComEvalInboxAutoID()
        {
            
                DataSet DS = new DataSet();
                DS = MM.ComEvalInboxIDAuto();
               return DS.Tables[0].Rows[0].ItemArray[0].ToString();
           
        }
        public void Insert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = mailidtext.Text.ToString();
                string array = EmpDepTextBox.Text.ToString();
                string ds = EmpIDTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
              //  DepIdAuto(DBM.IdeaId);
                DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {

                   // ComEvalInboxIDAutoGeneration();


                    MM.SendId = SendID.ToString();
                    MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    MM.HEmployeeName = us1.ToString();
                    MM.TempMail = array1.ToString();
                    MM.TempId = ds.ToString();
                    MM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    MM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    MM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    MM.Subject = subjecttext.Text.TrimStart().TrimEnd().ToString();
                    MM.Discription = ComposeTextBox.Text.TrimStart().TrimEnd().ToString();
                    // MM.TargetDate= ToDateTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.TargetDate = FromDateTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.Remark1 = "i";
                    MM.Remark2 = "Team";


                  //  MM.ComInboxID = "00";
                    MM.DBMEmail = Session["Email"].ToString();
                    
                    MM.TeamInboxInsert(MM);





                }
                MM.ManagerEvaInsert(MM);
                
                //string myscript = "alert ('Mail Send ImplementTeam');";
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Suggestion','Assinged to own team','Success')", true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        public void Clear()
        {
            TOIMPTextBox.Text = "";
            EmpIDIMPTextBox.Text = "";
            DupEmpIDIMPTextBox.Text = "";
            MailIdIMPTextBox.Text = "";
            SubjectIMPTextBox.Text = "";
            // ContectIMPTextBox.Text = "";
            // IMPDepaDLists.SelectedIndex = 0;
            ReassignCmts.Text = "";
        }
         [WebMethod]
        public static CESEmpEmailContents MChecking(string idea,string dep)
        {
            CESEmpEmailContents EEC = new CESEmpEmailContents();
            DataSet DS = new DataSet();
            Manager M = new Manager();

            try
            {

                try
                {

                    if (dep != "" && dep != "System.Data.DataRowView" )
                    {

                       
                        M.IEmpName = idea.ToString();
                        M.IDepID = dep.ToString();
                     


                        DS = M.ManagerNameSelect(M);
                        EEC.HEmployeeID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        EEC.HEmployeeName = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        EEC.Email = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        EEC.ErrorLabel = "0";

                    }

                    else if (idea == "")
                    {

                        EEC.ErrorLabel = "Check the Employee ID ";
                    }

                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return EEC;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }
        [WebMethod]
        public static List<ListItem> ManagerFilter(string idea)
        {
            Manager M = new Manager();
            List<ListItem> customers = new List<ListItem>();
            try
            {
                
                DataSet Ds = new DataSet();
                M.IdeaId = idea.ToString();

                Ds = M.ManagerDDlFilter(M);
                for(int i=0;i<Ds.Tables[0].Rows.Count;i++)
                {
                    customers.Add(new ListItem
                    {
                        Value = Ds.Tables[0].Rows[i]["EmpId"].ToString(),
                        Text = Ds.Tables[0].Rows[i]["Members"].ToString()
                    });
                }
                

               
            }
            catch (Exception e1)
            {
                 
            }

            return customers;
        }
       
       


        protected void OwnTeamPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                string subject = subjecttext.Text.ToString();
                string cmd = ComposeTextBox.Text.ToString();
                string value = ImpCheckRadioButtonList.SelectedValue;
                if(value==null || value=="")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please select any one feasible or Not feasible','warning')", true);
                }
                if (value == "feas")
                    {
                        try
                        {
                        if (subject == null || subject == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter Subject box','warning')", true);
                        }
                        else if (cmd == null || cmd == "")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter comment box','warning')", true);
                        }

                        else
                        {
                            
                            Insert();
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Assinged to own team','success').then(function() {window.location = 'ManagerMail.aspx'})", true);
                            //  Response.Redirect("ManagerMail.aspx", false);
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
                        if (cmd == null || cmd == "")
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
                    if (ImpCheckRadioButtonList.SelectedValue == "alreadyimpl")
                    {
                        try
                        {
                            Alreadyimpl();
                           Response.Redirect("ManagerMail.aspx");
                        }
                        catch (Exception e1)
                        {
                        }

                    }
                
                
            }
            catch(Exception e1)
            {

            }
            
        }
        public void Notfeasible()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                MM.IEmpId = us1.ToString();
                MM.Discription= ComposeTextBox.Text.TrimStart().TrimEnd().ToString();
                MM.ManagerEvaInsertNotfeasible(MM);
            }
            catch (Exception e1) { }
        }
        public void Alreadyimpl()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                MM.ManagerEvaInsertNotAlreadyimpl(MM);
            }
            catch (Exception e1) { }
        }
        [WebMethod()]
        public static EmpEmailContents Checking(string emp)
        {


            
            EmpEmailContents EE = new EmpEmailContents();
            Manager M = new Manager();
            DataSet DS = new DataSet();
            int count;
            string ei;
            string en;
            string em;
            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                       

                        M.IEmpId = emp.ToString();
                        DS = M.EmployeeEmailDashBoard(M);
                        count = DS.Tables[0].Rows.Count;
                        if (DS != null || DS.Tables[0].Rows.Count > 0)
                        {
                            if (count == 1)
                            {
                                EE.EmployeeId = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                                EE.EmployeeName = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                                EE.Email = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                            }
                            else
                            {
                                for (int i = 0; i < count; i++)
                                {
                                    ei = DS.Tables[0].Rows[i].ItemArray[5].ToString();
                                    en = DS.Tables[0].Rows[i].ItemArray[3].ToString();
                                    em = DS.Tables[0].Rows[i].ItemArray[4].ToString();
                                    if (i < count - 1)
                                    {
                                        EE.EmployeeId = EE.EmployeeId + ei + ", ";
                                        EE.EmployeeName = EE.EmployeeName + en + ", ";
                                        EE.Email = EE.Email + em + ", ";
                                    }
                                    else
                                    {
                                        EE.EmployeeId = EE.EmployeeId + ei;
                                        EE.EmployeeName = EE.EmployeeName + en;
                                        EE.Email = EE.Email + em;
                                    }


                                }
                            }
                            EE.ErrorLabel = "0";
                        }
                        else if (emp == "")
                        {

                            EE.ErrorLabel = "Check the Employee ID ";
                        }
                        else
                        {
                            EE.ErrorLabel = "1";
                        }
                    }
                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return EE;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }
        public string ComEvalSendIDAutoGeneration()
        {
            string dataoutput = "";
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalSendBoxAuto();
                dataoutput= DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
            return dataoutput;


        }
        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                string subject = SubjectIMPTextBox.Text.ToString();
              //  string cmd = ContectIMPTextBox.Text.ToString();
                if (subject == null || subject == "")
                {
                   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter Subject box','warning')", true);
                }
                //else if (cmd == null || cmd == "")
                //{
                //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter comment box','warning')", true);
                //}
                
                else
                {
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Suggestion','Sent to Other department','success')", true);
                    //ManagerSentToOtherManager();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Sent to Other department','success').then(function() {window.location = 'ManagerMail.aspx'})", true);
                    // Response.Redirect("ManagerMail.aspx");
                }
               
            }
            catch (Exception e1)
            { 
            }
          
        }
       
        public void ManagerEvaluvationInsert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = MailIdIMPTextBox.Text.ToString();
                //string array = EmpDepTextBox.Text.ToString();
                string ds = EmpIDIMPTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
                DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {




                    MM.SendId = SendID.ToString();
                    MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    MM.HEmployeeName = us1.ToString();
                    MM.TempMail = array1.ToString();
                    MM.TempId = ds.ToString();
                    MM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    MM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    MM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    MM.Subject = SubjectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                  //  MM.Discription = ContectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.Remark1 = "i";
                    MM.Remark2 = "Manager";


                    MM.ComInboxID = ComEvalInboxID.ToString();
                    MM.DBMEmail = Session["Email"].ToString();
                    MM.ManagerInboxInsert(MM);





                }
                MM.ManagerEvaInsert(MM);
                string myscript = "alert ('Mail Send Manager');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void DBMButton_Click(object sender, EventArgs e)
        {
            try
            {
                string subject = DBMSubject.Text.ToString();
                string cmd = DBMRemark.Text.ToString();
                if (subject == null || subject == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Please enter subject box')", true);
                }
                else if (cmd == null || cmd == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Please enter comment box')", true);
                }
                
                else
                {
                    ManagerSentToDBM();
                    Response.Redirect("ManagerMail.aspx");
                }
               
            }
            catch (Exception e1)
            {
            }
        }
        public void ManagerSentToDBM()
        {
            DataSet Ds = new DataSet();
            try
            {


                // ComEvalInboxIDAutoGeneration();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Resend to DBM')", true);

                   DBM.IdeaId = DBMIdeaid.Text.ToString();
                    DBM.HEmployeeName = us1.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                
                    DBM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    
                    DBM.Subject = DBMSubject.Text.TrimStart().TrimEnd().ToString();
                    DBM.Discription = DBMRemark.Text.TrimStart().TrimEnd().ToString();
                    DBM.Remark1 = "i";
                    
                    
                    DBM.ManagerEvaInsert_DBM(DBM);



                
               
                string myscript = "alert ('Mail Send DBM');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                z = 1;

               
            }
            catch (Exception e1)
            {

                throw new Exception("Error Initializing Data Class." + Environment.NewLine + e1.Message);
            }
        }

        protected void ReassignOT_OR_FWDHOD_Click(object sender, EventArgs e)
        {
            try
            {
                string btnselectvalue = RadioButtonReassign.SelectedValue;
                string cmd = ReassignCmts.Text.ToString();
                if (btnselectvalue == null || btnselectvalue == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please select any one  Reassing or Forward to hod','warning')", true);
                }
                else
                {
                    if (cmd == null || cmd == "")
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter comment box','warning')", true);
                    }

                    else
                    {
                        if (btnselectvalue == "ReassignImpl")
                        {
                            try
                            {
                                ReassignImpl();
                                Response.Redirect("ManagerMail.aspx", false);
                            }
                            catch (Exception e1)
                            {
                            }
                        }
                        if (btnselectvalue == "ForwardHOD")
                        {
                            try
                            {
                                ForwardHOD();
                                // Response.Redirect("ManagerMail.aspx", false);
                            }
                            catch (Exception e1)
                            {
                            }

                        }
                    }

                }
            }
            catch (Exception e1)
            {

            }

        }

        protected void Response_Click(object sender, EventArgs e)
        {
            try
            {
              
                string cmd = TextBox4.Text.ToString();
               
                    if (cmd == null || cmd == "")
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('OOPS','Please enter comment box','warning')", true);
                    }

                    else
                    {
                       Response_to_hr();
                    }
                    

                
            }
            catch (Exception e1)
            {

            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','RESPONSE TO HR ','success').then(function() {window.location = 'ManagerMail.aspx'})", true);

        }

        public void ReassignImpl()
        {
            MM.IdeaId = ReassignIdeaId.Text.ToString();

            MM.Discription = ReassignCmts.Text.TrimStart().TrimEnd().ToString();
            MM.ManagerEvaInsertReassign(MM);
        }
        public void Response_to_hr()
        {
            MM.IdeaId = ReassignIdeaId.Text.ToString();
           
            MM.Discription = TextBox4.Text.TrimStart().TrimEnd().ToString();
            MM.Manager_Response_HR(MM);
        }
        public void ForwardHOD()
        {

            try
            {
                if (ImageFileUpload3.HasFile)
                {
                    if (ImageFileUpload3.PostedFile.ContentLength < 20728650)
                    {
                        extn = System.IO.Path.GetExtension(ImageFileUpload3.FileName);
                        // path = Server.MapPath("\\PIMS\\UI\\Image\\");
                        path = Server.MapPath("..\\UI\\Image\\");
                        ImageName = ImageFileUpload3.FileName;
                        ImageFileUpload3.SaveAs(path + ImageName);
                        etn = ImageName;
                        //Label1.Text = path;
                    }
                }
                else
                {
                    etn = "No File";
                }
                NSDataPasser dp = new NSDataPasser();
                dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();


                MM.SendId = dp.sesid.ToString();
                MM.FileUpload3 = etn.ToString();
                MM.IdeaId = ReassignIdeaId.Text.ToString();

                MM.Discription = ReassignCmts.Text.TrimStart().TrimEnd().ToString();
              //  MM.ManagerEvaInsertForwardHOD(MM);


                DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = MailIdIMPTextBox.Text.ToString();
                //string array = EmpDepTextBox.Text.ToString();
                string ds = TOIMPTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
                DBM.IdeaId = ReassignIdeaId.Text.ToString();
                    // DepIdAuto(DBM.IdeaId);
                    DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {

                    //  ComEvalInboxIDAutoGeneration();


                    DBM.SendId = SendID.ToString();
                   // DBM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    DBM.IdeaId = ReassignIdeaId.Text.ToString();
                    DBM.HEmployeeName = us1.ToString();
                    DBM.TempMail = array1.ToString();
                    DBM.TempId = ds.ToString();
                    DBM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    DBM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    DBM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    DBM.Subject = SubjectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Discription = ReassignCmts.Text.TrimStart().TrimEnd().ToString();
                    DBM.Remark1 = "i";
                    DBM.Remark2 = "Manager";
                    //string st = IMPDepaDLists.SelectedItem.Value;
                    //string[] res = st.Split(',');
                    // DBM.Remark3 = OthDepId.Text.ToString();

                    //  DBM.ComInboxID = this.ComEvalInboxAutoID();// ComEvalInboxID.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                        DBM.FileUpload3 = etn.ToString();
                        //   MM.ManagerEvaInsert(MM()
                        //   DBM.CMID = ComEvalSendIDAutoGeneration();
                        //DBM.ManagerEvaInsert_OtherSend(DBM);
                        DBM.HosInboxInsert(DBM);



                }
                //   DBM.ManagerEvaInsert_OtherSend(DBM);
                //string myscript = "alert ('Mail Send Manager');";
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                z = 1;
                DBM.ManagerEvaInsert(DBM);
                //MM.ManagerEvaInsert(MM);
                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {

                throw new Exception("Error Initializing Data Class." + Environment.NewLine + e1.Message);
            }



                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Send To Hod ','success').then(function() {window.location = 'ManagerMail.aspx'})", true);
               // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('SUGGESSTION','Send To Hod','success').then(function() {window.location = 'ManagerMail.aspx'})", true);
            }
            catch (Exception e1) { }
        }
    }
}