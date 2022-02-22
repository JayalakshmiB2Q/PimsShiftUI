using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    public class HOSModule
    {
        public string SL_No { get; set; }
        public string EmailID { get; set; }
        public string IDeaID { get; set; }
        public string EFrom { get; set; }
        public string ETo { get; set; }
        public string Date { get; set; }
        public string Subject { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string Dep { get; set; }
        public string Des { get; set; }
        public string HODID { get; set; }
        public string Remark2 { get; set; }
        public string Remark3 { get; set; }
        public string Remark4 { get; set; }
        public string Remark5 { get; set; }


        public DataSet getEmailbyHOSId(string hosid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            SqlParameter OP2 = new SqlParameter("@usercode", hosid);
            Da.parameters.Add(OP1);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("SP_Implementation_To_HOS_byCode");
            return Ds;

        }
        public DataSet getEmailbyHOSIdRSMAN(string hosid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            SqlParameter OP2 = new SqlParameter("@usercode", hosid);
            Da.parameters.Add(OP1);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[SP_RESEND_MAN_BY_HOS_byCode]");
            return Ds;

        }
        public DataSet getEmailbyHOSIdhold(string hosid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            SqlParameter OP2 = new SqlParameter("@usercode", hosid);
            Da.parameters.Add(OP1);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[HOD_mailview_hold]");
            return Ds;

        }
        public DataSet getEmailbyHOSIdFROMHR(string hosid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            SqlParameter OP2 = new SqlParameter("@usercode", hosid);
            Da.parameters.Add(OP1);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[SP_HR_To_HOS_byCode]");
            return Ds;

        }
        public DataSet getEmailbyHOSIdSent(string hosid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            SqlParameter OP2 = new SqlParameter("@usercode", hosid);
            Da.parameters.Add(OP1);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[SP_Implementation_To_HOS_byCode_Sent]");
            return Ds;

        }
        public DataSet getEmailbySno(string idea, string type)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@sno", idea);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("SP_HOS_Mail_getBySno");
            return Ds;


        }
        public DataSet changeEmailbySno(string idea, string type)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@idea", idea);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("sp_changeideIDinti_SLNO");
            return Ds;


        }
        public DataSet getEmailbyIdea(string idea, string type)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@sno", idea);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[SP_HOS_Mail_getByIdeaId]");
            return Ds;


        }
        public DataSet getManagerList(string type)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HOD_DDL");
            return Ds;


        }
        public DataSet getBeneficiaryList(string type)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_BEN_DDL");
            return Ds;


        }
        public DataSet sendMailToBenificials(string SenderMailID, string SenderID, string ReceiverID, string IDeaID, string EFrom, string ETo, string Subject, string Description, string Type, string Rating, string Comment, string Remark2, string Grade, string BenefitsMatrix, string date)
        {


            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@SenderMailID", SenderMailID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@SenderID", SenderID);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ReceiverID", ReceiverID);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@IDeaID", IDeaID);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@EFrom", EFrom);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@ETo", ETo);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@Subject", Subject);
            Da.parameters.Add(OP7);
            SqlParameter OP8 = new SqlParameter("@Description", Description);
            Da.parameters.Add(OP8);
            SqlParameter OP9 = new SqlParameter("@Type", Type);
            Da.parameters.Add(OP9);
            SqlParameter OP10 = new SqlParameter("@Rating", Rating);
            Da.parameters.Add(OP10);
            SqlParameter OP11 = new SqlParameter("@Comment", Comment);
            Da.parameters.Add(OP11);
            SqlParameter OP12 = new SqlParameter("@Remark2", Remark2);
            Da.parameters.Add(OP12);
            SqlParameter OP13 = new SqlParameter("@Grade", Grade);
            Da.parameters.Add(OP13);
            SqlParameter OP14 = new SqlParameter("@BenefitsMatrix", BenefitsMatrix);
            Da.parameters.Add(OP14);
            SqlParameter OP15 = new SqlParameter("@date", date);
            Da.parameters.Add(OP15);
            Ds = Da.ExecuteDataset("SP_HOS_Mail_Send");
            return Ds;


        }
        public DataSet UpdateEmployeeScore(string type, string empid, string ideaid, string grade, string extra)
        {


            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@empid", empid);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ideaid", ideaid);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@grade", grade);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@extra", extra);
            Da.parameters.Add(OP5);
            Ds = Da.ExecuteDataset("SP_Implementation_team_Score_Update");
            return Ds;


        }
        public DataSet updateHOSMail(string type, string empid, string ideaid)
        {


            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@empid", empid);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ideaid", ideaid);
            Da.parameters.Add(OP3); 
            Ds = Da.ExecuteDataset("SP_HOS_update_Idea_info");
            return Ds;


        }

        public DataSet resendHR_HOD(string discription, string subject, string ideaid)
        {


            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@Description", discription);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@subject", subject);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ideaid", ideaid);
            Da.parameters.Add(OP3);
            Ds = Da.ExecuteDataset("SP_Resend_Hr_Hod");
            return Ds;


        }
        public DataSet resendHR_MANAGER(string discription, string subject, string ideaid)
        {


            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@Description", discription);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@subject", subject);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ideaid", ideaid);
            Da.parameters.Add(OP3);
            Ds = Da.ExecuteDataset("SP_Resend_Hr_MANAGER");
            return Ds;


        }
    }
}