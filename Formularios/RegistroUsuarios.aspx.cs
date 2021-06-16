using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using reciclemos_v2.Modelo;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;

namespace reciclemos_v2.Formularios
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //Llamar al método de carga de las comunas
            UsuarioControlador.fillComunas();

            if (!IsPostBack)
            {
                cargarComunas();
            }
        }

        private void cargarComunas()
        {
            DdlComunas.DataSource = from c in ComunaControlador.getAll()
                                    select new
                                    {
                                        Comuna = c.Nombrecomuna,
                                        IdComuna = c.IdComuna
                                    };
            DdlComunas.DataValueField = "IdComuna";
            DdlComunas.DataTextField = "Comuna";
            DdlComunas.DataBind();
        }
        //Método para cargar comunas
        //private  void cargarComunas()

        //{
        //DdlComunas.DataSource = from c in ComunaControlador.getAll()
        //                        select new
        //                        {
        //                            c.Nombrecomuna
        //                            };
        //    DdlComunas.DataBind();
        //}

        //using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["reciclemosEntities"].ConnectionString))
        //{
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    GrdUsuarios.DataSource = from usuario in dbc.usuario.ToList()
        //                             select new
        //                             {
        //                                 Rut = usuario.rut,
        //                                 Nombre = usuario.nombre,
        //                                 Apellido = usuario.apellido,
        //                                 Telefono = usuario.telefono,
        //                                 Correo = usuario.telefono,
        //                                 Direccion = usuario.direccion,
        //                                 LblContrasena = usuario.contrasena
        //                             };
        //    GrdUsuarios.DataBind();
        //}



        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            LblMensaje.Text = UsuarioControlador.agregarUsuario(TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtCorreo.Text, TxtTelefono.Text, TxtDirección.Text, DdlComunas.SelectedValue, TxtContrasena.Text);
        }
    }
}