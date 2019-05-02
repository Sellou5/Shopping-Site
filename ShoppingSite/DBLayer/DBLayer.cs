using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ShoppingSite
{
    public class DBLayer
    {
        public static DataTable Select(SqlCommand cmd)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcon"].ConnectionString);
            cmd.Connection = con;

            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = cmd;

            DataTable dt = new DataTable();
            adapt.Fill(dt);

            return dt;
        }

        public static int DML(SqlCommand cmd)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shopcon"].ConnectionString);
            cmd.Connection = con;

            con.Open();

            int EffectedRows = cmd.ExecuteNonQuery();

            con.Close();

            return EffectedRows;

        }

    }
}