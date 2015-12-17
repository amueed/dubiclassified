using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View : System.Web.UI.Page
{
    static string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ToString();
    //DataSet ds;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAds();
    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(conStr);
    }
    public void GetAds()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "GetAdsList";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            rptAdsView.DataSource = dt;
            rptAdsView.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}