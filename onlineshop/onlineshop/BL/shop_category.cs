using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class shop_category
    {
        public static int add(int shop_id, int category_id)
        {
            SqlCommand cmd = new SqlCommand("insert into shop.shop_category values(@shop_id,@category_id)");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.dml(cmd);
        }

        public static int remove(int shop_id, int category_id)
        {
            SqlCommand cmd = new SqlCommand("delete shop.shop_category where shop_id=@shop_id and category_id=@category_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.dml(cmd);
        }


        public static int remove_all_shop_category(int shop_id, int category_id)
        {
            SqlCommand cmd = new SqlCommand("delete shop.shop_category where shop_id=@shop_id ");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.dml(cmd);
        }

        public static int remove_all_category_shops(int category_id)
        {
            SqlCommand cmd = new SqlCommand("delete shop.shop_category where category_id=@category_id ");
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.dml(cmd);
        }

        //select

        //return ids for shop category
        public static DataTable get_shop_category(int shop_id)
        {
            SqlCommand cmd = new SqlCommand("select c.* from Product.Category c, shop.shop_category  sc where c.id=sc.category_id and sc.shop_id=@shop_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            return DBLayer.select(cmd);
        }

        public static DataTable get_category_shops(int category_id)
        {
            SqlCommand cmd = new SqlCommand("select shop_id from shop.shop_category where category_id=@category_id");
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.select(cmd);
        }
        public static DataTable get_Shop_category_products(int shop_id, int category_id)
        {
            SqlCommand cmd = new SqlCommand("select p.* from Product.Product p, Shop.stock  ss, Shop.shop_category sc  where p.category_id = @category_id and  sc.category_id =@category_id and ss.shop_id =@shop_id  and ss.product_id = p.id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.select(cmd);


        }


        public static DataTable get_Shop_category_promation(int shop_id, int category_id)
        {
            SqlCommand cmd = new SqlCommand("select p.* , pp.promotion_value from Product.Promotion pp, shop.stock ss ,Product.Product p ,Product.Category c  where ss.product_id =pp.product_id  and ss.shop_id =@shop_id and  p.id= pp.product_id  and p.category_id=c.id and c.id=@category_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.select(cmd);

        }

        public static bool shop_has_categorys(int shop_id)
        {
            SqlCommand cmd = new SqlCommand("select * from Shop.shop_category where shop_id=@shop_id");
            cmd.Parameters.AddWithValue("@shop_id", shop_id);
            DataTable temp = DBLayer.select(cmd);
            if (temp.Rows.Count > 0)
            {
                return true;
            }
            else
                return false;
        }
    }
}
