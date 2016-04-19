using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;//Retornar de system de windows el nombre de la maquina
using System.Data.SqlClient;//Accesos a la BD(IMEC)

namespace Modelo
{
    public class clsConexionSQL
    {
        //Area de la declaracion de todas las variables
        #region Atributos
        private string codigo;
        private string clave;
        private string perfil;
        private string baseDatos;
        private string nomServidor;

        private SqlConnection conexion; //Guardar la cadena de conexion del usuario con la BD
        private SqlCommand comando; //permite ejecutar los IMEC
        #endregion

        //Establecemos el metodo nicial
        #region Constructor
        public clsConexionSQL()
        {
            this.codigo = "";
            this.clave = "";
            this.perfil = "";
            this.baseDatos = "BDEstudiante";
            this.nomServidor = "DESKTOP-ENIAODJ\\SQLEXPRESS";
        }
        #endregion

        //Propiedade de lectura y escritura
        #region GetySet
        public void setCodigo(string codigo)
        {
            this.codigo = codigo.Trim();
        }
        public String getCodigo()
        {
            return this.codigo;
        }
        public void setClave(string clave)
        {
            this.clave = clave.Trim();
        }
        public String getClave()
        {
            return this.clave;
        }
        public void setPerfil(string perfil)
        {
            this.perfil = perfil.Trim();
        }
        public String getPerfil()
        {
            return this.perfil;
        }
        #endregion

        //Metodo para la conexion con la base de datos
        #region Metodos

        //Este metodo permitira ejecutar los select
        public SqlDataReader mSeleccionar(string strSentencia, clsConexionSQL cone)
        {
            try
            {
                if (mConectar(cone))
                {
                    comando = new SqlCommand(strSentencia, conexion);
                    comando.CommandType = System.Data.CommandType.Text;
                    //el ExecuteReader ejecuta solo select
                    return comando.ExecuteReader();
                }
                else
                    return null;
            } catch
            {
                return null;
            }
        }// fin del metodo mSeleccionar

        //Este metodo permitira ejecutar los Insert, Update y Delete
        public Boolean mEjecutar(string strSentencia, clsConexionSQL cone)
        {
            try
            {
                if (mConectar(cone))
                {
                    comando = new SqlCommand(strSentencia, conexion);
                    comando.ExecuteNonQuery();
                    return true;
                } else
                    return false;
            } catch
            {
                return false;
            }
        }

        //Este metodo nos permite abrir y conectarnos con la base de datos
        public Boolean mConectar(clsConexionSQL cone)
        {
            try
            {
                conexion = new SqlConnection();
                conexion.ConnectionString = "user id='" + cone.getCodigo() + "'; password='" + cone.getClave() + "'; Data Source='" + this.nomServidor + "'; Initial Catalog='" + this.baseDatos + "'";
                conexion.Open();
                return true;
            } catch
            {
                return false;
            }
        }
        #endregion
    }
}
