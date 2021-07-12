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
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("Id Solicitud", typeof(string)),
                new DataColumn("Estado", typeof(string)),
                new DataColumn("Fecha", typeof(string)),
                new DataColumn("Horario", typeof(string)),
                new DataColumn("Materiales", typeof(string))
            });

            //listaSolicitudes = usuario.FillDataTableSol(idUsu);
            
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            Label1.Text = usuario.FillDataTableSol(idUsu);
            
        }
    }
}