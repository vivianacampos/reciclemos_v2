﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Modelo;

namespace reciclemos_v2.Controladores
{
    public class UsuarioControlador
    {
        private static List<Usuario> listaUsuarios = new List<Usuario>();
        private static List<Comuna> listaComunas = new List<Comuna>();



        //private static reciclemosEntities dbc = new reciclemosEntities();


        //Método para agregar a un usuario a la BD
        //public static string agregarUsuario(string rut, string nombre, string apellido, string telefono, string correo, string contrasena, string direccion, int comuna)
        //{
            
        //    try
        //    {
        //        usuario usu = new usuario()
        //        {
        //            rut = rut,
        //            nombre = nombre,
        //            apellido = apellido,
        //            telefono = telefono,
        //            correo = correo,
        //            contrasena = contrasena,
        //            direccion = direccion,
        //            idComuna = 126
                
        //        };

        //        dbc.usuario.Add(usu);
        //        dbc.SaveChanges();
        //        return "Usuario agregado exitosamente";

        //    }
        //    catch (Exception e)
        //    {
        //        return "No se pudo agregar al usuario" + e.Message;
        //    }
        //}


        //Método para buscar un usuario
        public static Usuario buscarUsuario(string rut)
        {
            foreach (Usuario usuario in listaUsuarios)
            {
                if(usuario.Rut == rut)
                {
                    return usuario;
                }
            }
            return null;
        }


        public static void fillComunas()
        {
           if(ComunaControlador.getAll().Count == 0)
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