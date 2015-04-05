using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public static class cd
{
    private static SqlConnection cnn;

    public static SqlConnection getConnection()
    {

        if (cnn == null)
        {
            cnn = new SqlConnection();
         //   cnn.ConnectionString = "data source=.;user id=sa;password=preketek;initial catalog=alunalun"; //System.Configuration.ConfigurationManager.ConnectionStrings["connstr"].ConnectionString.ToString(); // System.Configuration.ConfigurationManager.ConnectionStrings["connstr"].ConnectionString.ToString();
         //   cnn.ConnectionString = "Data Source=SQL5009.Smarterasp.net;Initial Catalog=DB_9B8B12_alunalun;User Id=DB_9B8B12_alunalun_admin;Password=preketek";
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString.ToString();
            cnn.Open();
        }
        return (cnn);
    }
}
