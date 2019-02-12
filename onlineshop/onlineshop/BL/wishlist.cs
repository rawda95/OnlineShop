using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using onlineshop.Dl;


namespace onlineshop.Bl
{
    public class wishlist
    {

        public static int add(int id ,int product_id ,int qty )
        {
            SqlCommand cmd = new SqlCommand("insert into Users.WishList values(@cust_id,@product_id ,@qty)");
            cmd.Parameters.AddWithValue("@cust_id", id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);

        }

        public static int remove(int cust_id ,int product_id)
        {
            SqlCommand cmd = new SqlCommand("delete form Users.WishList where cust_id =@cust_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.dml(cmd);
        }

        public static int update_qty (int cust_id , int product_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("update Users.WishList  set qty = @qty where cust_id=@cust_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@qty", qty);
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);

            return DBLayer.dml(cmd);
           
        }
        public static int moveToCart(int cust_id,int product_id)
        {
            //sp
            SqlCommand cmd = new SqlCommand("");
            return -1; 
        }

        //select 
        public  static DataTable get_wishlist_products(int cust_id)
        {
            SqlCommand cmd = new SqlCommand("select producr_id , qty from Users.WishList where cust_id=@cust_id");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            return DBLayer.select(cmd);
        }
    }
}