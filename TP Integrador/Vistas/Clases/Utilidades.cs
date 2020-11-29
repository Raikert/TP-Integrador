using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Negocio;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace Vistas.Clases
{
    public class Utilidades
    {
        private NegocioGenerales obj;

        public Utilidades()
        {
            obj = new NegocioGenerales();
        }

        public void cambiarConsultaDataSource(ref SqlDataSource sql, string consulta)
        {
            sql.SelectCommand = consulta;
        }

        public void cargarDatosCarro(ref Label lbl1, ref Label lbl2, HttpSessionState Session)
        {
            DataTable tabla_carro = (DataTable)Session["Carrito"];

            lbl1.Text = tabla_carro.Rows.Count.ToString();

            Decimal precio_libro = new Decimal();

            foreach (DataRow registro in tabla_carro.Rows)
            {
                precio_libro += Convert.ToDecimal(registro["Precio_Lb"]);
            }

            lbl2.Text = Convert.ToString(precio_libro);
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

        public int Bindear(ref ListView lv, string consulta, bool reiniciar_paginas = false)
        {
            DataTable tabla = obj.DataTable_Query(consulta);

            int filas_afectadas = tabla.Rows.Count;

            if (filas_afectadas != 0)
            {
                lv.DataSource = tabla;
                lv.DataBind();
            }
            else
            {
                lv.DataSource = null;
                lv.DataBind();
            }

            return filas_afectadas;
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

        public void modificar(string campo, string valor, string tabla,string campocodigo, string codigo, bool valor_especial = false)
        {
            obj.modificarCampo(campocodigo, codigo, campo, valor, tabla, valor_especial);
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

        public string valor_campo_Where(string campo, string tabla_consulta, string campocodigo, string codigo, bool valor_especial = false)
        {
            string valorcodigo;

            if (!valor_especial)
                valorcodigo = "'" + codigo + "'";
            else
                valorcodigo = codigo;

            DataTable tabla = obj.DataTable_Query("select " + campo + " from " + tabla_consulta + " where " + campocodigo + " = " + valorcodigo);

            return tabla.Rows[0][campo].ToString();
        }

        public string valor_campo_Where(string campo,string consulta)
        {
            DataTable tabla = obj.DataTable_Query(consulta);

            return tabla.Rows[0][campo].ToString();
        }

        public bool validaciones_precio(ref TextBox txt, string tipo_precio, ref Label lbl)
        {
            bool validador = true;

            if (txt.Text == "")
            {
                validador = false;
                return validador;
            }
                
            string[] caracteres_aceptables = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "," };

            bool cadena_valida = false;

            foreach (char caracter in txt.Text)
            {
                cadena_valida = false;

                foreach (string caracter_aceptado in caracteres_aceptables)
                {
                    if (caracter == caracter_aceptado[0])
                    {
                        cadena_valida = true;
                        break;
                    }
                }

                if (!cadena_valida)
                    break;
            }

            string[] mensajes_error = { "el precio " + tipo_precio + " es invalido", "el precio " + tipo_precio + " tiene mas de 2 decimales" };

            if (!cadena_valida)
            {
                lbl.Text = mensajes_error[0];
                validador = false;
                return validador;
            }
            else
                lbl.Text = "";

            if (txt.Text.Contains("."))
            {
                string[] cadenas = txt.Text.Split('.');

                if (cadenas.Length > 2)
                {
                    lbl.Text = mensajes_error[0];
                    validador = false;
                    return validador;
                }
                else
                {
                    if (cadenas[0] == "" || cadenas[1] == "")
                    {
                        lbl.Text = mensajes_error[0];
                        validador = false;
                        return validador;
                    }

                    if (cadenas[1].Length > 2)
                    {
                        lbl.Text = mensajes_error[1];
                        validador = false;
                        return validador;
                    }
                }

                if (cadenas[1].Length == 1)
                    txt.Text += "0";
            }
            else if (txt.Text.Contains(","))
            {
                string[] cadenas = txt.Text.Split(',');

                if (cadenas.Length > 2)
                {
                    lbl.Text = mensajes_error[0];
                    validador = false;
                    return validador;
                }
                else
                {
                    if (cadenas[0] == "" || cadenas[1] == "")
                    {
                        lbl.Text = mensajes_error[0];
                        validador = false;
                        return validador;
                    }

                    if (cadenas[1].Length > 2)
                    {
                        lbl.Text = mensajes_error[1];
                        validador = false;
                        return validador;
                    }
                }

                txt.Text = cadenas[0] + "." + cadenas[1];

                if (cadenas[1].Length == 1)
                    txt.Text += "0";
            }

            return validador;
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