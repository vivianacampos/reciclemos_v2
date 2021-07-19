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

            if (!IsPostBack)
            {
                SolicitudControlador usu = new SolicitudControlador();
                GdvSolicitudes.DataSource = usu.FillDTAll();
                GdvSolicitudes.DataBind();
            }
            
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            SolicitudControlador usuCon = new SolicitudControlador();
            int idEstado = 0;
            if (DdlFiltrarSol.SelectedValue.Equals("1"))
            {
                idEstado = 1;
                GdvSolicitudes.DataSource = usuCon.FillDTEmpresa(idEstado);
                GdvSolicitudes.DataBind();

            } else if(DdlFiltrarSol.SelectedValue.Equals("10"))
            {
                idEstado = 10;
                GdvSolicitudes.DataSource = usuCon.FillDTEmpresa(idEstado);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue.Equals("9"))
            {
                idEstado = 9;
                GdvSolicitudes.DataSource = usuCon.FillDTEmpresa(idEstado);
                GdvSolicitudes.DataBind();
            } else if (DdlFiltrarSol.SelectedValue.Equals("Todas"))
            {
                idEstado = 1;
                GdvSolicitudes.DataSource = usuCon.FillDTAll();
                GdvSolicitudes.DataBind();
            }
        }
    }
}