using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using DubiClassified.DAL;

public partial class Post : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userLogin"] == null)
        {
            var returnURL = HttpContext.Current.Request.Url.ToString();
            Response.Redirect("~/UserLogin.aspx?url=" + returnURL);
        }
        GetLocations();
        GetCategories();
    }
    private static DBDataContext GetObjDB()
    {
        return new DBDataContext();
    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(DubiClassified.Settings.DatabaseSettings.GetConnectionString());
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
                ListItem li = new ListItem("In which Location you want to post your ad?", "0");
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
                ListItem li = new ListItem("In which Category you want to post your ad?", "0");
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
                ListItem li = new ListItem("In which Sub-Category you want to post your ad?", "0");
                ddlAdSubCategory.Items.Insert(0, li);
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
            int location;
            int category;
            int subCategory;
            string title;
            string desc;
            bool isFixedPrice;
            string condition;
            string contact;
            long price;
            string postedBy;
            DateTime postedDate = DateTime.Now;
            DateTime expiryDate = postedDate.AddDays(30);

            location = Convert.ToInt16(ddlAdLocation.SelectedItem.Value.ToString());
            category = Convert.ToInt16(ddlAdCategory.SelectedItem.Value);
            subCategory = Convert.ToInt16(ddlAdSubCategory.SelectedItem.Value);
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
            condition = ddlCondition.SelectedItem.Value;
            contact = txtContact.Value;
            price = Convert.ToInt64(txtPrice.Value);
            postedBy = "user1";
            postedDate = DateTime.Now;
            expiryDate = postedDate.AddDays(30);

            ad _obj = new ad();
            _obj.location_id = location;
            _obj.category_id = category;
            _obj.subcat_id = subCategory;
            _obj.title = title;
            _obj.description = desc;
            _obj.price_fixed = isFixedPrice;
            _obj.condition = condition;
            _obj.contact_no = contact;
            _obj.price = price;
            _obj.posted_by = postedBy;
            _obj.posted_date = postedDate;
            _obj.expire_date = expiryDate;
            _obj.views = 0;

            var db = GetObjDB();
            using (db)
            {
                db.GetTable<ad>().InsertOnSubmit(_obj);
                db.SubmitChanges();
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}