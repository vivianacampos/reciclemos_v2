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
            LblFecha.Text = DateTime.Now.Date.ToShortDateString();
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
        public void Limpiar()
        {
            PET.Text = "0";
            PEBD.Text = "0";
            PEAD.Text = "0";
            PP.Text = "0";
            PS.Text = "0";
            Vidrio.Text = "0";
            Lata.Text = "0";
            Papel.Text = "0";
            Aluminio.Text = "0";
            Tetra.Text = "0";
            Carton.Text = "0";
            TxtFecha.Text = "";
            DdlHorario.SelectedValue = "AM";
        }

        protected void BtnSolicitud_Click(object sender, EventArgs e)
        {
            if (LblValidaFecha.Text.Equals(""))
            {
                LblValidaFecha.Text = "Debe especificar una fecha";
            }
            else
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
                if (listaMateriales.Count != 0)
                {
                    int canti = 0;
                    foreach (Material mate in listaMateriales)
                    {
                        canti += mate.Cantidad;
                    }
                    if (canti > 49)
                    {
                        LblPrueba.Text = solicitud.AddSolicitud(idUsu, 1, TxtFecha.Text, DdlHorario.SelectedValue, listaMateriales);
                        if (LblPrueba.Text.Equals("Solicitud registrada con exito"))
                        {
                            LblPrueba.ForeColor = System.Drawing.Color.Green;
                            LblValidaFecha.Text = "";
                            Limpiar();
                        }
                    }
                    else
                    {
                        LblPrueba.Text = "Debe ingresar una cantidad mínima de 50 materiales";
                    }
                }
                else
                {
                    LblPrueba.Text = "Debe seleccionar al menos un material";
                }
            }
            
        }

    }
}