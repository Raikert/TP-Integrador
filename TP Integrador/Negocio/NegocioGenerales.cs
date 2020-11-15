using ClaseBD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Negocio
{
    public class NegocioGenerales
    {
        private BD obj;

        public NegocioGenerales()
        {
            obj = new BD(@"Data Source=localhost\sqlexpress;Initial Catalog=PFprogramacion3;Integrated Security=True");
        }

        public void Consulta(string consulta)
        {
            obj.Command(consulta);
        }

        public DataTable DataTable_Query(string consulta)
        {
            return obj.Consulta_DataTable(consulta);
        }

        public void modificarCampo(string campocodigo,string codigo, string campo, string valor, string tabla, bool int_value)
        {
            string formatoVal;
            if (!int_value)
            {
                formatoVal = "'" + valor + "'";
            }
            else
            {
                formatoVal = valor;
            }

            obj.Command("Update " + tabla + " set " + campo + " = " + formatoVal + " where "+ campocodigo +" = '" + codigo + "'");
            
        }

        public void cerrarConexion()
        {
            obj.Cerrar();
        }
    }
}