using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.Formularios
{
    public partial class ContactoProspecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            int idEstado = 1;
            ProspectoControlador prospecto = new ProspectoControlador();
            LblMensaje.Text = prospecto.AddProspecto(TxtNom.Text, TxtCorr.Text, TxtTel.Text, TxtArea.Text, idEstado);
            if (LblMensaje.Text == "Mensaje enviado exitosamente")
            {
                TxtNom.Text = "";
                TxtCorr.Text = "";
                TxtTel.Text = "";
                TxtArea.Text = "";
            }
        }
    }
}