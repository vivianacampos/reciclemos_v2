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
        SolicitudControlador solCon = new SolicitudControlador();
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
            int idEstado = 0;
            
            if (DdlFiltrarSol.SelectedValue.Equals("1"))
            {
                idEstado = 1;
                GdvSolicitudes.DataSource = solCon.FillDTUsuario(idUsu, idEstado);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue.Equals("10"))
            {
                idEstado = 10;
                GdvSolicitudes.DataSource = solCon.FillDTUsuario(idUsu, idEstado);
                GdvSolicitudes.DataBind();
            }
            else if (DdlFiltrarSol.SelectedValue.Equals("9"))
            {
                idEstado = 9;
                GdvSolicitudes.DataSource = solCon.FillDTUsuario(idUsu, idEstado);
                GdvSolicitudes.DataBind();
            } else
            {
                cargarGrid(idUsu);
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            //GridViewRow row = GdvSolicitudes.Rows[0];
            //int i = GdvSolicitudes.DataKeys[row.RowIndex].Value;
            //foreach (DataTable fila in GdvSolicitudes.Rows)
            //{
            //    if (fila.Chequed)
            //    {

            //    }
            //}
        }

        protected void GdvSolicitudes_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }
    }
}