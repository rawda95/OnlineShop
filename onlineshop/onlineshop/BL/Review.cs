using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using onlineshop.Dl;
namespace onlineshop.BL
{
    public class Review
    {
        public static int add(int cust_id ,int product_id , int rate_stars)
        {
            SqlCommand cmd = new SqlCommand("insert into Product.Review values(@cust_id,@product_id,@rate_stars)");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@rate_stars", rate_stars);

            return DBLayer.dml(cmd);
        }

        public static int remove(int cust_id, int product_id)
        {
            SqlCommand cmd = new SqlCommand("delete Product.Review where cust_id=@cust_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@cust_id",cust_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.dml(cmd);
        }

        public static int update(int cust_id, int product_id ,int rate_stars)
        {
            SqlCommand cmd = new SqlCommand("update Product.Review set rate_stars =@rate_stars  where cust_id =@cust_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@rate_stars", rate_stars);
            return DBLayer.dml(cmd);
        }


        // get avg rate for product 
        public static DataTable Product_rate(int product_id)
        {
            SqlCommand cmd = new SqlCommand("select sum(rate_stars)/count(rate_stars) from Product.Review where product_id = @product_id group by product_id");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.select(cmd);
        }


        //get all revriews for the product 
        public static DataTable product_reviews(int product_id)
        {

            SqlCommand cmd = new SqlCommand("select * from Product.Review where product_id = @product_id");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.select(cmd);
        }




        //get all review by customers
        public static DataTable customers_reviews(int cust_id)
        {

            SqlCommand cmd = new SqlCommand("select * from Product.Review where cust_id = @cust_id");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            return DBLayer.select(cmd);
        }



        //get customer review for that prodcut 

        public static DataTable customer_product_review (int product_id,int cust_id)
        {

            SqlCommand cmd = new SqlCommand("select * from Product.Review where product_id = @product_id and cust_id=@cust_id");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            return DBLayer.select(cmd);
        }

    }
}