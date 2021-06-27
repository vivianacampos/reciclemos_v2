using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Formularios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //UsuarioControlador.fillUser();
            //if(Session["error"] != null)
            //{
            //    LblMensaje.Text = Session["error"].ToString();
            //    Session["error"] = null;
            //}
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            LoginControlador login = new LoginControlador();
            LblMensaje.Text = login.logear(TxtCorreo.Text,TxtContrasena.Text);
        }


    }
}