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
            UsuarioControlador.fillComunas();
            

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
                                        Comuna = c.Nombrecomuna,
                                        IdComuna = c.IdComuna
                                    };
            DdlComunas.DataValueField = "IdComuna";
            DdlComunas.DataTextField = "Comuna";
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
                Panel1.Visible = false;

            }
        }

        protected void BtnOpciones_Click(object sender, EventArgs e)
        {
            cargarComunas();

            if (BtnOpciones.Text == "Opciones")
            {
                BtnModificar.Visible = true;
                BtnEliminar.Visible = true;
                TxtRut.Enabled = true;
                TxtNombre.Enabled = true;
                TxtApellido.Enabled = true;
                TxtCorreo.Enabled = true;
                TxtDireccion.Enabled = true;
                TxtTelefono.Enabled = true;
                TxtContrasena.Enabled = true;
                DdlComunas.Enabled = true;
                BtnOpciones.Text = "Ocultar";

            } else if (BtnOpciones.Text == "Ocultar")
            {
                BtnModificar.Visible = false;
                BtnEliminar.Visible = false;
                TxtRut.Enabled = false;
                TxtNombre.Enabled = false;
                TxtApellido.Enabled = false;
                TxtCorreo.Enabled = false;
                TxtDireccion.Enabled = false;
                TxtTelefono.Enabled = false;
                TxtContrasena.Enabled = false;
                DdlComunas.Enabled = false;
                BtnOpciones.Text = "Opciones";
            }


        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            LblMensaje.Text = UsuarioControlador.modificarUsuario(TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtCorreo.Text, TxtTelefono.Text, TxtDireccion.Text, DdlComunas.SelectedValue, TxtContrasena.Text);

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            LblMensaje.Text = UsuarioControlador.eliminarUsuario(TxtRut.Text);
            if (LblMensaje.Text == "Usuario eliminado exitosamente")
            {
                TxtRut.Text = "";
                TxtNombre.Text = "";
                TxtApellido.Text = "";
                TxtCorreo.Text = "";
                TxtTelefono.Text = "";
                TxtDireccion.Text = "";
                DdlComunas.SelectedIndex = 0;
                TxtContrasena.Text = "";
            }
        }

        public void loginControl()
        {

            if (Session["usuario"] == null)
            {
                Session["error"] = "Debe estar registrado";
                Response.Redirect("Login.aspx");

            }
        }

        protected void ImgBtnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["error"] = "Ha cerrado sesion";
            Session["usuario"] = null;
            Response.Redirect("Login.apsx");

        }
    }
}