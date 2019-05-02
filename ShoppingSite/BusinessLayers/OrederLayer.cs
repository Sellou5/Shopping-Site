using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ShoppingSite.BusinessLayers
{
    public class OrederLayer
    {
        public static DataTable SelectAll()
        {
            SqlCommand cmd = new SqlCommand("select r.* from [order]r ,[user]u where r.userId=u.id");
            return DBLayer.Select(cmd);
        }
        public static DataTable Select_by_id(int id)
        {
            SqlCommand cmd = new SqlCommand("select r.* from [order]r ,[user]u where r.userId=u.id and  r.id= @id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.Select(cmd);
        }

        //////////////////////adding////////////////////////
        public static DataTable Select_for_status(int id)
        {
            SqlCommand cmd = new SqlCommand("select status from[order]  where  status='approved' and id=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.Select(cmd);

        }


        public static DataTable Select_by_Date(DateTime lastModifiedDate)
        {
            SqlCommand cmd = new SqlCommand("select r.* from [order]r ,[user]u where r.userId=u.id and lastModifiedDate=@lastModifiedDate ");
            cmd.Parameters.AddWithValue("lastModifiedDate", lastModifiedDate);
            return DBLayer.Select(cmd);
        }

        public static int Insert(int userId, string proName,DateTime lastModifiedDate, string status,string price)
        {
            SqlCommand cmd = new SqlCommand("insert into [order] values(@userid,@proName,@lmDate,@status,@price)");
            cmd.Parameters.AddWithValue("userid", userId);
            cmd.Parameters.AddWithValue("lmDate", lastModifiedDate);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("proName", proName);
            cmd.Parameters.AddWithValue("price", price);
            return DBLayer.DML(cmd);
        }
        public static int Update(int id, DateTime lastModifiedDate, string status)
        {
            SqlCommand cmd = new SqlCommand("update [order] set lastModifiedDate=@lmDate,status=@status where id=@id");
            cmd.Parameters.AddWithValue("lmDate", lastModifiedDate);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }
        public static int Update_status(int id, string status)
        {
            SqlCommand cmd = new SqlCommand("update [order] set status=@status  where id=@id");
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);

        }


        public static int Delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from [order] where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }
        public static int Delete(DateTime lastModifiedDate)
        {
            SqlCommand cmd = new SqlCommand("delete from [order] where lastModifiedDate=@lastModifiedDate");
            cmd.Parameters.AddWithValue("lastModifiedDate", lastModifiedDate);
            return DBLayer.DML(cmd);
        }
        /////////////////////////////////////order detials////////////////////////
        public static int Delete_or(int orderId)
        {
            SqlCommand cmd = new SqlCommand("delete from [orderDetails] where orderId=@orderId");
            cmd.Parameters.AddWithValue("orderId", orderId);
            return DBLayer.DML(cmd);
        }


        ///////////////////////////////////////select from order and order detials ///////

        public static DataTable SelectAll_orderditials()
        {
            SqlCommand cmd = new SqlCommand("select d.* , r.userId from [orderDetails]d ,[order] r where r.id=d.orderId");

            return DBLayer.Select(cmd);
        }
        /////////////////////////////////////////////////select from ordier dtials///////////////////////////////////


        public static DataTable Select_orderditials()
        {
            SqlCommand cmd = new SqlCommand("select orderId, orderedPrice, quantity, productId from[orderDetails]d,[order]r where r.id = d.orderId");

            return DBLayer.Select(cmd);
        }


        public static DataTable SelectbyuserID(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from [order] where userId=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.Select(cmd);
        }



        ///////////////////////////////////////////////////////select from order by order id////////////////////////////////////////////////
        public static DataTable Select_from_order(int userId)
        {
            SqlCommand cmd = new SqlCommand("select * from [order] where userId=@userId ");
            cmd.Parameters.AddWithValue("userId", userId);
            return DBLayer.Select(cmd);
        }
        //////////////////////////////////////////////////////////////////////////////////////////
        /// <summary>
        /// ////////////insert into new order table
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="proname"></param>
        /// <param name="lastModifiedDate"></param>
        /// <param name="status"></param>
        /// <param name="price"></param>
        /// <returns></returns>


        public static int Insert_into_order(int userId, string proname, DateTime lastModifiedDate, string status, string price)
        {
            SqlCommand cmd = new SqlCommand("insert into [order] values(@userId,@proname,@lastModifiedDate,@status,@price)");
            cmd.Parameters.AddWithValue("userid", userId);
            cmd.Parameters.AddWithValue("proname", proname);
            cmd.Parameters.AddWithValue("lastModifiedDate", lastModifiedDate);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("price", price);
            return DBLayer.DML(cmd);

        }
    }
}