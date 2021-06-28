﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using reciclemos_v2.Controladores;
using reciclemos_v2.Modelo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace reciclemos_v2.Controladores
{
    public class LoginControlador
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        public Usuario logear(string correo, string contrasena)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select correo, contrasena, idTipoUsu, nombre, apellido From usuario Where correo = @correo and contrasena = @contrasena", con);
                cmd.Parameters.AddWithValue("correo", correo);
                cmd.Parameters.AddWithValue("contrasena", contrasena);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Usuario usu = new Usuario() { 
                    Correo = dt.Rows[0][0].ToString(),
                    Contrasena = dt.Rows[0][1].ToString(),
                    Rol = int.Parse(dt.Rows[0][2].ToString()),
                    Nombre = dt.Rows[0][3].ToString(),
                    Apellido = dt.Rows[0][4].ToString()
                };
                //Session[p] = usu;
                
                if (dt.Rows.Count == 1)
                {
                    return usu;
                }
                else
                {
                    return null;
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("Error " + e);
            }
            finally
            {
                con.Close();
            }
            return null;
        }

    }

}