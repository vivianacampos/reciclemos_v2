using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;


namespace reciclemos_v2.Controladores
{
    public class LoginControlador
    {
        public static Usuario login(string correo, string contrasena)
        {
            foreach (Usuario usuario in UsuarioControlador.getUser())
            {
                if (usuario.Correo.Equals(correo))
                {
                    if (usuario.Contrasena.Equals(contrasena))
                    {
                        return usuario;
                    }else
                    {
                        return null;
                    }
                }

            }
            return null;
        }
    }

}