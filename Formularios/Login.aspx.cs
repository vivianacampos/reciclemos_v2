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
            if (Session["error"] != null)
            {
                LblMensaje.Text = Session["error"].ToString();
                Session["error"] = null;
            }
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            LoginControlador login = new LoginControlador();
            Usuario usu = new Usuario();
            
            usu = login.logear(TxtCorreo.Text,TxtContrasena.Text);
            if (usu != null)
            {
                if (usu.Rol == 1)
                {
                    Session["Admin"] = usu;
                    Response.Redirect("../WebFormEmpresa/ClientesEmpresa.aspx");
                }
                else if (usu.Rol == 2)
                {
                    Session["Usuario"] = usu;
                    Response.Redirect("../WebFormUsuario/SolicitudesUsuario.aspx");
                }
                
            }
            else
            {
                LblMensaje.Text = "Usuario y/o contraseña incorrectos";
                Session["Usuario"] = null;
            }
            
        }
    }
}