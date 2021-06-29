﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Modelo;
using System.Data;
using System.Data.SqlClient;

namespace reciclemos_v2.Controladores
{
    public class UsuarioControlador
    {

        private static List<Comuna> listaComunas = new List<Comuna>();
        private static List<Usuario> listaUsuarios = new List<Usuario>();

        //Método para agregar un usuario
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        public string agregarUsuario(string rut, string nombre, string apellido, string correo, string telefono, string direccion, string contrasena, int comuna, int rol)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into usuario (rut, nombre, apellido, correo, telefono, direccion, contrasena, idComuna, idTipoUsu) values (@rut, @nombre, @apellido, @correo, @telefono, @direccion, @contrasena, @comuna, @rol)", con);
                cmd.Parameters.AddWithValue("rut", rut);
                cmd.Parameters.AddWithValue("nombre", nombre);
                cmd.Parameters.AddWithValue("apellido", apellido);
                cmd.Parameters.AddWithValue("correo", correo);
                cmd.Parameters.AddWithValue("telefono", telefono);
                cmd.Parameters.AddWithValue("direccion", direccion);
                cmd.Parameters.AddWithValue("contrasena", contrasena);
                cmd.Parameters.AddWithValue("comuna", comuna);
                cmd.Parameters.AddWithValue("rol", rol);
                cmd.ExecuteNonQuery();
                con.Close();



            }
            catch (Exception e)
            {
                return "Error " + e.Message.ToString();
            }
            return "asdf";
        }


        //Método para buscar un usuario
        public static Usuario buscarUsuario(string rut)
        {
            foreach (Usuario usuario in listaUsuarios)
            {
                if (usuario.Rut == rut)
                {
                    return usuario;
                }
            }
            return null;
        }

        //Método para modificar un usuario
        public static string modificarUsuario(string rut, string nombre, string apellido, string correo, string telefono, string direccion, string comuna, string contrasena)
        {
            try
            {
                Usuario usuario = buscarUsuario(rut);

                usuario.Rut = rut;
                usuario.Nombre = nombre;
                usuario.Apellido = apellido;
                usuario.Correo = correo;
                usuario.Telefono = telefono;
                usuario.Direccion = direccion;
                usuario.Comuna = comuna;
                usuario.Contrasena = contrasena;

                return "Usuario modificado exitósamente";
            }
            catch (Exception e)
            {
                return "Error: " + e.Message.ToString();
            }

        }

        //Método para eliminar usuario de la lista
        public static string eliminarUsuario(string rut)
        {
            Usuario usuario = buscarUsuario(rut);
            if (usuario != null)
            {
                listaUsuarios.Remove(usuario);

                return "Usuario eliminado exitosamente";
            }
            else
            {
                return "No se pudo eliminar a usuario";
            }
        }


        //Método de autollenado de comunas
        public static void fillComunas()
        {
            if (ComunaControlador.getAll().Count == 0)
            {
                ComunaControlador.addComunas(1, "Cerrillos");
                ComunaControlador.addComunas(2, "Cerro Navia");
                ComunaControlador.addComunas(3, "Conchalí");
                ComunaControlador.addComunas(4, "El Bosque");
                ComunaControlador.addComunas(5, "Estación Central");
                ComunaControlador.addComunas(6, "Huechuraba");
                ComunaControlador.addComunas(7, "Independencia");
                ComunaControlador.addComunas(8, "La Cisterna");
                ComunaControlador.addComunas(9, "La Florida");
                ComunaControlador.addComunas(10, "La Granja");
                ComunaControlador.addComunas(11, "La Pintana");
                ComunaControlador.addComunas(12, "La Reina");
                ComunaControlador.addComunas(13, "La Florida");
                ComunaControlador.addComunas(14, "Las Condes");
                ComunaControlador.addComunas(15, "Lo Barnechea");
                ComunaControlador.addComunas(16, "Lo Espejo");
                ComunaControlador.addComunas(17, "Lo Prado");
                ComunaControlador.addComunas(18, "Macul");
                ComunaControlador.addComunas(19, "Maipú");
                ComunaControlador.addComunas(20, "Ñuñoa");
                ComunaControlador.addComunas(21, "Padre Hurtado");
                ComunaControlador.addComunas(22, "Pedro Aguirre Cerda");
                ComunaControlador.addComunas(23, "San Ramón");
            }
        }

    }

}