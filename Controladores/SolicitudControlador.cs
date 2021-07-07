using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using System.Data.SqlClient;

namespace reciclemos_v2.Controladores
{
    public class SolicitudControlador
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        //Método para crear una solicitud
        public void AddSolicitud(string idUSuario, string estado, DateTime fecha, string detalle, List<Material> listaMat)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select idUsuario from ");
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}