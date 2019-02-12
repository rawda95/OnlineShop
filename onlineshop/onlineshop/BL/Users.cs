using onlineshop.Dl;
using System;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class Users
    {

        public static DataTable check(string user_name, string Password, int type_of_user)
        {
            SqlCommand cmd = new SqlCommand("select id from Users.Users where user_name =@user_name and Password =@Password and type_of_user = @type_of_user");
            cmd.Parameters.AddWithValue("@user_name", user_name);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@type_of_user", type_of_user);
            return DBLayer.select(cmd);
        }


        public static Boolean UserNameExsit(string username)
        {
            SqlCommand cmd = new SqlCommand("select id from Users.Users where user_name =@user_name");
            cmd.Parameters.AddWithValue("@user_name", username);
            DataTable dt = DBLayer.select(cmd);
            if (dt.Rows.Count > 0)
            {
                return true;

            }
            else
                return false;
        }

    }

}
