using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class AdminPanel_Categories : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private static DBDataContext GetObjDB()
    { 
        return new DBDataContext();
    }

    [WebMethod]
    public static List<GetCategoriesResult> GetCategories()
    {
        try
        {
            using (var db = GetObjDB())
            {
                var result = from x in db.GetCategories() select x;
                return result.ToList();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }

    [WebMethod]
    public static List<GetSubCategoriesResult> GetSubCategories()
    {
        try
        {
            using ( var db = GetObjDB())
            {
                var result = from x in db.GetSubCategories() select x;
                return result.ToList();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}