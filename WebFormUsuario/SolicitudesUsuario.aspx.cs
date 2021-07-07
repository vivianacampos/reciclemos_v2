using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Clases;


namespace reciclemos_v2.WebFormMasterPage
{
    public partial class Inicio : System.Web.UI.Page
    {
        int idUsu;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            Usuario usu = new Usuario();
            if (Session["Usuario"] != null)
            {
                usu = (Usuario)Session["Usuario"];
                idUsu = usu.IdUsuario;
            }

        }

        protected void BtnSolicitud_Click(object sender, EventArgs e)
        {
            //Llamado al método para registrar una solicitud
            LblidUsu.Text = idUsu.ToString();
            
        }

    }
}