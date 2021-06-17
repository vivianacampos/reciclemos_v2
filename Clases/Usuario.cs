using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace reciclemos_v2.Clases
{
    public class Usuario : TipoUsuario
    {
        private static List<Usuario> listaUsuario = new List<Usuario>();
        private string rut;
        private string nombre;
        private string apellido;
        private string telefono;
        private string correo;
        private string contrasena;
        private string direccion;
        private string comuna;
        private TipoUsuario rol;
       

        public Usuario()
        {
            
        }
        public Usuario (string correo, string contrasena)
        {
            this.correo = correo;
            this.contrasena = contrasena;
        }
        public Usuario(string correo, string contrasena, TipoUsuario rol)
        {
            this.correo = correo;
            this.contrasena = contrasena;
            this.rol = rol;
        }

        public Usuario(string rut, string nombre, string apellido, string telefono, string correo, string contrasena, string direccion, string comuna, TipoUsuario rol) 
        {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
            this.telefono = telefono;
            this.correo = correo;
            this.contrasena = contrasena;
            this.direccion = direccion;
            this.comuna = comuna;
            this.rol = rol;
        }

        public static List<Usuario> ListaUsuario { get => listaUsuario; set => listaUsuario = value; }
        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Contrasena { get => contrasena; set => contrasena = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Comuna { get => comuna; set => comuna = value; }
        public TipoUsuario Rol { get => rol; set => rol = value; }
    }
}