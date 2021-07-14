using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace reciclemos_v2.Controladores
{
    public class ProspectoControlador
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        //Método que inserta los mensajes de los prospectos
        public string AddProspecto(string nombre, string correo, string telefono, string mensaje, int idEstado)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into prospecto values (@nombre, @correo, @telefono, @mensaje, @idEstado)", con);
                cmd.Parameters.AddWithValue("nombre", nombre);
                cmd.Parameters.AddWithValue("correo", correo);
                cmd.Parameters.AddWithValue("telefono", telefono);
                cmd.Parameters.AddWithValue("mensaje", mensaje);
                cmd.Parameters.AddWithValue("idEstado", idEstado);
                cmd.ExecuteNonQuery();
                return "Mensaje enviado exitosamente";
            }
            catch (Exception e)
            {
                return "Error " + e;
            }
            finally
            {
                con.Close();
            }
        }

        public DataTable GetAllProspesctos()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select idProspecto, nombre, correo, telefono, mensaje, estado from prospecto p join estado e on p.idEstado = e.idEstado", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}