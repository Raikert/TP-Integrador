using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Negocio;
using System.Web.UI.WebControls;

namespace Vistas.Clases
{
    public class Utilidades
    {
        private NegocioGenerales obj;

        public Utilidades()
        {
            obj = new NegocioGenerales();
        }

        public int Bindear(ref GridView grid, string consulta, bool reiniciar_paginas = false)
        {
            DataTable tabla = obj.DataTable_Query(consulta);

            grid.DataSource = tabla;
            grid.DataBind();

            if (reiniciar_paginas)
                grid.PageIndex = 0;

            return tabla.Rows.Count;
        }

        public void Bindear(ref DropDownList ddl, string consulta, string campo)
        {
            DataTable tabla = obj.DataTable_Query(consulta);

            foreach (DataRow fila in tabla.Rows)
            {
                ddl.Items.Add(fila[campo].ToString());
            }
        }

        public void modificar(ref TextBox cod, ref TextBox value, string tabla, bool int_value = false)
        {
            if (value.Text != "")
            {
                string codigo = cod.Text;
                string campo = value.ID;
                string valor = value.Text;
                obj.modificarCampo(cod.ID, codigo, campo, valor, tabla, int_value);
                limpiar(ref value);
            }
        }

        public void modificar(ref TextBox cod, string campo, string valor, string tabla, bool int_value = false)
        {
            string codigo = cod.Text;
            obj.modificarCampo(cod.ID, codigo, campo, valor, tabla, int_value);
        }

        public void modificar(string campocodigo,string codigo, ref TextBox value, string tabla, bool int_value = false)
        {
            if (value.Text != "")
            {
                string campo = value.ID;
                string valor = value.Text;

                obj.modificarCampo(campocodigo, codigo, campo, valor, tabla, int_value);
            }
        }

        public void modificar(ref TextBox cod, ref DropDownList value, string tabla, bool int_value = false, bool estado = false)
        {
            if (value.Text != "Seleccionar")
            {
                string codigo = cod.Text;
                string campo = value.ID;
                string valor;

                if (!estado)
                    valor = value.Text;
                else
                    valor = value.SelectedValue;

                obj.modificarCampo(cod.ID, codigo, campo, valor, tabla, int_value);
            }
        }

        public bool buscarIgualdad(string valor_a_comparar, string campo, string tabla_consulta)
        {
            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta);

            bool repeticion = false;

            foreach (DataRow registro in tabla.Rows)
            {
                if (registro[campo].ToString() == valor_a_comparar)
                    repeticion = true;
            }

            return repeticion;
        }

        public bool buscarIgualdad(ref TextBox valor_a_comparar, string tabla_consulta)
        {
            string campo = valor_a_comparar.ID;

            string valor = valor_a_comparar.Text;

            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta);

            bool repeticion = false;

            foreach (DataRow registro in tabla.Rows)
            {
                if (registro[campo].ToString() == valor)
                    repeticion = true;
            }

            return repeticion;
        }

        public bool buscarIgualdad_Where(string campocodigo,string codigo,ref TextBox valor_a_comparar, string tabla_consulta,bool valor_especial = false)
        {
            string valorcodigo;

            if (!valor_especial)
                valorcodigo = "'" + codigo+ "'";
            else
                valorcodigo = codigo;

            string campo = valor_a_comparar.ID;

            string valor = valor_a_comparar.Text;

            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta + " where " + campocodigo + " = " + valorcodigo);

            bool repeticion = false;

            foreach (DataRow registro in tabla.Rows)
            {
                if (registro[campo].ToString() == valor)
                    repeticion = true;
            }

            return repeticion;
        }

        public string valor_campo_Where(ref TextBox cod,string campo, string tabla_consulta,bool valor_especial = false)
        {
            string campocodigo = cod.ID;

            string valorcodigo;

            if (!valor_especial)
                valorcodigo = "'" + cod.Text + "'";
            else
                valorcodigo = cod.Text;

            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta + " where " + campocodigo + " = " + valorcodigo);

            return tabla.Rows[0][campo].ToString();
        }

        public string valor_campo_Where(string campocodigo, string codigo, string campo, string tabla_consulta, bool valor_especial = false)
        {
            string valorcodigo;

            if (!valor_especial)
                valorcodigo = "'" + codigo + "'";
            else
                valorcodigo = codigo;

            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta + " where " + campocodigo + " = " + valorcodigo);

            return tabla.Rows[0][campo].ToString();
        }

        public void limpiar(ref TextBox textBox)
        {
            textBox.Text = "";
        }

        public void limpiar(ref Label label)
        {
            label.Text = "";
        }

        public void cerrarConexion()
        {
            obj.cerrarConexion();
        }
    }
}