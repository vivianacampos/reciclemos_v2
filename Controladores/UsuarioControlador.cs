using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Modelo;
using System.Data;
using System.Data.SqlClient;

namespace reciclemos_v2.Controladores
{
    public class UsuarioControlador
    {
        private static List<Usuario> listaUsuarios = new List<Usuario>();

        //Método para agregar un usuario
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        public string agregarUsuario(string rut, string nombre, string apellido, string correo, string telefono, string direccion, string contrasena, int comuna, int rol)
        {
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("Select * from usuario where rut = @rut", con);
                cmd1.Parameters.AddWithValue("rut", rut);
                cmd1.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    SqlCommand cmd = new SqlCommand("Insert into usuario (rut, nombre, apellido, correo, telefono, direccion, contrasena, idComuna, idTipoUsu) values (@rut, @nombre, @apellido, @correo, @telefono, @direccion, @contrasena, @comuna, @rol)", con);
                    cmd.Parameters.AddWithValue("rut", rut);
                    cmd.Parameters.AddWithValue("nombre", nombre);
                    cmd.Parameters.AddWithValue("apellido", apellido);
                    cmd.Parameters.AddWithValue("correo", correo);
                    cmd.Parameters.AddWithValue("telefono", telefono);
                    cmd.Parameters.AddWithValue("direccion", direccion);
                    cmd.Parameters.AddWithValue("contrasena", contrasena);
                    cmd.Parameters.AddWithValue("comuna", comuna);
                    cmd.Parameters.AddWithValue("rol", rol);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    return "Usuario ya registrado";
                }


            }
            catch (Exception e)
            {
                return "Error " + e.Message.ToString();
            }
            finally
            {
                con.Close();
            }
            return "Usuario creado exitosamente!";
        }


        //Método para buscar un usuario
        public Usuario buscarUsuario(string rut)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select rut, nombre, apellido, correo, telefono, direccion, idComuna, contrasena, idTipoUsu from usuario where rut = @rut", con);
                cmd.Parameters.AddWithValue("rut", rut);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Usuario usu = new Usuario()
                {
                    Rut = dt.Rows[0][0].ToString(),
                    Nombre = dt.Rows[0][1].ToString(),
                    Apellido = dt.Rows[0][2].ToString(),
                    Correo = dt.Rows[0][3].ToString(),
                    Telefono = dt.Rows[0][4].ToString(),
                    Direccion = dt.Rows[0][5].ToString(),
                    IdComuna = int.Parse(dt.Rows[0][6].ToString()),
                    Contrasena = dt.Rows[0][7].ToString(),
                    Rol = int.Parse(dt.Rows[0][8].ToString())
                };
                if (dt.Rows.Count == 1)
                {
                    return usu;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }   

        }

        //Método para modificar un usuario
        public string modificarUsuario(string rut, string nombre, string apellido, string correo, string telefono, string direccion, string comuna, string contrasena)
        {
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Update rut, nombre, apellido, correo, telefono, direccion, idComuna, contrasena, idTipoUsu from usuario where rut = @rut", con);
                cmd.Parameters.AddWithValue("rut", rut);

                return "Usuario modificado exitósamente";
            }
            catch (Exception e)
            {
                return "Error: " + e.Message.ToString();
            }

        }

        //Método para eliminar usuario de la lista
        //public static string eliminarUsuario(string rut)
        //{
        //    Usuario usuario = buscarUsuario(rut);
        //    if (usuario != null)
        //    {
        //        listaUsuarios.Remove(usuario);

        //        return "Usuario eliminado exitosamente";
        //    }
        //    else
        //    {
        //        return "No se pudo eliminar a usuario";
        //    }
        //}




    }

}