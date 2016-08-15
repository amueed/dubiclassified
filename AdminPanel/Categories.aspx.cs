using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Services;
using DubiClassified.DAL;

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
    public static List<Admin_GetCategoriesResult> GetCategories()
    {
        try
        {
            using (var db = GetObjDB())
            {
                var result = from x in db.Admin_GetCategories() select x;
                return result.ToList();
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    [WebMethod]
    public static List<Admin_GetSubCategoriesResult> GetSubCategories()
    {
        try
        {
            using (var db = GetObjDB())
            {
                var result = from x in db.Admin_GetSubCategories() select x;
                return result.ToList();
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
}