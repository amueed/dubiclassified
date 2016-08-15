using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DubiClassified.Settings
{
    public sealed class DatabaseSettings
    {
        public static string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        }
        public static string GetConnectionString(string connectionStringName)
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings[connectionStringName].ToString();
        }
    }
}