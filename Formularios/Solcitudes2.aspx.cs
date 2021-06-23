using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace reciclemos_v2.Formularios
{
    public partial class Solcitudes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgBtnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session["error"] = "Ha cerrado sesion";
            Session["usuario"] = null;
            Response.Redirect("Login.apsx");
        }
    }
}