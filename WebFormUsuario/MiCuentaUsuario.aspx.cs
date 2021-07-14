using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;
using reciclemos_v2.Clases;

namespace reciclemos_v2.WebFormUsuario
{
    public partial class MiCuentaUsuario : System.Web.UI.Page
    {
        UsuarioControlador usuario = new UsuarioControlador();
        Usuario usu = new Usuario();
        Usuario user = new Usuario();
        int idUsu = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] != null)
            {
                usu = (Usuario)Session["Usuario"];
                idUsu = usu.IdUsuario;
            }
            if (!IsPostBack)
            {
                CargarDatosUser();
            }
            
        }

        public void CargarDatosUser()
        {
            user = usuario.buscarUsuarioId(idUsu);
            if (user != null)
            {
                TxtRut.Text = user.Rut;
                TxtNombre.Text = user.Nombre;
                TxtApellido.Text = user.Apellido;
                TxtCorreo.Text = user.Correo;
                TxtDireccion.Text = user.Direccion;
                TxtTelefono.Text = user.Telefono;
                TxtContrasena.Text = user.Contrasena;
                DdlComunas.SelectedValue = user.IdComuna.ToString();
                
            }
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
                TxtRut.Enabled = true;
                TxtNombre.Enabled = true;
                TxtApellido.Enabled = true;
                TxtCorreo.Enabled= true;
                TxtDireccion.Enabled = true;
                TxtTelefono.Enabled= true;
                TxtContrasena.Enabled= true;
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            UsuarioControlador usua = new UsuarioControlador();
            LblMensaje.Text = usua.modAllUser(idUsu, TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtCorreo.Text, TxtTelefono.Text, TxtDireccion.Text, TxtContrasena.Text);
            
            LblMensaje.ForeColor = System.Drawing.Color.Green;
            TxtRut.Enabled = false;
            TxtNombre.Enabled = false;
            TxtApellido.Enabled = false;
            TxtCorreo.Enabled = false;
            TxtDireccion.Enabled = false;
            TxtTelefono.Enabled = false;
            TxtContrasena.Enabled = false;
        }
    }
}