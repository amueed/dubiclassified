using System;
using System.Data;
using System.Data.SqlClient;

public partial class Details2 : System.Web.UI.Page
{
    private static readonly string ConStr = System.Configuration.ConfigurationManager.ConnectionStrings["CS"].ToString();
    private DataTable _dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAdDetails();
    }
    private static SqlConnection GetObjCon()
    {
        return new SqlConnection(ConStr);
    }
    public void GetAdDetails()
    {
        try
        {
            using (var db = GetObjCon())
            {
                _dt = new DataTable();
                var cmd = new SqlCommand
                {
                    CommandText = "User_GetSingleAdDetails",
                    CommandType = CommandType.StoredProcedure,
                    Connection = db
                };

                var da = new SqlDataAdapter(cmd);
                da.Fill(_dt);
                ShowDetails(_dt);
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
            var title = dt.Rows[0]["TITLE"].ToString().Trim();
            var price = dt.Rows[0]["PRICE"].ToString().Trim();
            var location = dt.Rows[0]["LOC"].ToString().Trim();
            var description = dt.Rows[0]["DESC"].ToString().Trim();
            var postedDate = dt.Rows[0]["POSTED_DATE"].ToString().Trim();
            var postedBy = dt.Rows[0]["POSTED_BY"].ToString().Trim();
            var condition = dt.Rows[0]["CONDITION"].ToString().Trim();
            var views = dt.Rows[0]["VISITOR"].ToString().Trim();
            var contactNo = dt.Rows[0]["CONTACT"].ToString().Trim();

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