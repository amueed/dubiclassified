using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    //DataSet ds = new DataSet();
    private DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        //when user redirect from Default.aspx page, store location in session
        string locID = Convert.ToString(Request.QueryString["loc"]);
        if (!string.IsNullOrEmpty(locID))
        {
            Session["loc"] = locID;
        }

        //if session values is empty user will redirect to the Default.aspx page
        if (Session["loc"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        //else do rest functionality
        else
        {
            LoadWebConfig();
            LoadLocations();
            LoadCategories();
        }
    }

    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(DubiClassified.Settings.DatabaseSettings.GetConnectionString());
    }

    public void LoadWebConfig()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                string query = "SELECT * FROM web_config";
                SqlDataAdapter da = new SqlDataAdapter(query, db);
                da.Fill(dt);
            }

            foreach (DataRow row in dt.Rows)
            {
                string propertyName = row["config_name"].ToString().Trim();
                string propertyVal = row["config_val"].ToString().Trim();

                switch (propertyName)
                {
                    case "website_name":
                        TabTitle.Text = propertyVal;
                        WebTitle.Text = propertyVal;
                        break;

                    case "website_desc":
                        //WebDesc.Text = propertyVal;
                        break;

                    case "website_logo":
                        break;

                    case "facebook_link":
                        break;

                    case "twitter_link":
                        break;

                    default:
                        break;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void LoadLocations()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                string query = "SELECT location_id AS ID,location_name AS NAME FROM locations WHERE ISNULL(deleted,0)=0";
                SqlDataAdapter da = new SqlDataAdapter(query, db);
                da.Fill(dt);
            }
            ddlLoc.DataValueField = "ID";
            ddlLoc.DataTextField = "NAME";
            ddlLoc.DataSource = dt;
            ddlLoc.DataBind();

            string ID = Session["loc"].ToString();
            var li = ddlLoc.Items.FindByValue(ID);
            li.Selected = true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void LoadCategories()
    {
        try
        {
            using (var db = GetObjCon())
            {
                dt = new DataTable();
                string query = "SELECT category_id AS ID, category_name AS NAME FROM categories WHERE ISNULL(parent_id,'')='' AND ISNULL(deleted,0)=0";
                var da = new SqlDataAdapter(query, db);
                da.Fill(dt);
            }

            ddlCategories.DataValueField = "ID";
            ddlCategories.DataTextField = "NAME";
            ddlCategories.DataSource = dt;
            ddlCategories.DataBind();

            var item = new ListItem("--Select Category--", "0");
            ddlCategories.Items.Insert(0, item);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}