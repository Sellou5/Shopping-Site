using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingSite
{
    public class UserLayer
    {
        
       
        //Password Recovery
        public static int PassRecov(string email)
        {
            SqlCommand cmd = new SqlCommand("update [User] set [password]= @pass where [email] =@mail");
            cmd.Parameters.AddWithValue("pass", "123456");
            cmd.Parameters.AddWithValue("mail", email);

            int EffectedRows = DBLayer.DML(cmd);

            return EffectedRows;
        }

        public static DataTable SelectAll()
        {
            SqlCommand cmd = new SqlCommand("select id,fName,lName,email,userName,[address],isAdmin,[status] from [User]");
           
            DataTable dt = DBLayer.Select(cmd);
            
            return dt;
        }

        public static int Count()
        {
            SqlCommand cmd = new SqlCommand("select COUNT(id) from [User]");
            
            DataTable dt = DBLayer.Select(cmd);
            
            int count =int.Parse(dt.Rows[0][0].ToString());
            return count;
        }
        
        public static DataTable SelectStatus()
        {
            SqlCommand cmd = new SqlCommand("select Distinct status,id from [User]");
            DataTable dt = DBLayer.Select(cmd);
            return dt;
        }

        public static int UpdateUser(int id,string isAdmin,string status)
        {
            SqlCommand cmd = new SqlCommand("update [User] set isAdmin=@admin , status =@status where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("admin", isAdmin);
            cmd.Parameters.AddWithValue("status", status);
            return DBLayer.DML(cmd);
        }

        public static int DeletebyID(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from [User] where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }

        public static DataTable CheckEmail(string email)
        {
            SqlCommand cmd = new SqlCommand("select id from [User] where email=@mail");
            cmd.Parameters.AddWithValue("mail", email);
            return DBLayer.Select(cmd);
        }

        //Login
        public static DataTable Check(string email, string password)
        {
            SqlCommand cmd = new SqlCommand("select id,userName,[password],isAdmin,email,status from [User] where email=@name and [password]=@pass");
            cmd.Parameters.AddWithValue("name", email);
            cmd.Parameters.AddWithValue("pass", password);
            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = cmd;
            DataTable dt = DBLayer.Select(cmd);
            adapt.Fill(dt);
            return dt;
        }

        
        public static DataTable SelectByEmail(string email)
        {
            SqlCommand cmd = new SqlCommand("select email from [User] where email=@email ");
            return DBLayer.Select(cmd);
        }



        //////////    INSERTINg NEW REGISTER DATA
        public static int Insert(string Fname, string Lname, string email, string userName, string path, string address, string password, string phone)
        {
            SqlCommand cmd = new SqlCommand("insert into [User] (fName,lName,email,userName,[image],[address],[password],isAdmin,[status],phone)values(@fname,@lname,@mail,@uname,@pic,@address,@pass,0,'Blocked',@phone)");
            
            cmd.Parameters.AddWithValue("fname", Fname);
            cmd.Parameters.AddWithValue("lname",Lname);
            cmd.Parameters.AddWithValue("mail",email);
            cmd.Parameters.AddWithValue("uname",userName);
            cmd.Parameters.AddWithValue("pic",path);
            cmd.Parameters.AddWithValue("address",address);
            cmd.Parameters.AddWithValue("pass",password);
            cmd.Parameters.AddWithValue("phone",phone);

            int EffectedRows = DBLayer.DML(cmd);
            return EffectedRows;

        }

        
        public static DataTable User_selById(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from [User] where id=@u_id");
            cmd.Parameters.AddWithValue("u_id", id);

            return DBLayer.Select(cmd);

        }


        public static int User_update(int id, string fname, string lname, string username, string mail, string image, string add, string phone)
        {

            SqlCommand cmd = new SqlCommand("update [User] set fName=@u_fname , lName=@u_lname ,userName=@username,email=@u_mail,image=@u_img,address=@u_add,phone=@u_phone where id =@id");
            cmd.Parameters.AddWithValue("u_fname", fname);
            cmd.Parameters.AddWithValue("u_lname", lname);
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("u_img", image);
            cmd.Parameters.AddWithValue("u_add", add);
            cmd.Parameters.AddWithValue("u_mail", mail);
            cmd.Parameters.AddWithValue("u_phone", phone);
            cmd.Parameters.AddWithValue("id", id);

            return DBLayer.DML(cmd);

        }


        public static int User_update_without(int id, string fname, string lname, string username, string mail, string add, string phone)
        {

            SqlCommand cmd = new SqlCommand("update [User] set fName=@u_fname , lName=@u_lname ,userName=@username,email=@u_mail,address=@u_add,phone=@u_phone where id =@id");
            cmd.Parameters.AddWithValue("u_fname", fname);
            cmd.Parameters.AddWithValue("u_lname", lname);
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("u_add", add);
            cmd.Parameters.AddWithValue("u_mail", mail);
            cmd.Parameters.AddWithValue("u_phone", phone);
            cmd.Parameters.AddWithValue("id", id);

            return DBLayer.DML(cmd);

        }




        //change passward
        public static int change_passward(int id, int pass)
        {
            SqlCommand cmd = new SqlCommand("update [User] set [password]=@pass where id=@id");
            cmd.Parameters.AddWithValue("pass", pass);
            cmd.Parameters.AddWithValue("id", id);
            return DBLayer.DML(cmd);
        }

        
        //Change Pass 2
        public static int ChangePass(int id, string NewPass,string OldPass)
        {
            SqlCommand cmd = new SqlCommand("update [User] set password =@new where id=@id and password = @old");
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("new", NewPass);
            cmd.Parameters.AddWithValue("old", OldPass);
            return DBLayer.DML(cmd);
        }


    }
}