using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ShoppingSite.BusinessLayers
{
    public class ProductLayer
    {
        public static DataTable selectAll()
        {
            SqlCommand cmd = new SqlCommand("select i.* ,c.name as catName from product i,category c where i.categoryId=c.id ");
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }
        public static DataTable search(string name)
        {
            SqlCommand cmd = new SqlCommand("select i.* ,c.name as catName from product i,category c where (i.name like'%'+ @name +'%') and i.categoryId=c.id ");
            cmd.Parameters.AddWithValue("name", name);
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }

        public static DataTable selById(int id)
        {
            SqlCommand cmd = new SqlCommand("select i.* ,c.name from product i,category c where i.categoryId=c.id and i.id=@pid");
            cmd.Parameters.AddWithValue("pid", id);

            return DBLayer.Select(cmd);

        }

        public static int insert(string name, string path, int price, int offer, int cat, string desc, int quantity)
        {
            SqlCommand cmd = new SqlCommand("insert into product values(@name,@image,@price,@offer,@cat,@desc,@quantity)");
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("image", path);
            cmd.Parameters.AddWithValue("price", price);
            cmd.Parameters.AddWithValue("offer", offer);
            cmd.Parameters.AddWithValue("cat", cat);
            cmd.Parameters.AddWithValue("desc", desc);
            cmd.Parameters.AddWithValue("quantity", quantity);

            return DBLayer.DML(cmd);

        }
        public static int deleteBycategory(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from product where categoryId=@id");
            cmd.Parameters.AddWithValue("id", id);

            return DBLayer.DML(cmd);
        }
        public static int delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from product where id=@id");
            cmd.Parameters.AddWithValue("id", id);

            return DBLayer.DML(cmd);
        }
        public static int update(int id, string name, string path, int price, int offer, int cat, string desc, int quantity)
        {
            SqlCommand cmd = new SqlCommand("update product set name=@name,image=@path,price=@price,offer=@offer,categoryId=@cat,description=@desc,quantity=@quantity where id=@id");
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("path", path);
            cmd.Parameters.AddWithValue("price", price);
            cmd.Parameters.AddWithValue("offer", offer);
            cmd.Parameters.AddWithValue("cat", cat);
            cmd.Parameters.AddWithValue("desc", desc);
            cmd.Parameters.AddWithValue("quantity", quantity);
            cmd.Parameters.AddWithValue("id", id);

            return DBLayer.DML(cmd);

        }

        // For Home Page
        public static DataTable SelectForHome()
        {
            //SqlCommand cmd = new SqlCommand("WITH TOPONE AS ( SELECT *, ROW_NUMBER() over( PARTITION BY categoryId order by categoryId ) AS RowNo FROM product)SELECT* FROM TOPONE WHERE RowNo <= 1");
            //top(select COUNT(distinct(categoryId)) from product )SqlCommand cmd = new SqlCommand("select * from product");
            SqlCommand cmd = new SqlCommand("select top(select COUNT(distinct(categoryId)) from product) * from product order by categoryId");
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }
        //For Detailed Page
        public static DataTable IDselect(int id)
        {
            SqlCommand cmd = new SqlCommand("select i.* ,c.name as catName from product i,category c where i.categoryId=c.id and i.id=@pid");
            cmd.Parameters.AddWithValue("pid", id);

            return DBLayer.Select(cmd);

        }
    }
}