using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Comuna
    {
        private int idComuna;
        private string nombreComuna;

        public Comuna()
        {
        }

        public Comuna(int idComuna, string nombrecomuna)
        {
            this.idComuna = idComuna;
            nombreComuna = nombrecomuna;
        }

        public int IdComuna { get => idComuna; set => idComuna = value; }
        public string Nombrecomuna { get => nombreComuna; set => nombreComuna = value; }

    }
}