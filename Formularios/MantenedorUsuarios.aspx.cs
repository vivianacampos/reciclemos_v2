using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;
using System.Drawing;

namespace reciclemos_v2.Formularios
{
    public partial class MantenedorUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarComunas();
            }
        }
        //Método para cargar comunas
        private void cargarComunas()
        {
            DdlComunas.DataSource = from c in ComunaControlador.getAll()
                                    select new
                                    {
                                        Nombre = c.Nombrecomuna,
                                    };
            DdlComunas.DataValueField = "Comuna";
            DdlComunas.DataBind();
        }

    }
}