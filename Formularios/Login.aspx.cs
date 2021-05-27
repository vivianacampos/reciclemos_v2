using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.Formularios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LblMensaje.Text = UsuarioControlador.loginUsuario(TxtCuenta.Text, TxtContrasena.Text);

        }
    }
}