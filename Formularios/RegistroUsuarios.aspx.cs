using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Modelo;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Formularios
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["reciclemosEntities"].ConnectionString))
                //{
                //    SqlCommand cmd = new SqlCommand();
                //    cmd.CommandType = CommandType.StoredProcedure;
                //    GrdUsuarios.DataSource = from usuario in dbc.usuario.ToList()
                //                             select new
                //                             {
                //                                 Rut = usuario.rut,
                //                                 Nombre = usuario.nombre,
                //                                 Apellido = usuario.apellido,
                //                                 Telefono = usuario.telefono,
                //                                 Correo = usuario.telefono,
                //                                 Direccion = usuario.direccion,
                //                                 LblContrasena = usuario.contrasena
                //                             };
                //    GrdUsuarios.DataBind();
                //}
            }
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario()
            {
                Rut = TxtRut.Text,
                Nombre = TxtNombre.Text,
                Apellido = TxtApellido.Text,
                Correo = TxtCorreo.Text,
                Direccion = TxtDirección.Text,
                Comuna = DdlComunas.SelectedValue,
                Contrasena = TxtContrasena.Text,
                Telefono = TxtTelefono.Text
            };
            LblMensaje.Text = Usuario.agregarUsuario(usuario);
        }
    }
}