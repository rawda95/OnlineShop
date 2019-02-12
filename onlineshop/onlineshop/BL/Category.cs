using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.Bl
{
    public class Category
    {
        public static int add(string name)
        {
            SqlCommand cmd = new SqlCommand("insert into product.category values(@name)");
            cmd.Parameters.AddWithValue("@name", name);
            return DBLayer.dml(cmd);

        }

        public static int reomve(int id)
        {
            SqlCommand cmd = new SqlCommand("delete product.category where id=@id)");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);
        }

        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select id,name from product.category"));
        }

        public static int get_Id_by_name(string name)
        {
            SqlCommand cmd = new SqlCommand("select id from Product.Category where name =@name");
            cmd.Parameters.AddWithValue("@name", name);
            DataTable temp = DBLayer.select(cmd);
            return int.Parse(temp.Rows[0][0].ToString());

        }

        public static bool name_is_exist(string name)
        {
            SqlCommand cmd = new SqlCommand("select * from Product.Category where name =@name");
            cmd.Parameters.AddWithValue("@name", name);
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
