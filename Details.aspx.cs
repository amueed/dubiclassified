using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Details : System.Web.UI.Page
{
    static string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ToString();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAdDetails();
    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(conStr);
    }
    public void GetAdDetails()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetSingleAdDetails";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                ShowDetails(dt);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void ShowDetails(DataTable dt)
    {
        try
        {
            string title = "";
            string price = "";
            string location = "";
            string description = "";
            string postedDate = "";
            string postedBy = "";
            string condition = "";
            string views = "";
            string contactNo = "";

            title = dt.Rows[0]["TITLE"].ToString().Trim();
            price = dt.Rows[0]["PRICE"].ToString().Trim();
            location = dt.Rows[0]["LOC"].ToString().Trim();
            description = dt.Rows[0]["DESC"].ToString().Trim();
            postedDate = dt.Rows[0]["POSTED_DATE"].ToString().Trim();
            postedBy = dt.Rows[0]["POSTED_BY"].ToString().Trim();
            condition = dt.Rows[0]["CONDITION"].ToString().Trim();
            views = dt.Rows[0]["VISITOR"].ToString().Trim();
            contactNo = dt.Rows[0]["CONTACT"].ToString().Trim();

            adTitle.Text = title;
            adPrice.Text = price;
            adLoc.Text = location;
            adContact.Text = contactNo;
            adPostedDate.Text = postedDate;
            adPostedBy.Text = postedBy;
            adCondition.Text = condition;
            adViews.Text = views;
            adDesc.Text = description;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

}