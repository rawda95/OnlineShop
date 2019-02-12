using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using onlineshop.Dl;


namespace onlineshop.Bl
{
    public class NewCustomer
    {
    
        


        //show all new seller registered need to accept or block
        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select * from Layer.NewCustomers"));

        }


        //add new seller 
        public static int Add(string fname, string lname , string img)
        {
            SqlCommand cmd = new SqlCommand("insert into Layer.NewCustomers(fname,lname,img) values(@fname,@lname,@img)");
            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@img", img);
            return DBLayer.dml(cmd);

        }


        // accept new seller registered
        public static int Approve(int id)
        {
            SqlCommand cmd = new SqlCommand("insert into Newcustomers(fname,lname) select fname,fname from Layer.NewCustomers where cust_id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            //chanage state of seller  //
            int result = DBLayer.dml(cmd);
            if (result == 1)
            {
                SqlCommand cmd1 = new SqlCommand("delete Layer.NewCustomers where cust_id=@id");
                cmd1.Parameters.AddWithValue("@id", id);
                DBLayer.dml(cmd1);
                
            }
            return result; // if result ==1 ok elese see error
          //  return DBlayer.select(cmd);

        }

        // block new seller registered

        public static int block(int id)
        {
            return DBLayer.dml(new SqlCommand("delete Layer.NewCustomers where cust_id =" + id));
        }

    }
}