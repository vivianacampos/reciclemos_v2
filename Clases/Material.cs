using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Material
    {
        private string nombre;
        private int cantidad;
        private int idMat;

        public Material()
        {
        }

        public Material(string nombre, int cantidad)
        {
            this.nombre = nombre;
            this.cantidad = cantidad;
        }

        public Material(string nombre, int cantidad, int idMat) : this(nombre, cantidad)
        {
            this.idMat = idMat;
        }

        public string Nombre { get => nombre; set => nombre = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public int IdMat { get => idMat; set => idMat = value; }
    }
}