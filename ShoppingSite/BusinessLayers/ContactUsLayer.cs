using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace ShoppingSite.BusinessLayers
{
    public class ContactUsLayer
    {

        //insert Messages
        public static int Insert(int userID , string msg)
        {
            SqlCommand cmd = new SqlCommand("insert into EMsg (userId,Emsg)values(@id,@msg)");
            cmd.Parameters.AddWithValue("id", userID);
            cmd.Parameters.AddWithValue("msg", msg);

            int effectedRows = DBLayer.DML(cmd);
            return effectedRows;
        }

        //Select all messages for Admin
        public static DataTable SelectMsgs()
        {
            SqlCommand cmd = new SqlCommand("select m.id,u.userName,u.email,u.phone ,m.Emsg from EMsg m,[User] u where u.id = m.userId");
            return DBLayer.Select(cmd);
        }

        //Delete Message
        public static int DeletebyID(int Id)
        {
            SqlCommand cmd = new SqlCommand("delete from EMsg where id =@id");
            cmd.Parameters.AddWithValue("id", Id);
            return DBLayer.DML(cmd);
        }

    }
}