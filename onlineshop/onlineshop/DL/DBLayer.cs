using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.Dl
{
    public class DBLayer
    {


        //select
        public static DataTable select(SqlCommand _cmd)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shop"].ConnectionString);
            SqlCommand cmd = _cmd;
            cmd.Connection = con;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;

        }

        //insert    ,update,delete
        public static int dml(SqlCommand _cmd)
        {
            SqlConnection con = new SqlConnection();
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["shop"].ConnectionString);

                SqlCommand cmd = _cmd;
                cmd.Connection = con;
                con.Open();
                int roweffect = cmd.ExecuteNonQuery();
                return roweffect;

            }
            catch (Exception e)
            {

            }
            finally
            {
                con.Close();


            }
            return -1;


        }


    }
}
