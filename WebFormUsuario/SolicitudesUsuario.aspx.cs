using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;


namespace reciclemos_v2.WebFormMasterPage
{
    public partial class Inicio : System.Web.UI.Page
    {
        int idUsu;
        Usuario usu = new Usuario();
        List<Material> listaMateriales = new List<Material>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                usu = (Usuario)Session["Usuario"];
                idUsu = usu.IdUsuario;
            }
        }

        public void AddMat(TextBox txt)
        {
            if (int.Parse(txt.Text) > 0)
            {
                Material m = new Material();
                m.Nombre = txt.ID;
                m.Cantidad = int.Parse(txt.Text);
                m.IdMat = txt.TabIndex;
                listaMateriales.Add(m);
            }
        }

        protected void BtnSolicitud_Click(object sender, EventArgs e)
        {
            AddMat(PET);
            AddMat(PEBD);
            AddMat(PEAD);
            AddMat(PP);
            AddMat(PS);
            AddMat(Vidrio);
            AddMat(Lata);
            AddMat(Papel);
            AddMat(Aluminio);
            AddMat(Tetra);
            AddMat(Carton);

            //Llamado al método para registrar una solicitud
            SolicitudControlador solicitud = new SolicitudControlador();
            
            LblPrueba.Text = solicitud.AddSolicitud(idUsu, 1, TxtFecha.Text, DdlHorario.SelectedValue, listaMateriales);

        }

    }
}