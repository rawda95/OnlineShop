using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;
namespace onlineshop.BL
{
    public class Stock
    {
        public static int add(int product_id, int shop_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("insert into Shop.stock values(@product_id,@shop_id,@qty)");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);

        }


        public static int remove(int product_id, int shop_id)
        {
            SqlCommand cmd = new SqlCommand("delete Shop.stock where product_id=@product_id and shop_id=@shop_id ");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.dml(cmd);
        }
        public static int update_qty(int product_id, int shop_id, int qty)
        {
            SqlCommand cmd = new SqlCommand("update Shop.stock set qty =@qty where product_id=@product_id and shop_id=@shop_id");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);
        }

        //select 
        //get all shop product 
        public static DataTable get_shop_product(int shop_id)
        {
            SqlCommand cmd = new SqlCommand("select p.*, ss.qty from Product.Product p , Shop.stock  ss where p.id = ss.product_id and ss.shop_id= @shop_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.select(cmd);
        }


        // serch in shop product by name 
        public static DataTable search_shop_products(int shop_id, string name)
        {
            SqlCommand cmd = new SqlCommand("select p.*, ss.qty from Product.Product p , Shop.stock  ss where p.id = ss.product_id and ss.shop_id= @shop_id and p.name like @name");

            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            return DBLayer.select(cmd);
        }

        // select qty for product in shop stock  
        public static DataTable get_qty_for_product(int shop_id, int product_id)
        {
            SqlCommand cmd = new SqlCommand("select qty from Shop.stock where shop_id=@shop_id and product_id=@product_id ");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.select(cmd);
        }
    }
}
