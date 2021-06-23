using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;

namespace reciclemos_v2
{
    public partial class PaginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioControlador.fillComunas();
            //loginControl();
        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["error"] = "Ha cerrado sesion";
            Session["usuario"] = null;
            Response.Redirect("Login.apsx");
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
            //Logout

        }
    }
}