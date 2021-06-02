using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;


namespace reciclemos_v2.Clases
{
    public class Solicitud
    {
        private int idSolicitud;
        private DateTime fecha;
        private List<Material> listaMateriales;

        public Solicitud()
        {

        }

        public Solicitud(int idSolicitud, DateTime fecha, List<Material> listaMateriales)
        {
            this.idSolicitud = idSolicitud;
            this.fecha = fecha;
            this.listaMateriales = listaMateriales;
        }

        public int IdSolicitud { get => idSolicitud; set => idSolicitud = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public List<Material> ListaMateriales { get => listaMateriales; set => listaMateriales = value; }
    }

}