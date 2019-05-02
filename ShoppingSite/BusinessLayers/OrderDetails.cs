using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingSite.BusinessLayers
{
    public class OrderDetails
    {
        public static DataTable orderDet_selectAll()
        {
            SqlCommand cmd = new SqlCommand("select D.* ,O.userId from orderDetails D,[order] O where D.id=O.id ");
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }


        public static DataTable orderDet_selById(int id)
        {
            SqlCommand cmd = new SqlCommand("select D.* ,O.userId from orderDetails D,[order] O where D.id=O.id and D.id=@Did ");
            cmd.Parameters.AddWithValue("Did", id);

            return DBLayer.Select(cmd);

        }


        public static int orderDet_delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from orderDetails where id=@Did");
            cmd.Parameters.AddWithValue("Did", id);

            return DBLayer.DML(cmd);

        }

        public static int orderDet_insert(int orderId, int price, int quantity, int product_id)
        {
            SqlCommand cmd = new SqlCommand("insert into orderDetails values(@ord_id ,@price ,@quantity ,@id)");
            cmd.Parameters.AddWithValue("ord_id", orderId);
            cmd.Parameters.AddWithValue("price", price);
            cmd.Parameters.AddWithValue("quantity", quantity);
            cmd.Parameters.AddWithValue("id", product_id);

            return DBLayer.DML(cmd);

        }
        public static int orderDet_update(int orderId, int price, int quantity, int product_id)
        {
            SqlCommand cmd = new SqlCommand("update orderDetails set orderId=@id , orderedPrice=@price ,quantity=@quan,productId=@prod_id where id =@Did");
            cmd.Parameters.AddWithValue("prod_id", product_id);
            cmd.Parameters.AddWithValue("quan", quantity);
            cmd.Parameters.AddWithValue("orderedPrice", price);
            cmd.Parameters.AddWithValue("Did", orderId);

            return DBLayer.DML(cmd);

        }
    }
}