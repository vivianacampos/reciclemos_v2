using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class TipoUsuario
    {
        private int idTipoUsu;
        private string descripcion;

        public TipoUsuario()
        {
        }

        public TipoUsuario(int id, string descripcion)
        {
            this.idTipoUsu = id;
            this.descripcion = descripcion;
        }

        public int Id { get => idTipoUsu; set => idTipoUsu = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}