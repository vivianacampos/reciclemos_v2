using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;


namespace reciclemos_v2.Clases
{
    public class Solicitud
    {
        private string estado;
        private string descripcion;
        private DateTime fecha;
        private List<Material> listaMateriales;

        public Solicitud()
        {

        }

        public Solicitud(string estado, string descripcion, DateTime fecha, List<Material> listaMateriales)
        {
            this.estado = estado;
            this.descripcion = descripcion;
            this.fecha = fecha;
            this.listaMateriales = listaMateriales;
        }

        public string Estado { get => estado; set => estado = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public List<Material> ListaMateriales { get => listaMateriales; set => listaMateriales = value; }
    }
}