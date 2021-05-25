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

        //Método para agregar a un usuario a la lista
        public static string agregarUsuario(string rut, string nombre, string apellido, string telefono, string correo, string contrasena, string direccion, string comuna)
        {           
            try
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
                return "Usuario agregado";

            }
            catch (Exception e)
            {
                return "No se pudo agregar al usuario" + e.Message;
            }
        }

        //Método para buscar un usuario
        public static Usuario buscarUsuario(string rut)
        {
            foreach(Usuario u in listaUsuarios)
            {
                if (u.Rut == rut)
                {

                }
            }



            return null;
        }
    }

}