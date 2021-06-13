using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;
using System.Drawing;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Formularios
{
    public partial class MantenedorUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarComunas();
            }
        }
        //Método para cargar comunas
        private void cargarComunas()
        {
            DdlComunas.DataSource = from c in ComunaControlador.getAll()
                                    select new
                                    {
                                        Nombre = c.Nombrecomuna,
                                    };
            DdlComunas.DataValueField = "Comuna";
            DdlComunas.DataBind();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Usuario usuario = UsuarioControlador.buscarUsuario(TxtBusqueda.Text);
            if (usuario != null ) {

                LblMensaje.Text = "Usuario encontrado";
                LblMensaje.ForeColor = Color.Green;
                Panel1.Visible = true;
                TxtNombre.Text = usuario.Nombre;
                TxtApellido.Text = usuario.Apellido;
                TxtCorreo.Text = usuario.Correo;
                TxtDireccion.Text = usuario.Direccion;
                TxtTelefono.Text = usuario.Telefono;
                TxtContrasena.Text = usuario.Contrasena;
                DdlComunas.SelectedValue = usuario.Comuna;
                
            } else
            {
                LblMensaje.Text = "Usuario no encontrado";
                LblMensaje.ForeColor = Color.Red;

            }

            
            
        }
    }
}