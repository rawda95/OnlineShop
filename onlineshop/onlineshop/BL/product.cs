using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class product
    {
        public static int add(string name, int price, string description, string image, int category_id)
        {

            SqlCommand cmd = new SqlCommand("insert into Product.Product values(@name,@price,@description,@image,@category_id)");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.dml(cmd);


        }
        public static int update(int id, string name, int price, string description, string image, int category_id)
        {

            SqlCommand cmd = new SqlCommand("update Product.Product set name=@name, price=@price,description=@description,photo=@photo,category_id=@category_id");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@category_id", category_id);
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);
        }

        public static int remove(int id)
        {
            SqlCommand cmd = new SqlCommand("delete Product.Product where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);
        }


        // get all Product in the database
        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select * from Product.Product "));
        }


        // all product in the the category
        public static DataTable get_By_category_id(int category_id)
        {
            SqlCommand cmd = new SqlCommand("select * from Product.Product where category_id=@category_id");
            cmd.Parameters.AddWithValue("@category_id", category_id);
            return DBLayer.select(cmd);
        }

        //get all info for product 
        public static DataTable getbyId(int id)
        {

            SqlCommand cmd = new SqlCommand("select prod.id,prod.name ,prod.price*prom.promotion_value as Newprice ,prod.price as oldPrice ,prod.description, prod.photo , prom.promotion_value ,ss.qty from Product.Product prod left join Product.Promotion prom  on prod.id = prom.product_id join Shop.stock ss on prod.id = ss.product_id and prod.id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }



        //get by price rnge 
        public static DataTable ge_by_price(int start, int end)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product.Product WHERE (price BETWEEN @Start AND @End) OR (@Start = 0 AND @End = 0)");
            cmd.Parameters.AddWithValue("@Start", start);
            cmd.Parameters.AddWithValue("@end", end);
            return DBLayer.select(cmd);
        }

        public static DataTable get_promotion_value(int id)
        {

            SqlCommand cmd = new SqlCommand("select promotion_value from Product.Promotion where id = @id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }

        public static DataTable searchByname(string name)
        {
            SqlCommand cmd = new SqlCommand("select * from Product.Product where name like @name");
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            return DBLayer.select(cmd);
        }


        // for autocomplete 
        public static DataTable getNamesByName(string name)
        {

            SqlCommand cmd = new SqlCommand("select name from Product.Product where name like @name");
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            return DBLayer.select(cmd);
        }

    }
}
