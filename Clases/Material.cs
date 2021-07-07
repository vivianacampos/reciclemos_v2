using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Material
    {
        private string descripcion;
        private int cantidad;

        public Material()
        {
        }

        public Material(string descripcion, int cantidad)
        {
            this.descripcion = descripcion;
            this.cantidad = cantidad;
        }

        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
    }
}