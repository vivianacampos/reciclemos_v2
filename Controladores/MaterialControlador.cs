using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Controladores
{
    public class MaterialControlador
    {
        
        public static void AddMateriales(string nombre, int idMat)
        {
            Material m = new Material()
            {
                Nombre = nombre,
                IdMat = idMat
            };
        }



    }


}