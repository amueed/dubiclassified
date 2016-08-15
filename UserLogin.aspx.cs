using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(DubiClassified.Settings.DatabaseSettings.GetConnectionString());
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        var db = GetObjCon();
        try
        {
            string username = txtUsername.Value.Replace("/\'/g", "").Replace("/\"/g", "").Replace("/\\/g", "");
            string password = txtPassword.Value.Replace("/\'/g", "").Replace("/\"/g", "").Replace("/\\/g", "");
            using (db)
            {
                var cmd = new SqlCommand
                {
                    CommandText = "User_VerifyUser",
                    CommandType = CommandType.StoredProcedure,
                    Connection = db
                };

                cmd.Parameters.AddWithValue("@USERNAME", username);
                cmd.Parameters.AddWithValue("@PASSWORD", password);

                var outputParam = cmd.Parameters.AddWithValue("@RETURN_CODE", DbType.Int16);
                outputParam.Direction = ParameterDirection.Output;

                db.Open();
                cmd.ExecuteNonQuery();

                int code = Convert.ToInt16(outputParam.Value);

                //Code 100: Login Success
                //Code 404: Invalid Credentials/Not Exist
                switch (code)
                {
                    case 100:
                        Session.Add("userLogin", username);
                        Session.Timeout = 15;
                        Response.Redirect("~/MainPage.aspx");
                        break;

                    case 404:
                        lblMsg.InnerText = "Login Failed! Invalid Username/Password.";
                        lblMsg.Style["display"] = "block";
                        break;

                    default:
                        lblMsg.InnerText = "Error! Unable to Login.";
                        lblMsg.Style["display"] = "block";
                        break;
                }
            }
        }
        catch (Exception ex)
        {
            //Response.Write(ex.Message);
            lblMsg.InnerText = ex.Message;
            lblMsg.Style["display"] = "block";
        }
        finally
        {
            db.Close();
        }
    }
}