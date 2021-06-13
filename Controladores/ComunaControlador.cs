using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Controladores
{
    public class ComunaControlador
    {
        private static List<Comuna> listaComunas = new List<Comuna>();

        public static void addComunas(int idComuna, string nombreComuna)
        {
            Comuna comuna = new Comuna()
            {
                IdComuna = idComuna,
                Nombrecomuna = nombreComuna,
            };
            listaComunas.Add(comuna);
        }

        public static List<Comuna> getAll()
        {
            return listaComunas;
        }

    }
}