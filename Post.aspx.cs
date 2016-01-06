using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

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
    private static DBDataContext GetObjDB()
    {
        return new DBDataContext();
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
    public void GetSubCategories(string categoryID)
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetSubCategories";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlParameter param = new SqlParameter("@CATEGORY_ID", categoryID);

                cmd.Parameters.Add(param);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                ddlAdSubCategory.DataTextField = "NAME";
                ddlAdSubCategory.DataValueField = "ID";
                ddlAdSubCategory.DataSource = dt;
                ddlAdSubCategory.DataBind();
                ListItem li = new ListItem("--Select Sub-Categories--", "0");
                ddlAdSubCategory.Items.Insert(0, li);
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

    //WebMethods
    [WebMethod]
    public static List<User_GetSubCategoriesResult> LoadSubCategories(string categoryID)
    {
        try
        {
            using (var db = GetObjDB())
            {
                var result = (from x in db.User_GetSubCategories(categoryID) select x).ToList();
                return result;
            }
        }
        catch (Exception)
        {
            throw;
        }

    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        try
        {
            using (var db = GetObjCon())
            {
                string location = "";
                string category = "";
                string subCategory = "";
                string title = "";
                string desc = "";
                bool isFixedPrice = false;
                string condition = "";
                string contact = "";

                string postedBy = "";
                DateTime postedDate = DateTime.Now;
                DateTime expiryDate = Convert.ToDateTime((DateTime.Now).Day + 30);
                bool deleted = false;
                bool blocked = false;
                int views = 0;

                location = ddlAdLocation.SelectedItem.Value.ToString();
                category = ddlAdCategory.SelectedItem.Value.ToString();
                subCategory = ddlAdSubCategory.SelectedItem.Value.ToString();
                title = txtTitle.Value;
                desc = txtDesc.Value;
                if (rdbFixed.Checked == true)
                {
                    isFixedPrice = true;
                }
                else if (rdbNeg.Checked == true)
                {
                    isFixedPrice = false;
                }
                else
                {
                    isFixedPrice = false;
                }
                condition = ddlCondition.SelectedItem.Value.ToString();
                contact = txtContact.Value;


                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = @"INSERT INTO ads (title, description, price, price_fixed, category_id, subcat_id, location_id, condition_id, posted_by, posted_date, expire_date, contact_no, views, deleted, blocked) 
                                    VALUES (@TITLE,@DESC,@PRICE,@PRICE_FIXED,@CATEGORY,@SUBCATEGORY,@LOCATION,@CONDITION,@POSTED_BY,@POSTED_DATE,@EXPIRY_DATE,@CONTACT,@VIEWS,@DELETED,@BLOCKED)";
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");
                cmd.Parameters.AddWithValue("@TITLE", "");

                cmd.Connection = db;

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}