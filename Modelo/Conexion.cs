using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace reciclemos_v2.Modelo
{
    public class Conexion
    {
        public SqlConnection LeerCadena()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["select"].ConnectionString);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            else
            {
                con.Open();
            }
            return con;
        }

    }
}