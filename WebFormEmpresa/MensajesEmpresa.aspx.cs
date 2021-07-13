using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.WebFormEmpresa
{
    public partial class MensajesEmpresa : System.Web.UI.Page
    {
        ProspectoControlador pros = new ProspectoControlador();
        protected void Page_Load(object sender, EventArgs e)
        {
            GdvMensajes.DataSource = pros.GetAllProspesctos();
            GdvMensajes.DataBind();
        }
    }
}