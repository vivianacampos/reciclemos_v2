using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.WebFormEmpresa
{
    public partial class SolicitudesEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SolicitudControlador usu = new SolicitudControlador();
            GdvSolicitudes.DataSource = usu.FillDTAll();
            GdvSolicitudes.DataBind();


        }
    }
}