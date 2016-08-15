using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using DubiClassified.DAL;
public partial class MainPage : System.Web.UI.Page
{
    private DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
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

    public void GetCategories()
    {
        try
        {
            using (var db = GetObjCon())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "User_GetMainPageData";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = db;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                ds.Relations.Add(new DataRelation("CategoriesRelation", ds.Tables[0].Columns["CATEGORY_ID"], ds.Tables[1].Columns["CATEGORY_ID"]));
                rptCat.DataSource = ds.Tables[0];
                rptCat.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void rptCat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView drv = e.Item.DataItem as DataRowView;
            Repeater innerRep = e.Item.FindControl("rptSubCat") as Repeater;
            innerRep.DataSource = drv.CreateChildView("CategoriesRelation");
            innerRep.DataBind();
        }
    }
}