﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace MercadoEnvio.Negocio
{
   public class Rol
    {

        private List<SqlParameter> parameters = null;
        private SqlParameter parameter = null;
        private bool result = false;

        #region atributos

        private int _rolID;
        public int RolID
        {
            get { return _rolID; }
            set { _rolID = value; }
        }

        private string _rolNombre;
        public string RolNombre
        {
            get { return _rolNombre; }
            set { _rolNombre = value; }
        }

        private List<string> _Funcionalidad;
        public List<string> Funcionalidad
        {
            get { return _Funcionalidad; }
            set { _Funcionalidad = value; }
        }

        private int _estadoID;
        public int EstadoID
        {
            get { return _estadoID; }
            set { _estadoID = value; }
        }

        private string _estadoDescripcion;
        public string EstadoDescripcion
        {
            get { return _estadoDescripcion; }
            set { _estadoDescripcion = value; }
        }

        #endregion propiedades

        #region metodos

        public DataTable buscarRol(string nombre, string funcionalidad, string estado)
        {
            parameters = new List<SqlParameter>();
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);

            try
            {
                parameters.Clear();
                parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
                if (string.IsNullOrEmpty(nombre))
                    parameter.Value = DBNull.Value;
                else
                    parameter.Value = nombre;
                parameters.Add(parameter);

                parameter = new SqlParameter("@funcionalidad", SqlDbType.VarChar, 200);
                if (string.IsNullOrEmpty(funcionalidad))
                    parameter.Value = DBNull.Value;
                else
                    parameter.Value = funcionalidad;
                parameters.Add(parameter);

                parameter = new SqlParameter("@estado", SqlDbType.VarChar, 50);
                if (string.IsNullOrEmpty(estado))
                    parameter.Value = DBNull.Value;
                else
                    parameter.Value = estado;
                parameters.Add(parameter);

                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("ALLBLACKS.Rol_Sel", parameters);

                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public bool altaRol(string nombre, int estado)
        {
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);
            
           
            parameter = new SqlParameter("@estado", SqlDbType.Int);
            parameter.Value = estado;
            parameters.Add(parameter);

            SQLHelper.SQLHelper.CreateObjects(true);
            try
            {
                result = SQLHelper.SQLHelper.SQLHelper_ExecuteNonQuery("ALLBLACKS.Rol_Ins", parameters);
                SQLHelper.SQLHelper.CommitTransction();

                return result;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public bool altaFuncionalidadxRol(string nombre, string funcionalidad)
        {
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);

            parameter = new SqlParameter("@funcionalidad", SqlDbType.VarChar, 200);
            parameter.Value = funcionalidad;
            parameters.Add(parameter);

            SQLHelper.SQLHelper.CreateObjects(true);
            try
            {
                result = SQLHelper.SQLHelper.SQLHelper_ExecuteNonQuery("ALLBLACKS.FuncionalidadxRol_Ins", parameters);
                SQLHelper.SQLHelper.CommitTransction();

                return result;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public bool baja(string nombre)
        {
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);

            SQLHelper.SQLHelper.CreateObjects(true);
            try
            {
                result = SQLHelper.SQLHelper.SQLHelper_ExecuteNonQuery("ALLBLACKS.Rol_Del", parameters);
                SQLHelper.SQLHelper.CommitTransction();

                return result;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public bool bajaFuncionalidadxRol(string nombre, string funcionalidad)
        {
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);

            parameter = new SqlParameter("@funcionalidad", SqlDbType.VarChar, 200);
            parameter.Value = funcionalidad;
            parameters.Add(parameter);

            SQLHelper.SQLHelper.CreateObjects(true);
            try
            {
                result = SQLHelper.SQLHelper.SQLHelper_ExecuteNonQuery("ALLBLACKS.FuncionalidadxRol_Del", parameters);
                SQLHelper.SQLHelper.CommitTransction();

                return result;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public bool modificacion(string nombre, string funcionalidad, string estado)
        {
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);

            parameter = new SqlParameter("@funcionalidad", SqlDbType.VarChar, 200);
            parameter.Value = funcionalidad;
            parameters.Add(parameter);

            parameter = new SqlParameter("@estado", SqlDbType.VarChar, 50);
            parameter.Value = estado;
            parameters.Add(parameter);

            SQLHelper.SQLHelper.CreateObjects(true);
            try
            {
                result = SQLHelper.SQLHelper.SQLHelper_ExecuteNonQuery("ALLBLACKS.Rol_Upd", parameters);
                SQLHelper.SQLHelper.CommitTransction();

                return result;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public DataTable FuncionalidadesXRol(string nombre)
        {
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);

            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@nombre", SqlDbType.VarChar, 150);
            parameter.Value = nombre;
            parameters.Add(parameter);

            try
            {
                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("ALLBLACKS.FuncionalidadxRol_sel", parameters);
                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public DataTable Funcionalidades()
        {
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);

            try
            {
                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("ALLBLACKS.Funcionalidad_sel");
                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public DataTable Estados()
        {
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);

            try
            {
                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("ALLBLACKS.RolEstado_sel");
                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public DataTable Roles()
        {
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);

            try
            {
                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("Los_Pumas.Roles_sel");
                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }

        public DataTable RolesxUsuario(int IDuser)
        {
            DataTable data = new DataTable();
            SQLHelper.SQLHelper.ConnectionValue = Properties.Settings.Default.ConectionString;
            SQLHelper.SQLHelper.CreateObjects(true);
            if (!object.Equals(parameters, null))
                parameters.Clear();
            else
                parameters = new List<SqlParameter>();

            parameter = new SqlParameter("@IDUser", SqlDbType.Int);
            parameter.Value = IDuser;
            parameters.Add(parameter);

            try
            {
                data = SQLHelper.SQLHelper.SQLHelper_ExecuteReader("ALLBLACKS.RolesxUsuario", parameters);
                return data;
            }
            catch (Exception ex)
            {
                SQLHelper.SQLHelper.RollBackTransction();
                throw ex;
            }
            finally
            {
                SQLHelper.SQLHelper.ClearObjects();
            }
        }



        #endregion metodos
    



    }
}
