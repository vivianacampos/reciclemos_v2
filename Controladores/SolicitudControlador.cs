using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using reciclemos_v2.Clases;
using System.Data.SqlClient;
using System.Data;

namespace reciclemos_v2.Controladores
{
    public class SolicitudControlador
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2T6G65H;Initial Catalog=reciclemos;Integrated Security=True");
        List<Solicitud> listaSolicitudes = new List<Solicitud>();
        List<Material> listaMateriales = new List<Material>();
        //Método para crear una solicitud
        public string AddSolicitud(int idUsuario, int estado, string fecha, string horario, List<Material> listaMat)
        {
            try
            {
                int idSol;
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into solicitud (idUsuario, idEstado) values (@idUsuario, @idEstado)", con);
                cmd.Parameters.AddWithValue("idUsuario", idUsuario);
                cmd.Parameters.AddWithValue("idEstado", estado);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("select max(idSolicitud) as id from solicitud", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                idSol = int.Parse(dt.Rows[0][0].ToString());

                foreach (Material m in listaMat)
                {
                    int id = m.IdMat;
                    int cant = m.Cantidad;
                    SqlCommand cmd2 = new SqlCommand("Insert into solicitud_detalle (idSolicitud, idMat, cantidad, fecha, horario) values (@idSol, @id, @cant, @fecha, @horario)", con);
                    cmd2.Parameters.AddWithValue("idSol", idSol);
                    cmd2.Parameters.AddWithValue("id", id);
                    cmd2.Parameters.AddWithValue("cant", cant);
                    cmd2.Parameters.AddWithValue("fecha", fecha);
                    cmd2.Parameters.AddWithValue("horario", horario);
                    cmd2.ExecuteNonQuery();
                }

                return "Solicitud registrada con exito";

            }
            catch (Exception e)
            {
                return "Error " + e;

            }
            finally
            {
                con.Close();
            }
        }
        public DataTable FillDataTableSol(int idUsuario)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select sol.idSolicitud, estado, nombre, apellido, telefono, direccion, material, cantidad, fecha, horario " +
                    "from solicitud sol"
                    + " join solicitud_detalle soldet on sol.idSolicitud = soldet.idSolicitud "
                    + " join estado e on sol.idEstado = e.idEstado "
                    + " join usuario u on u.idUsuario = sol.idUsuario"
                    + " join materiales m on soldet.idMat = m.idMateriales "
                    + " where sol.idUsuario = @idUsuario", con);
                cmd.Parameters.AddWithValue("idUsuario", idUsuario);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                return dt;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        public DataTable FillDTEmpresa( int idEstado)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select sol.idSolicitud, e.estado, u.nombre, u.apellido, u.telefono, u.direccion, m.material, solDet.cantidad, solDet.fecha, solDet.horario "
                    + " from solicitud sol join estado e on sol.idEstado = e.idEstado "
                    + " join solicitud_detalle solDet on solDet.IdSolicitud = sol.IdSolicitud "
                    + " join usuario u on sol.idUsuario = u.idUsuario " + 
                    " join materiales m on solDet.idMat = m.idMateriales where e.idEstado = @idEstado", con);
                cmd.Parameters.AddWithValue("idEstado", idEstado);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                if (dt.Rows.Count != 0)
                {
                    foreach (DataTable data in dt.Rows)
                    {
                        Solicitud sol = new Solicitud();
                        sol.IdSol = int.Parse(data.Rows[0][0].ToString());
                        sol.Estado = data.Rows[0][1].ToString();
                        sol.Fecha = data.Rows[0][2].ToString();
                        sol.Horario = data.Rows[0][3].ToString();
                        Material m = new Material();
                        m.Nombre = data.Rows[0][4].ToString();
                        m.Cantidad = int.Parse(data.Rows[0][5].ToString());
                        listaMateriales.Add(m);
                        sol.ListaMateriales = listaMateriales;
                        listaSolicitudes.Add(sol);
                    }

                }

                sda.Fill(dt);

                return dt;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }


        }
        public DataTable FillDTAll()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select sol.idSolicitud, nombre, apellido, direccion, telefono, fecha, horario, cantidad, material, estado from solicitud sol join usuario u on sol.idUsuario = u.idUsuario join solicitud_detalle solDet on sol.idSolicitud = solDet.idSolicitud join materiales m on solDet.idMat = m.idMateriales join estado e on sol.idEstado = e.idEstado", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                return dt;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }


        }

        public DataTable FillDTUsuario(int idUsuario, int idEstado)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select sol.idSolicitud, e.estado, u.nombre, u.apellido, u.telefono, u.direccion, m.material, solDet.cantidad, solDet.fecha, solDet.horario "
                    + " from solicitud sol join estado e on sol.idEstado = e.idEstado "
                    + " join solicitud_detalle solDet on solDet.IdSolicitud = sol.IdSolicitud "
                    + " join usuario u on sol.idUsuario = u.idUsuario "
                    + " join materiales m on solDet.idMat = m.idMateriales "
                    + " where sol.idUsuario = @idUsuario and sol.idEstado = @idEstado", con);
                cmd.Parameters.AddWithValue("idUsuario", idUsuario);
                cmd.Parameters.AddWithValue("idEstado", idEstado);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();


                sda.Fill(dt);

                return dt;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }


        }
    }
}