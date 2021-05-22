using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;

namespace reciclemos_v2.Controladores
{
    public class UsuarioControlador
    {
        private static List<Usuario> listaUsuarios = new List<Usuario>();

        //Métodos de clase
        public static void agregarUsuario(string rut, string nombre, string apellido, string telefono, string correo, string contrasena, string direccion, string comuna)
        {
            Usuario usuario = new Usuario()
            {
                Rut = rut,
                Nombre = nombre,
                Apellido = apellido,
                Telefono = telefono,
                Correo = correo,
                Contrasena = contrasena,
                Direccion = direccion,
                Comuna = comuna
            };

            listaUsuarios.Add(usuario);

        }
    }

}