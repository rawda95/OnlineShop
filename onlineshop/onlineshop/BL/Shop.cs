using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class Shop
    {

        public static DataTable getallshop()
        {
            return DBLayer.select(new SqlCommand("select * from Shop.Shop"));


        }

        public static DataTable SearchingUser(string username) //islam
        {
            SqlCommand cmd = new SqlCommand("searchuser");
            cmd.Parameters.AddWithValue("@name", username);
            return DBLayer.SelectStored(cmd);
        }
        public static DataTable viewshopspecificproduct(string productname) //islam
        {
            SqlCommand cmd = new SqlCommand("getspecificproductShopInfo");
            cmd.Parameters.AddWithValue("@pname", productname);
            return DBLayer.SelectStored(cmd);


        }
        public static DataTable Getshopinfo() //islam
        {
            return DBLayer.select(new SqlCommand(
                "select sh.id, sh.name, sh.location, sh.description, sh.logo, s.Name from[Shop].[Shop] sh inner join[Users].[User_state] s on s.Id = sh.shop_state"

                ));

        }
        public static DataTable getShopinfoSellerinfo() //islam
        {

            return DBLayer.SelectStored(new SqlCommand("getsellershopinfo"));
        }

        public static DataTable get_active_shops()
        {

            return DBLayer.select(new SqlCommand("select * from Shop.Shop where shop_state=1"));
        }
        public static DataTable get_deactivate_shops()
        {

            return DBLayer.select(new SqlCommand("select * from Shop.Shop where shop_state=2"));
        }

        public static DataTable getShop(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from Shop.Shop where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);


        }

        public static DataTable get_Shop_by_owner(int seller_id)
        {
            SqlCommand cmd = new SqlCommand("select id from shop.shop where shop_owner =@seller_id ");
            cmd.Parameters.AddWithValue("@seller_id", seller_id);
            return DBLayer.select(cmd);
        }

        public static DataTable get_shop_owner(int id)
        {

            SqlCommand cmd = new SqlCommand("select shop_owner from Shop.Shop where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }



        public static DataTable get_shop_state(int id)
        {

            SqlCommand cmd = new SqlCommand("select shop_state from Shop.Shop where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }


        public static int add(string name, string location, string description, string logo, int shop_owner)
        {
            SqlCommand cmd = new SqlCommand("insert into Shop.Shop values(@name,@location,@description,@logo,@shop_state,@shop_owner)");
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@location", location);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@logo", logo);
            cmd.Parameters.AddWithValue("@shop_state", 1);
            cmd.Parameters.AddWithValue("@shop_owner", shop_owner);
            return DBLayer.dml(cmd);
        }

        public static int update(string location, string description, string logo, int shop_state, int shop_owner, int id)
        {
            SqlCommand cmd = new SqlCommand("update Shop.Shop set location=@location,description=@description,logo=@logo,shop_state=@shop_state,shop_owner=@shop_owner where id = @id)");

            cmd.Parameters.AddWithValue("@location", location);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@logo", logo);
            cmd.Parameters.AddWithValue("@shop_state", shop_state);
            cmd.Parameters.AddWithValue("@shop_owner", shop_owner);
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);
        }

        public static int update_state(int state_id, int id)
        {

            SqlCommand cmd = new SqlCommand("update Shop.Shop set shop_state=@shop_state where id = @id)");
            cmd.Parameters.AddWithValue("@state_id", state_id);
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);


        }
        public static int remove(int id)
        {

            SqlCommand cmd = new SqlCommand("delete Shop.Shop where id=@id ");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);
        }

    }
}
