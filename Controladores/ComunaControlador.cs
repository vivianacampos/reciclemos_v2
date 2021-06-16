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

        public static void addComunas(int idComuna, string comuna)
        {
            Comuna c = new Comuna()
            {
                IdComuna = idComuna,
                Nombrecomuna = comuna,
            };
            listaComunas.Add(c);
        }

        public static Comuna buscarComuna(string codigo)
        {
            foreach (Comuna comuna in listaComunas)
            {
                if (comuna.IdComuna == int.Parse(codigo))
                {
                    return comuna;
                }
            }
            return null;
        }

        public static List<Comuna> getAll()
        {
            return listaComunas;
        }

    }
}