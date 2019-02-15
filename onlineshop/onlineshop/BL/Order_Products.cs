using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class Order_Products
    {
        //select 
        public static DataTable get_order_products(int order_id)
        {
            SqlCommand cmd = new SqlCommand("select product_id ,qty from Orders.Order_Products where order_id=@order_id");
            cmd.Parameters.AddWithValue("@order_id", order_id);
            return DBLayer.select(cmd);
        }


        public static DataTable GetCustomerOrder(int order_id)
        {
            SqlCommand cmd = new SqlCommand(
                "select product_id ,qty ,Product.name,o.* from Orders.Order_Products inner join [Product].[Product] on Product.id = Order_Products.Product_id inner join [Orders].[Order]  o on o.id =[Orders].[Order_Products].order_id"
                );
            cmd.Parameters.AddWithValue("@order_id", order_id);
            return DBLayer.select(cmd);
        }


        //dml 


        public static int edit_qty(int Product_id, int order_id, int qty)
        {
            SqlCommand cmd = new SqlCommand(" update Orders.Order_Products set Qty =@qty where order_id=@order_id and Product_id =@Product_id");
            cmd.Parameters.AddWithValue("@order_id", order_id);
            cmd.Parameters.AddWithValue("@Product_id", Product_id);
            cmd.Parameters.AddWithValue("@qty", qty);
            return DBLayer.dml(cmd);
        }


        public static int remove_product(int Product_id, int order_id)
        {
            SqlCommand cmd = new SqlCommand("delete from Orders.Order_Products where Product_id=@Product_id and order_id =@order_id");
            cmd.Parameters.AddWithValue("@order_id", order_id);
            cmd.Parameters.AddWithValue("@Product_id", Product_id);
            return DBLayer.dml(cmd);

        }


    }
}
