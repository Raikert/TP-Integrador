using ClaseBD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;



namespace vistas
{
    public class NegocioGenerales
    {
        private string rutaBD;
        private BD obj;

      public  NegocioGenerales(string rutaBD)
        {
            this.rutaBD = rutaBD;
             obj = new BD(rutaBD);
        }

        public NegocioGenerales()
        {

        }

        public void ConsultaPersonalizada(string consulta)
        {
            obj.Command(consulta);
            obj.CommandRun();
        }

        public DataTable cargarGrilla(string consulta)
        {
            obj.Adapter(consulta);
            obj.DataSet("tabla");
            return obj.grid_DataTable("tabla");       
               
        }

        public void modificarCampo(string codigo,string campo,string valor, string tabla,bool inter)
        {
            string formatoVal;
            if (!inter)
            {
                formatoVal = "'" + valor + "'";
            }
            else
            {
                formatoVal = valor;
            }

            obj.Command("Update " + tabla + " set " + campo + " = " + formatoVal+"where Cod_Libro_Lb = '"+codigo+"'");
            obj.CommandRun();
            
        }

        public void cerrarConexion()
        {
            obj.Cerrar();
        }
    }
}