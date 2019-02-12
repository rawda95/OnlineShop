using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using onlineshop.Dl;


namespace onlineshop.Bl
{
    public class NewShop
    {





        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select * from NewShop"));

        }


        //add new seller 
        // imgae type !!
        public static int Add(string shop_name, string location, string description,int shop_owner)
        {
            SqlCommand cmd = new SqlCommand("insert into NewShop(shop_name,location,description,shop_owner) values(@shop_name,@location,@description,@shop_owner)");
            cmd.Parameters.AddWithValue("@shop_name", shop_name);
            cmd.Parameters.AddWithValue("@location", location);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@shop_owner", shop_owner);

            return DBLayer.dml(cmd);

        }


        // accept new seller registered
        public static int Approve(int id)
        {
            SqlCommand cmd = new SqlCommand("insert into  Shop(shop_name,location,description,shop_owner) select shop_name,location,description,shop_owner from NewShop where shop_id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            //chanage state of seller  //
            int result = DBLayer.dml(cmd);
            if (result == 1)
            {
                SqlCommand cmd1 = new SqlCommand("delete NewShop where cust_id=@id");
                cmd1.Parameters.AddWithValue("@id", id);
                DBLayer.dml(cmd1);

            }
            return result; // if result ==1 ok elese see error
                           //  return DBlayer.select(cmd);

        }

        // block new seller registered

        public static int block(int id)
        {
            return DBLayer.dml(new SqlCommand("delete NewShop where cust_id =" + id));
        }


    }
}