using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;


namespace reciclemos_v2.Clases
{
    public class Solicitud
    {
        private int idSol;
        private string estado;
        private string descripcion;
        private string fecha;
        private string horario;
        private List<Material> listaMateriales;

        public Solicitud()
        {

        }

        public Solicitud( int idSol, string estado, string descripcion, string fecha,string horario ,List<Material> listaMateriales)
        {
            this.idSol = idSol;
            this.estado = estado;
            this.descripcion = descripcion;
            this.horario = horario;
            this.fecha = fecha;
            this.listaMateriales = listaMateriales;
        }

        public Solicitud( string estado, string descripcion, string fecha, List<Material> listaMateriales)
        {
            this.estado = estado;
            this.descripcion = descripcion;
            this.fecha = fecha;
            this.listaMateriales = listaMateriales;
        }

        public string Estado { get => estado; set => estado = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public string Fecha { get => fecha; set => fecha = value; }
        public List<Material> ListaMateriales { get => listaMateriales; set => listaMateriales = value; }
        public int IdSol { get => idSol; set => idSol = value; }
        public string Horario { get => horario; set => horario = value; }
    }
}