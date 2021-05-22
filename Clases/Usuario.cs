using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Usuario : TipoUsuario
    {
        private string rut;
        private string nombre;
        private string apellido;
        private string telefono;
        private string correo;
        private string contrasena;
        private string direccion;
        private string comuna;

        public Usuario()
        {

        }

        public Usuario(string rut, string nombre, string apellido, string telefono, string correo, string contrasena, string direccion, string comuna)
        {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
            this.telefono = telefono;
            this.correo = correo;
            this.contrasena = contrasena;
            this.direccion = direccion;
            this.comuna = comuna;
        }

        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Contrasena { get => contrasena; set => contrasena = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Comuna { get => comuna; set => comuna = value; }
    }
}