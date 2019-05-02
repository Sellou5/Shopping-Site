using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ShoppingSite.BusinessLayers
{
    public class CategoryLayer
    {
        //select category name 
        public static DataTable selectAll()
        {
            SqlCommand cmd = new SqlCommand("select * from category");
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }
        //update category
        public static int update(int id, string name)
        {
            SqlCommand cmd = new SqlCommand("update category set name=@name where id=@id");
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }

        //Insert
        public static int Insert(string name)
        {
            SqlCommand cmd = new SqlCommand("insert into category (name)values(@name)");
            cmd.Parameters.AddWithValue("name", name);
            return DBLayer.DML(cmd);
        }

        //Delete by ID
        public static int DeleteById(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from category where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }


        //Delete by Name
        public static int DeleteByName(string name)
        {
            SqlCommand cmd = new SqlCommand("delete from category where name=@name");
            cmd.Parameters.AddWithValue("name", name);
            return DBLayer.DML(cmd);
        }
    }
}