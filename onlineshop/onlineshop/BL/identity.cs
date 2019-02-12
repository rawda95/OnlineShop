using onlineshop.Dl;
using System.Data;
using System.Data.SqlClient;

namespace onlineshop.BL
{
    public class identity

    {
        public static int last_add_item()
        {
            SqlCommand cmd = new SqlCommand("select SCOPE_IDENTITY()");
            DataTable temp = DBLayer.select(cmd);
            return int.Parse(temp.Rows[0][0].ToString());
        }

    }

}
