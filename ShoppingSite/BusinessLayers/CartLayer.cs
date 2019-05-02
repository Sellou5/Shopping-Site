using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingSite.BusinessLayers
{
    public class CartLayer
    {
        public static DataTable selectAll()
        {
            SqlCommand cmd = new SqlCommand("select * from Cart");

            return DBLayer.Select(cmd);
        }

        //Select From Cart by User ID
        public static DataTable SelectbyuserID(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from Cart where userId=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.Select(cmd);
        }

        //Select From Cart by Product ID
        public static DataTable SelectbyProID(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from Cart where productId=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.Select(cmd);
        }

        //Insert into Cart
        public static int Insert(string name,string price/*,int quantity*/,int ProID,int UserID,DateTime date,string status)
        {
            SqlCommand cmd = new SqlCommand("insert into Cart(name,orderedPrice,quantity,productId,userId,lastModifiedDate,[status])values(@name,@price,1,@proID,@userID,@date,@status)");
            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("price", price);
            //cmd.Parameters.AddWithValue("qaunt", quantity);
            cmd.Parameters.AddWithValue("proID", ProID);
            cmd.Parameters.AddWithValue("userID", UserID);
            cmd.Parameters.AddWithValue("date", date);
            cmd.Parameters.AddWithValue("status", status);

            int EffectedRows = DBLayer.DML(cmd);
            return EffectedRows;

        }


        public static int UpdateQuantity(int proID, int userID)
        {
            SqlCommand cmd = new SqlCommand("update Cart set quantity +=1 where productId=@pro and userId = @user");
            cmd.Parameters.AddWithValue("pro", proID);
            cmd.Parameters.AddWithValue("user", userID);

            int effectedRows = DBLayer.DML(cmd);
            return effectedRows;
        }

        //Select by Product ID and User ID
        public static DataTable SelectbyProandUser(int id,int userid)
        {
            SqlCommand cmd = new SqlCommand("select * from Cart where productId=@id and userId=@user");
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("user", userid);
            return DBLayer.Select(cmd);
        }
        public static int Delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from Cart where id=@id ");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }
        public static int Delete_from_cart(int userId)
        {
            SqlCommand cmd = new SqlCommand("delete from Cart where userId=@userId ");
            cmd.Parameters.AddWithValue("userId", userId);
            return DBLayer.DML(cmd);


        }
    }
}