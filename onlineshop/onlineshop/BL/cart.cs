using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;
namespace onlineshop.BL
{
    public class cart
    {

        public static int add(int customer_id, int product_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("insert into Users.Cart values(@customer_id,@product_id,@qty)");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);
        }

        public static int increase_qty(int customer_id, int product_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("update Users.Cart set qty+=@qty where customer_id =@customer_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);
        }


        public static int decrease_qty(int customer_id, int product_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("update Users.Cart set qty-=@qty where customer_id =@customer_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);
        }


        public static int remove_product(int customer_id, int product_id)
        {
            SqlCommand cmd = new SqlCommand("delete Users.Cart  where customer_id =@customer_id and product_id=@product_id");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.dml(cmd);
        }

        //select

        public static DataTable get_Cart_Products(int customer_id)
        {
            SqlCommand cmd = new SqlCommand("select product_id , qty from Users.Cart where customer_id=@customer_id ");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            return DBLayer.select(cmd);
        }
    }
}
