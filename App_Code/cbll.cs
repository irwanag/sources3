using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

    public class cbll
    {
        cdal dal = new cdal();

        public void vInsertUserProfile(List<cArrayList> arr)
        {
            dal.vExecuteSP("sp_tuser_profile_ins", arr);
        }
        public void vGetMstItem(ref SqlDataReader rs)
        {
            dal.vGetRecordsetSP("sp_tmst_item_get", ref rs);
        }
        public void vInsertMstItem(List<cArrayList> arr)
        {
            dal.vExecuteSP("sp_tmst_item_ins", arr);
        }
        public void vGetMstVendor(ref SqlDataReader rs)
        {
            dal.vGetRecordsetSP("sp_tmst_vendor_get", ref rs);
        }
        public void vInsertMstVendor(List<cArrayList> arr)
        {
            dal.vExecuteSP("sp_tmst_vendor_ins", arr);
        }
        public void vBindingGridToSp(ref GridView grd, string sSPName)
        {
            SqlDataReader rs = null;
            dal.vGetRecordsetSP(sSPName, ref rs);
            DataTable dta = new DataTable();
            dta.Load(rs);
            grd.DataSource = dta.DefaultView;
            grd.DataBind();
        }
        public void vGetMstGroupVendor(ref SqlDataReader rs)
        {
            dal.vGetRecordsetSP("sp_tmst_group_vendor_get", ref rs);
        }
        public void vInsertMstGroupVendor(List<cArrayList> arr)
        {
            dal.vExecuteSP("sp_tmst_group_vendor_ins", arr);
        }
            public string vLookUp(string sSQL)
        {
            string sTemp = "";
            SqlDataReader rs = null;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cd.getConnection();
            cmd.CommandText = sSQL;
            cmd.CommandType = CommandType.Text;
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                sTemp = rs[0].ToString();
            }
            rs.Close();
            return (sTemp);
        }


        public string sGetControlParameter(string sParmName)
        {
            string sTemp = "";
            List<cArrayList> arr = new List<cArrayList>();
            SqlDataReader rs = null;
            arr.Add(new cArrayList("@parm_nm", sParmName));
            dal.vGetRecordsetSP("sp_tcontrol_parameter_get", ref rs, arr);
            while (rs.Read())
            {
                sTemp = rs["parm_valu"].ToString();
            }
            rs.Close();
            return (sTemp);
        }

        public string sGetMessage(string sMsgID)
        {
            string sTemp = "";
            List<cArrayList> arr = new List<cArrayList>();
            SqlDataReader rs = null;
            arr.Add(new cArrayList("@msg_id", sMsgID));
            dal.vGetRecordsetSP("sp_tmessage_get", ref rs, arr);
            while (rs.Read())
            {
                sTemp = rs["msg_text"].ToString();
            }
            rs.Close();
            return (sTemp);
        }

        public void vUpdatetuserprofile(List<cArrayList> arr)
        {
            dal.vExecuteSP("sp_tuser_profile_upd", arr);
        }

        public int nCheckEmail(string sUserID)
        {
            int ntemp = 0;
            SqlDataReader rs = null;
            List<cArrayList> arr = new List<cArrayList>();
            arr.Add(new cArrayList("@usr_id", sUserID));
            dal.vGetRecordsetSP("sp_checkemail", ref rs, arr);
            while (rs.Read())
            { ntemp = Convert.ToInt16(rs["ncount"]); } rs.Close();
            return (ntemp);
        }

        public int nCheckUser(string username, string password)
        {
            int nTemp = 0;
            SqlDataReader rs = null;
            List<cArrayList> arr = new List<cArrayList>();
            arr.Add(new cArrayList("@usr_id", username));
            arr.Add(new cArrayList("@usr_pwd", password));
            dal.vGetRecordsetSP("sp_checkuser", ref rs, arr);
            while (rs.Read())
            { nTemp = Convert.ToInt16(rs["ncount"]); } rs.Close();
            return (nTemp);
        }

        public string sendEmailSmarter(string sTo, string sBody)
        {
            string sEmail = "";
            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();
            try
            {
                m.From = new MailAddress("irwan.agusyono@gmail.com");
                m.To.Add(sTo);
                m.Subject = "Registration alunalun.id";
                m.IsBodyHtml = true;
                m.Body = sBody;
                //sc.Host = "smtp.gmail.com";
                sc.Host = "smtp.gmail.com";
                sc.Port = 465;
                sc.Credentials = new System.Net.NetworkCredential("irwan.agusyono@gmail.com", "h4r1y4n1");

                sc.EnableSsl = true;
                sc.Send(m);
                sEmail = "Email Send successfully";
            }
            catch (Exception ex)
            {
                sEmail = ex.Message;
            }
            return (sEmail);
        }

        public string SendEmail()
        {
            string sTemp = "Email has sent !";
            System.Net.ICredentialsByHost ic;

            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add("irwan.agusyono@pirantaskarya.com");
                mailMessage.From = new MailAddress("irwan.agusyono@gmail.com");
                mailMessage.Subject = "ASP.NET e-mail test";
                mailMessage.Body = "Hello world,\n\nThis is an ASP.NET test e-mail!";
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 465;
                smtpClient.EnableSsl = false;
                smtpClient.Send(mailMessage);
                // Response.Write("E-mail sent!");
            }
            catch (Exception ex)
            {
                sTemp = ex.Message;
            }
            return (sTemp);
        }

        //public void vInsertUserProfile(List<cArrayList> arr)
        //{
        //    dal.vExecuteSP("sp_tuser_profile_ins", arr);
        //}

        public void vBindingComboToSp(ref DropDownList cbo, string sSPName, string sVal, string sDisp, List<cArrayList> arr)
        {
            SqlDataReader rs = null;
            DataTable dta = new DataTable();
            dal.vGetRecordsetSP(sSPName, ref rs, arr);
            dta.Load(rs);
            cbo.DataValueField = sVal;
            cbo.DataTextField = sDisp;
            cbo.DataSource = dta.DefaultView;
            cbo.DataBind();
        }

        public void vBindingComboToSp(ref DropDownList cbo, string sSPName, string sVal, string sDisp)
        {
            SqlDataReader rs = null;
            DataTable dta = new DataTable();
            dal.vGetRecordsetSP(sSPName, ref rs);
            dta.Load(rs);
            cbo.DataValueField = sVal;
            cbo.DataTextField = sDisp;
            cbo.DataSource = dta.DefaultView;
            cbo.DataBind();
        }

        public void vBindingFieldValueToCombo(ref DropDownList cbo, string sParamName)
        {
            SqlDataReader rs = null;
            List<cArrayList> arr = new List<cArrayList>();
            arr.Add(new cArrayList("@fld_nm", sParamName));
            DataTable dta = new DataTable();
            dal.vGetRecordsetSP("sp_tfield_value_get", ref rs, arr);
            dta.Load(rs);
            cbo.DataValueField = "fld_valu";
            cbo.DataTextField = "fld_desc";
            cbo.DataSource = dta.DefaultView;
            cbo.DataBind();
        }

        public void vInitMenuCategory(ref TreeView tvw)
        {
            List<cArrayList> arr = new List<cArrayList>();
            SqlDataReader rs = null;
            arr.Add(new cArrayList("@parent_id", "0"));
            dal.vGetRecordsetSP("sp_tcategory_get", ref rs, arr);
            tvw.Nodes.Clear();
            TreeNode tn = new TreeNode();
            tn.Text = "KATAGORI";
            tn.Value = "root";

        }
    }
