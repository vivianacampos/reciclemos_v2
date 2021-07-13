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
        int idUsu;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginControl();
            Usuario usu = new Usuario();
            if (Session["Usuario"] != null)
            {
                usu = (Usuario)Session["Usuario"];
                idUsu = usu.IdUsuario;
                LblUsuario.Text = "Bienvenido/a "+ usu.Nombre + " " + usu.Apellido;
            }
        }


        public void loginControl()
        {
            if (Session["Usuario"] == null)
            {
                Session["error"] = "Debe estar registrado";
                Response.Redirect("../Formularios/Login.aspx");
            }
        }

        protected void ImgBtnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["Usuario"] = null;
            Session["error"] = "Ha cerrado sesion";
            Response.Redirect("../Formularios/Login.aspx");
        }

    }
}