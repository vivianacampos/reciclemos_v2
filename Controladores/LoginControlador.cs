using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;
using reciclemos_v2.Modelo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace reciclemos_v2.Controladores
{
    public class LoginControlador
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        public string logear(string correo, string contrasena)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select correo, contrasena, idTipoUsu From usuario Where correo = @correo and contrasena = @contrasena", con);
                cmd.Parameters.AddWithValue("correo", correo);
                cmd.Parameters.AddWithValue("contrasena", contrasena);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
                if (dt.Rows.Count == 1)
                {
                    if(dt.Rows[0][2].Equals(1))
                    {
                        return "Administrador";

                    }
                    else if(dt.Rows[0][2].Equals(2))
                    {
                        return "Usuario";
                    }
                }
                else
                {
                    return "Usuario y/o contrasena incorrectos";
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("Error " + e);

            }
            finally
            {
                con.Close();
            }
            return "LOÑOLOLO";

        }
    }

}