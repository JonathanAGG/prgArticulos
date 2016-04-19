using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;
using System.Data.SqlClient;

namespace Controlador
{
    public class clsUsuario
    {
        #region Atributos
        //permite las sentencias del SQl Transact
        private string strSentencia;
        //permite enviar la ejecucion de la sentencia al modelo en la clase Conexion
        clsConexionSQL conexion = new clsConexionSQL();
        #endregion

        #region Metodos


        //Metodo para accesar al sistema
        public SqlDataReader mConsultarUsuario(Modelo.clsConexionSQL cone, Modelo.clsEntidadUsuario pEntidadUsuario)
        {
            

            strSentencia = "Select * from tbUsuario where codUsuario='"+ pEntidadUsuario.getCodigo()+"' and clave='"+ pEntidadUsuario.getClave()+"'";
            return conexion.mSeleccionar(strSentencia, cone);
        }
        #endregion



    }
}
