using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace reciclemos_v2
{
    public partial class PaginaMaestraEmpresa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginControl();
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