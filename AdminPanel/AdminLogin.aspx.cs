using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_AdminLogin : System.Web.UI.Page
{
    static string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(conStr);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        var db = GetObjCon();
        try
        {
            string _username = txtUsername.Value.Replace("/\'/g", "`").Replace("/\"/g", "`");
            string _password = txtPassword.Value.Replace("/\'/g", "`").Replace("/\"/g", "`");
            int _code = 0;
            using (db)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Admin_VerifyUser";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                cmd.Parameters.AddWithValue("@USERNAME", _username);
                cmd.Parameters.AddWithValue("@PASSWORD", _password);

                SqlParameter outputParam = cmd.Parameters.Add("@RETURN_CODE", DbType.Int16);
                outputParam.Direction = ParameterDirection.Output;

                db.Open();
                cmd.ExecuteNonQuery();

                _code = Convert.ToInt16(outputParam.Value);

                if (_code == 100)
                {
                    Session.Add("adminLogin", _username);
                    //Session.Timeout = 15;
                    Response.Redirect("~/AdminPanel/Dashboard.aspx");
                }
                else if (_code == 404)
                {
                    lblMsg.InnerText = "Login Failed! Invalid Username/Password.";
                }
                else
                {
                    //Response.Redirect("~/AdminPanel/AdminLogin.aspx");
                    lblMsg.InnerText = "Error! Unable to Login.";
                }
            }


        }
        catch (Exception ex)
        {
            //Response.Write(ex.Message);
            lblMsg.InnerText = ex.Message;
        }
        finally
        {
            db.Close();
        }
    }
}