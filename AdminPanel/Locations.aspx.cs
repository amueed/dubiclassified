using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class AdminPanel_Locations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private static DBDataContext GetObjDB()
    {
        return new DBDataContext();
    }
    [WebMethod]
    public static List<Admin_GetLocationsResult> GetLocations()
    {
        try
        {
            using (var db = GetObjDB())
            {
                var result = from x in db.Admin_GetLocations() select x;
                return result.ToList();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}