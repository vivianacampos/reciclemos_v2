using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Modelo;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.Formularios
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            UsuarioControlador usu = new UsuarioControlador();
            LblMensaje.Text = usu.agregarUsuario(TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtCorreo.Text, TxtTelefono.Text, TxtDirección.Text, TxtContrasena.Text, DdlComunas.SelectedIndex,2);
        }
    }
}