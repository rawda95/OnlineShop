using onlineshop.Dl;
using System;
using System.Data;
using System.Data.SqlClient;
namespace onlineshop.BL
{
    public class customer
    {

        //select
        public static DataTable getAll()
        {
            return DBLayer.select(new SqlCommand("select * from users.Customers"));
        }

        //serch by id 
        public static DataTable getById(int id)
        {
            SqlCommand cmd = new SqlCommand("select *  from users.Customers where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }


        //serch by name 
        public static DataTable getByName(string name)
        {

            SqlCommand cmd = new SqlCommand("select *  from users.Customers where firts_name=@name");
            cmd.Parameters.AddWithValue("@name", name);
            return DBLayer.select(cmd);
        }

        // get id by email for reset password
        public static DataTable getByEmail(string email)
        {

            SqlCommand cmd = new SqlCommand("select id  from users.Customers where email=@email");
            cmd.Parameters.AddWithValue("@email", email);
            return DBLayer.select(cmd);
        }



        //serch by location
        public static DataTable getByLocation(string location)
        {

            SqlCommand cmd = new SqlCommand("select *  from users.Customers where location like '%@location%'");
            cmd.Parameters.AddWithValue("@location", location);
            return DBLayer.select(cmd);
        }


        // get delivery address 
        public static DataTable get_cust_delivery_address(int id)
        {

            SqlCommand cmd = new SqlCommand("select delivery_address from users.Customers where id=@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }

        //get cust state 
        public static DataTable get_cust_state(int id)
        {


            SqlCommand cmd = new SqlCommand("select s.Name from Users.Customers c, Users.User_state s where c.state = s.Id and c.id =@id ");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }

        //get  id  from user id 
        public static DataTable get_id(int userid)
        {
            SqlCommand cmd = new SqlCommand("select  id from Users.Customers where userid = @userid");
            cmd.Parameters.AddWithValue("@userid", userid);
            return DBLayer.select(cmd);
        }


        // get uersname unique
        public static DataTable get_username(int id)
        {
            SqlCommand cmd = new SqlCommand("select u.user_name from Users.Users u , Users.Customers c where u.Id = c.userid and  c.Id=@id ");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }

        // procerss 
        public static DataTable getpassword(int id)
        {
            SqlCommand cmd = new SqlCommand("select u.password from Users.Users u , Users.Customers c where u.Id = c.userid and  c.Id=@id ");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.select(cmd);
        }

        //
        public static int add(string username, string fname, string lname, string email, string id_image, string location, string delivery_address, string password)
        {
            //check for userName unique
            SqlCommand cmd = new SqlCommand("insert into Users.Users values(@username,@password,1)");
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            if (DBLayer.dml(cmd) == 1)
            { //get id 
                SqlCommand cmdGetId = new SqlCommand("select id from Users.Users where user_name=@username");
                cmdGetId.Parameters.AddWithValue("@username", username);
                DataTable result = DBLayer.select(cmdGetId);
                int user_id = int.Parse(result.Rows[0]["id"].ToString());

                // 1 for user state deactive
                SqlCommand cmdInserToCust = new SqlCommand("insert into Users.Customers values(@userid,@fname,@lname,@email,@idimage,@location,@delivery,1)");
                cmdInserToCust.Parameters.AddWithValue("@userid", user_id);
                cmdInserToCust.Parameters.AddWithValue("@fname", fname);
                cmdInserToCust.Parameters.AddWithValue("@lname", lname);
                cmdInserToCust.Parameters.AddWithValue("@email", email);

                cmdInserToCust.Parameters.AddWithValue("@idimage", id_image);
                cmdInserToCust.Parameters.AddWithValue("@location", location);
                cmdInserToCust.Parameters.AddWithValue("@delivery", delivery_address);

                return DBLayer.dml(cmdInserToCust);
            }
            else
            {

                throw new Exception("user name is token try diff one ");
                // return -1 

            }
        }

        public static int update(int id, string fname, string lname, string email, string id_image, string location, string delivery_address)
        {
            SqlCommand cmd = new SqlCommand("update Users.Customers set firts_name=@fname,last_name=@lname ,email=@email,id_image= @idimage,location= @location,delivery_address=@delivery where id=@id");
            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@email", email);

            cmd.Parameters.AddWithValue("@idimage", id_image);
            cmd.Parameters.AddWithValue("@location", location);
            cmd.Parameters.AddWithValue("@delivery", delivery_address);
            cmd.Parameters.AddWithValue("@id", id);

            return DBLayer.dml(cmd);

        }

        public static int ChangePassword(int id, string newPass, string old_Password)
        {
            SqlCommand cmd = new SqlCommand("update Users.Users set Password =@pass from Users.Customers c, Users.Users u where c.userid = u.Id  and c.id = @id and u.Password = @old_Password");
            cmd.Parameters.AddWithValue("@pass", newPass);
            cmd.Parameters.AddWithValue("@old_Password", old_Password);
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);


        }


        // udpdate state from customre

        public static int ChangeCustState(int id)
        {
            SqlCommand cmd = new SqlCommand("update Users.Customers  set state =1 where id =@id");
            cmd.Parameters.AddWithValue("@id", id);
            return DBLayer.dml(cmd);

        }







    }
}
