using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Material
    {
        private int idMaterial;
        private string descripcion;

        public Material()
        {
        }

        public Material(int idMaterial, string descripcion)
        {
            this.idMaterial = idMaterial;
            this.descripcion = descripcion;
        }

        public int IdMaterial { get => idMaterial; set => idMaterial = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}