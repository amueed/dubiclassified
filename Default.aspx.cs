﻿using System;
using System.Data;
using System.Data.SqlClient;

public partial class Locations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadWebConfig();
    }

    public void LoadWebConfig()
    {
        try
        {
            DataTable dt = new DataTable();
            string query = "SELECT * FROM web_config";
            SqlDataAdapter da = new SqlDataAdapter(query, DubiClassified.Settings.DatabaseSettings.GetConnectionString());
            da.Fill(dt);

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
                        WebDesc.Text = propertyVal;
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
        finally
        {
        }
    }
}