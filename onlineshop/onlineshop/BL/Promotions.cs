using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.Bl
{
    public class Promotions
    {
        //select 


        public static DataTable get_qty_for_product(int x, int y)
        {
            return new DataTable();
        }






        //get all shop promotions
        public static DataTable get_Shop_promotions(int shop_id)
        {
            SqlCommand cmd = new SqlCommand("select p.* ,pp.promotion_value from Product.Product p, Product.Promotion pp, shop.stock ss where ss.product_id =pp.product_id and ss.shop_id =@shop_id and pp.product_id = p.id");
            cmd.Parameters.AddWithValue("shop_id", shop_id);
            return DBLayer.select(cmd);
        }
        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select prod.id,prod.name,prod.description,prod.photo, prod.price,prom.promotion_value as Newprice ,prom.name as promotion from Product.Product prod , Product.Promotion prom where prod.id = prom.product_id"));


        }

        public static DataTable get_product_promotion(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from Product.Promotion where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }



        public static DataTable get_By_category_id(int category_id)
        {
            SqlCommand cmd = new SqlCommand("select * from Product.Promotion where category_id=@category_id");
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.select(cmd);
        }





        // dml 

        public static int add(string name, int product_id, float pormortion_value)
        {
            SqlCommand cmd = new SqlCommand("insert into Product.Promotion values(@name,@product_id,@promotion_value)");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            cmd.Parameters.AddWithValue("@pormortion_value", pormortion_value);
            return DBLayer.dml(cmd);
        }


        public static int remove(int product_id)
        {
            SqlCommand cmd = new SqlCommand("delete from Product.Promotion where product_id=@product_id");
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.dml(cmd);
        }

        public static int edit_promotion_value(int product_id, float pormortion_value)
        {
            SqlCommand cmd = new SqlCommand("update Product.Promotion set promotion_value = @pormortion_value where product_id = @product_id");
            cmd.Parameters.AddWithValue("@pormortion_value", pormortion_value);
            cmd.Parameters.AddWithValue("@product_id", product_id);
            return DBLayer.dml(cmd);
        }
    }
}
