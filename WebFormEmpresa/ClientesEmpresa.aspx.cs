using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;
using reciclemos_v2.Clases;

namespace reciclemos_v2.WebFormEmpresa
{
    public partial class ClientesEmpresa : System.Web.UI.Page
    {
        UsuarioControlador usuario = new UsuarioControlador();
        Usuario usu = new Usuario();
        int idUsu = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                usu = (Usuario)Session["Admin"];
                idUsu = usu.IdUsuario;
            }
        }


        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Usuario u = usuario.buscarUsuario(TxtBusqueda.Text);
            
            if (u != null)
            {
                
                TxtRut.Text = u.Rut;
                TxtNombre.Text = u.Nombre;
                TxtApellido.Text = u.Apellido;
                TxtCorreo.Text = u.Correo;
                TxtTelefono.Text = u.Telefono;
                TxtDireccion.Text = u.Direccion;
                TxtContrasena.Text = u.Contrasena;
                DdlComunas.SelectedValue = u.IdComuna.ToString();
                DdlTipoUsu.SelectedValue = u.Rol.ToString();
                LblMensaje.Text = "Usuario encontrado exitosamente";
            }
            else
            {
                LblMensaje.ForeColor = System.Drawing.Color.Red;
                LblMensaje.Text = "Usuario no encontrado";
            }
        }

        protected void BtnOpciones_Click(object sender, EventArgs e)
        {
            if (LblMensaje.Text == "Usuario encontrado exitosamente")
            {
                BtnModificar.Visible = true;
                BtnEliminar.Visible = true;
                LblMensaje.Text = "";
            }
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            if(BtnModificar.Text == "Modificar")
            {
                TxtRut.Enabled = true;
                TxtNombre.Enabled = true;
                TxtApellido.Enabled = true;
                TxtCorreo.Enabled = true;
                TxtDireccion.Enabled = true;
                TxtTelefono.Enabled = true;
                TxtContrasena.Enabled = true;
                DdlComunas.Enabled = true;
                BtnModificar.Text = "Guardar";
            }else if (BtnModificar.Text == "Guardar")
            {

            }

        }
    }
}