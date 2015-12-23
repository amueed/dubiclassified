using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Post : System.Web.UI.Page
{
    static string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ToString();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetLocations();
        GetCategories();
        GetConditions();
    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(conStr);
    }
    public void GetLocations()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetLocations";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                ddlAdLocation.DataTextField = "NAME";
                ddlAdLocation.DataValueField = "ID";
                ddlAdLocation.DataSource = dt;
                ddlAdLocation.DataBind();
                ListItem li = new ListItem("--Select Location--", "0");
                ddlAdLocation.Items.Insert(0, li);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void GetCategories()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetCategories";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                ddlAdCategory.DataTextField = "NAME";
                ddlAdCategory.DataValueField = "ID";
                ddlAdCategory.DataSource = dt;
                ddlAdCategory.DataBind();
                ListItem li = new ListItem("--Select Categories--", "0");
                ddlAdCategory.Items.Insert(0, li);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void GetConditions()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetConditions";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                ddlCondition.DataTextField = "NAME";
                ddlCondition.DataValueField = "ID";
                ddlCondition.DataSource = dt;
                ddlCondition.DataBind();
                ListItem li = new ListItem("--Select Condition--", "0");
                ddlCondition.Items.Insert(0, li);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}