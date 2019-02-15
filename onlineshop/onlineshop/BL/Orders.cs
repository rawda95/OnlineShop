using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.Bl
{
    public class Orders
    {
        //select
        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select * from  [Orders].[Order]"));

        }
        public static DataTable get_customer_orders(int cust_id)
        {
            SqlCommand cmd = new SqlCommand("select o.id, s.name order_status, order_date from[Orders].[Order] o,[Orders].[Order_Status] s where cust_id = @cust_id and o.order_status = s.id");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            return DBLayer.select(cmd);
        }
        public static DataTable get_order(int order_id)
        {
            SqlCommand cmd = new SqlCommand("select * from  [Orders].[Order] where id=@id");
            cmd.Parameters.AddWithValue("@id", order_id);
            return DBLayer.select(cmd);
        }

        public static DataTable get_seller_order_state(int seller_id)
        {

            SqlCommand cmd = new SqlCommand("select * from[Orders].[Order_Status] oo, [Orders].[Order] o where oo.id = o.order_status and o.cust_id = @seller_id");
            cmd.Parameters.AddWithValue("seller_id", seller_id);
            return DBLayer.select(cmd);
        }

        public static DataTable get_order_products(int order_id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("order_id", order_id);
            cmd.CommandText = "orderProdcut";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            return DBLayer.select(cmd);
        }

        public static DataTable GetCanceledOrders() //islam
        {
            return DBLayer.SelectStored(new SqlCommand("CanceledOrders"));
        }



        public static DataTable GetOrders()  //islam
        {
            return DBLayer.SelectStored(new SqlCommand("getCustomerOrders"));
        }




        //dml
        public static int add(int cust_id, string order_date)
        {

            //insert into  orders //0 status
            SqlCommand cmd = new SqlCommand("insert into  [Orders].[Order](cust_id,order_status,order_date) values(@cust_id,1,@order_date)");
            cmd.Parameters.AddWithValue("@cust_id", cust_id);

            cmd.Parameters.AddWithValue("@order_date", order_date);
            int result = DBLayer.dml(cmd);


            // get order id
            // add and order_date = @order_date 
            SqlCommand cust_cmd = new SqlCommand("select id from  [Orders].[Order] where cust_id=@cust_id and order_date=@order_date");
            cust_cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cust_cmd.Parameters.AddWithValue("@order_date", order_date);
            DataTable cust_datatable = DBLayer.select(cust_cmd);
            // if (cust_datatable.Rows.Count<= 0) { throw new Exception("cant get elemnt"); }
            int order_id = int.Parse(cust_datatable.Rows[0]["id"].ToString());


            // get customer product from cart to add in order
            SqlCommand cust_products = new SqlCommand("select product_id,qty  from Users.Cart  where customer_id=@customer_id");
            cust_products.Parameters.AddWithValue("@customer_id", cust_id);
            DataTable products = DBLayer.select(cust_products);
            foreach (DataRow row in products.Rows)
            {
                int product_id = int.Parse(row["product_id"].ToString());
                int qty = int.Parse(row["qty"].ToString());
                // insert product in order 
                SqlCommand insertProduct = new SqlCommand("insert into Orders.Order_Products values(@product_id,@order_id,@qty)");
                insertProduct.Parameters.AddWithValue("@product_id", product_id);
                insertProduct.Parameters.AddWithValue("@order_id", order_id);
                insertProduct.Parameters.AddWithValue("@qty", qty);

                int inserResult = DBLayer.dml(insertProduct);
                // empty cart after order
                if (inserResult != -1)
                {
                    SqlCommand deleteCartProduct = new SqlCommand("delete from Users.Cart where customer_id=@cust_id and product_id=@product_id");
                    deleteCartProduct.Parameters.AddWithValue("@cust_id", cust_id);
                    deleteCartProduct.Parameters.AddWithValue("@product_id", product_id);

                    DBLayer.dml(deleteCartProduct);
                }
                else
                {
                    // error try later 
                }
            }

            // try catch 
            return order_id;
        }


        public static DataTable getCustomerOrders(int customer_id)
        {
            SqlCommand cmd = new SqlCommand("select * from  [Orders].Order where cust_id= @customer_id");
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            return DBLayer.select(cmd);
        }


        public static DataTable get_Shop_orders(int shop_id)
        {
            SqlCommand cmd = new SqlCommand("select o.* from [Orders].[Order] o , Orders.Order_Products op ,Shop.stock s where o.id = op.order_id and op.Product_id = s.product_id and  and shop_id = @shop_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.select(cmd);
        }



        public static int reomve(int order_id)
        {
            SqlCommand reomverOrder = new SqlCommand("delete  from [Orders].[Order] where  id=@order_id");
            SqlCommand removeOrderProduct = new SqlCommand("delete  from [Orders].order_Products where order_id=@order_id");
            reomverOrder.Parameters.AddWithValue("@order_id", order_id);
            removeOrderProduct.Parameters.AddWithValue("@order_id", order_id);
            DBLayer.dml(removeOrderProduct);
            DBLayer.dml(reomverOrder);
            return 1;
        }
        public static int change_order_status(int order_id, int order_status)
        {
            SqlCommand cmd = new SqlCommand("update [Orders].[Order] set order_status = @order_status where order_id = @order_id ");
            cmd.Parameters.AddWithValue("@order_status", order_status);
            cmd.Parameters.AddWithValue("@order_id", order_id);
            return DBLayer.dml(cmd);
        }

        public static string get_order_status(int order_id)
        {

            SqlCommand cmd = new SqlCommand("select os.name from [Orders].[Order] oo , [Orders].Order_Status os where  os.id = oo.order_status and oo.id = @order_id");
            cmd.Parameters.AddWithValue("@order_id", order_id);
            DataTable temp = DBLayer.select(cmd);
            string status = temp.Rows[0][0].ToString();
            return status;
        }


    }
}
