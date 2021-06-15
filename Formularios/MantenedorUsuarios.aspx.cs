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
                TxtRut.Text = usuario.Rut;
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

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            if (BtnModificar.Text == "Modificar")
            {
                BtnGuardar.Visible = true;
                BtnEliminar.Visible = true;
                TxtRut.Enabled = true;
                TxtNombre.Enabled = true;
                TxtApellido.Enabled = true;
                TxtCorreo.Enabled = true;
                TxtDireccion.Enabled = true;
                TxtTelefono.Enabled = true;
                TxtContrasena.Enabled = true;
                DdlComunas.Enabled = true;
                BtnModificar.Text = "Ocultar";

            } else if (BtnModificar.Text == "Ocultar")
            {
                BtnGuardar.Visible = false;
                BtnEliminar.Visible = false;
                TxtRut.Enabled = false;
                TxtNombre.Enabled = false;
                TxtApellido.Enabled = false;
                TxtCorreo.Enabled = false;
                TxtDireccion.Enabled = false;
                TxtTelefono.Enabled = false;
                TxtContrasena.Enabled = false;
                DdlComunas.Enabled = false;
                BtnModificar.Text = "Modificar";
            }

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            public static string modificarUsuario()
            {
                return "";
            }

        }
    }
}