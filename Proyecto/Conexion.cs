using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public class Conexion
    {

        public static String CadenaConexion = "Server=localhost;Database=empleatec;Uid=Fernando;Pwd=sistemas";
        //generando conexion a la base de datos

        static MySqlConnection conecta = new MySqlConnection(CadenaConexion);

        public static int RegistrarEmpresario(params String[] dEmpreasio)
        {
            MySqlCommand datosEmpresario = new MySqlCommand("insert into empresarios values(0, @apaterno,@amaterno,@nombre,@telefono,@correo)", conecta);
            datosEmpresario.Parameters.AddWithValue("@apaterno",dEmpreasio[0]);
            datosEmpresario.Parameters.AddWithValue("@amaterno",dEmpreasio[1]);
            datosEmpresario.Parameters.AddWithValue("@nombre",dEmpreasio[2]);
            datosEmpresario.Parameters.AddWithValue("@telefono",dEmpreasio[3]);
            datosEmpresario.Parameters.AddWithValue("@correo",dEmpreasio[4]);

            int almacenado = 0;
            try
            {
                almacenado = datosEmpresario.ExecuteNonQuery(); 
            }
            catch (Exception error)
            {
                throw;
            }

            conecta.Close();
            return almacenado;
        }


    }
}