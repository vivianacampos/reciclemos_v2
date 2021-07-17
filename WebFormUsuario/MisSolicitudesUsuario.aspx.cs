using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using reciclemos_v2.Controladores;
using reciclemos_v2.Clases;
using System.Data;
using System.Data.SqlClient;


namespace reciclemos_v2.WebFormMasterPage
{
    public partial class MisSolicitudesUsuario : System.Web.UI.Page
    {
        SolicitudControlador usuario = new SolicitudControlador();
        int idUsu = 0;
        List<Solicitud> listaSolicitudes = new List<Solicitud>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usu = new Usuario();

            if (Session["Usuario"] != null)
            {
                usu = (Usuario)Session["Usuario"];
                idUsu = usu.IdUsuario;
            }
            if (!IsPostBack)
            {
                cargarGrid(idUsu);
                
            }

        }
        public void cargarGrid(int idUsu)
        {
            GdvSolicitudes.DataSource = usuario.FillDataTableSol(idUsu);
            GdvSolicitudes.DataBind();
        }


        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            
            if (DdlFiltrarSol.SelectedValue == "Pendiente")
            {
                GdvSolicitudes.DataSource = usuario.FillDTPend(idUsu, 1);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue == "En Retiro")
            {
                GdvSolicitudes.DataSource = usuario.FillDTPend(idUsu, 10);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue == "Finalizado")
            {
                GdvSolicitudes.DataSource = usuario.FillDTPend(idUsu, 9);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue == "Todas")
            {
                cargarGrid(idUsu);
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            
        }
    }
}