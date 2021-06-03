using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Logros
    {
        private int idLogros;
        private string descripcion;

        public Logros()
        {
        }

        public Logros(int idLogros, string descripcion)
        {
            this.idLogros = idLogros;
            this.descripcion = descripcion;
        }

        public int IdLogros { get => idLogros; set => idLogros = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}