using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using Site_Template_1___Web_Forms.models;

namespace Site_Template_1___Web_Forms.services
{
    public static class UserService
    {
        private static string connString = ConfigurationManager.ConnectionStrings["conn"].ToString();

        public static User CreateUser(
            string Username, 
            string Password, 
            string FirstName, 
            string LastName, 
            string EmailAdd
            ) 
        {
            try
            {
                User newUser = null;
                string passwordHash = BCrypt.Net.BCrypt.HashPassword(Password.Trim());

                SqlParameter[] parameters = {
                    new SqlParameter("@Username", Username.Trim()),
                    new SqlParameter("@PassHash", passwordHash),
                    new SqlParameter("@FirstName", FirstName.Trim()),
                    new SqlParameter("@LastName", LastName.Trim()),
                    new SqlParameter("@EmailAdd", EmailAdd.Trim()),
                };

                string strQuery = " INSERT INTO Users (Username, PassHash, FirstName, LastName, EmailAdd) ";
                strQuery += "VALUES(@Username, @PassHash, @FirstName, @LastName, @EmailAdd); SELECT SCOPE_IDENTITY()";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    using (SqlCommand comm = new SqlCommand(strQuery, conn))
                    {
                        comm.Parameters.AddRange(parameters);
                        string newID = comm.ExecuteScalar().ToString();

                        newUser = new User()
                        {
                            UserID = newID,
                            Username = Username.Trim(),
                            PassHash = passwordHash,
                            FirstName = FirstName.Trim(),
                            LastName = LastName.Trim(),
                            EmailAdd = EmailAdd.Trim()
                        };
                    }
                    conn.Close();
                } 

                return newUser;
            }
            catch (Exception ex) 
            {
                throw ex;
            }
        }
    }
}