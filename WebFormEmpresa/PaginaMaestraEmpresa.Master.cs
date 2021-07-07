using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Clases;

namespace reciclemos_v2
{
    public partial class PaginaMaestraEmpresa : System.Web.UI.MasterPage
    {
        int idUsu;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginControl();
            Usuario usu = new Usuario();
            if (Session["Admin"] != null)
            {
                usu = (Usuario)Session["Admin"];
                idUsu = usu.IdUsuario;
                LblUsuario.Text = "Bienvenido/a " + usu.Nombre + " " + usu.Apellido;
            }
        }

        public void loginControl()
        {
            if (Session["Admin"] == null)
            {
                Session["error"] = "Debe estar registrado";
                Response.Redirect("../Formularios/Login.aspx");
            }
        }
        protected void ImgBtnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["Admin"] = null;
            Session["error"] = "Ha cerrado sesion";
            Response.Redirect("../Formularios/Login.aspx");
        }
    }
}