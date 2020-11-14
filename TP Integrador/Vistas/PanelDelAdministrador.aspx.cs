using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Management.Instrumentation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades.Clases;

namespace Vistas
{
    public partial class PanelDelAdministrador : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Libro lib;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            obj = new NegocioGenerales();

            lib = new Libro();

            limpiarEstados();

            if(!IsPostBack)
            {
                Bindear(ref Categoria_Lb, "SELECT[Nombre_Ca] FROM[Categorias]", "Nombre_Ca");
                Bindear(ref Editorial_Lb, "SELECT [Nombre_E] FROM [Editoriales]", "Nombre_E");
            }
        }

        protected void grdLibro_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdLibro.PageIndex = e.NewPageIndex;

            Bindear(ref grdLibro, (string)Session["consulta_actual"], true);

            obj.cerrarConexion();
        }

        protected void btnMostrarLibros_Click(object sender, EventArgs e)
        {
            int filas_afectadas = Bindear(ref grdLibro, lib.getConsulta(0));

            obj.cerrarConexion();

            Session["consulta_actual"] = lib.getConsulta(0);

            lblEstadoABM_Libro.Text = "Se encontraron " + filas_afectadas + " registros de libros";
        }

        protected void btnBuscarLibro_Click(object sender, EventArgs e)
        {
            lib.codLibro = "'" + Cod_Libro_Lb.Text + "'";
            lib.nombreLibro = "'" + NombreLibro_Lb.Text + "'";
            lib.catLibro = "'" + Categoria_Lb.Text + "'";
            lib.editLibro = "'" + Editorial_Lb.Text + "'";
            lib.precioLibro = Precio_Lb.Text;
            lib.estadoLibro = Activo_Lb.Text;
            lib.descLibro = "'" + Descripcion_lb.Text + "'";

            lib.setMostrar_Where(Convert.ToInt32(ddlCampoBuscar.SelectedValue));

            int filas_afectadas = Bindear(ref grdLibro, lib.getConsulta(1));

            obj.cerrarConexion();

            Session["consulta_actual"] = lib.getConsulta(1);

            limpiar(ref Cod_Libro_Lb);

            lblEstadoABM_Libro.Text = "Se encontraron " + filas_afectadas + " registros de libros";
        }

        protected void btnModificarLibro_Click(object sender, EventArgs e)
        {
            string tabla = "Libros";

            modificar(ref Cod_Libro_Lb, ref NombreLibro_Lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Categoria_Lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Editorial_Lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Precio_Lb, tabla, true);
            modificar(ref Cod_Libro_Lb, ref Activo_Lb, tabla, true, true);
            modificar(ref Cod_Libro_Lb, ref Descripcion_lb, tabla);

            lib.setMostrar_Where(Cod_Libro_Lb.ID, "'" + Cod_Libro_Lb.Text + "'");

            Bindear(ref grdLibro, lib.getConsulta(1));

            obj.cerrarConexion();

            limpiar(ref Cod_Libro_Lb);

            lblEstadoABM_Libro.Text = "Registro de libro modificado exitosamente";
        }

        protected void btnAgregarLibro_Click(object sender, EventArgs e)
        {
            lib.codLibro = Cod_Libro_Lb.Text;
            lib.nombreLibro = NombreLibro_Lb.Text;
            lib.catLibro = Categoria_Lb.Text;
            lib.editLibro = Editorial_Lb.Text;
            lib.precioLibro = Precio_Lb.Text;
            lib.estadoLibro = Activo_Lb.SelectedValue;
            lib.descLibro = Descripcion_lb.Text;

            lib.setConsultaInsert();

            obj.Consulta(lib.getConsulta(2));

            lib.setMostrar_Where(Cod_Libro_Lb.ID, "'" + Cod_Libro_Lb.Text + "'");

            Bindear(ref grdLibro, lib.getConsulta(1));

            obj.cerrarConexion();

            limpiar(ref Cod_Libro_Lb);
            limpiar(ref NombreLibro_Lb);
            limpiar(ref Precio_Lb);
            limpiar(ref Descripcion_lb);

            lblEstadoABM_Libro.Text = "Registro de libro agregado exitosamente";
        }

        public void modificar(ref TextBox cod, ref TextBox value, string tabla, bool int_value = false)
        {
            if (value.Text != "")
            {
                string codigo = cod.Text;
                string campo = value.ID;
                string valor = value.Text;
                obj.modificarCampo(codigo, campo, valor, tabla, int_value);
                limpiar(ref value);
            }
        }

        public void modificar(ref TextBox cod, string campo, string valor, string tabla, bool int_value = false)
        {
            string codigo = cod.Text;
            obj.modificarCampo(codigo, campo, valor, tabla, int_value);
        }

        public void modificar(ref TextBox cod, ref DropDownList value, string tabla, bool int_value = false, bool estado = false)
        {
                string codigo = cod.Text;
                string campo = value.ID;
                string valor;

                if (!estado)
                    valor = value.Text;
                else
                    valor = value.SelectedValue;

                obj.modificarCampo(codigo, campo, valor, tabla, int_value);
        }

        public int Bindear(ref GridView grid, string consulta,bool reiniciar_paginas = false)
        {
            DataTable tabla = obj.DataTable_Query(consulta);

            grdLibro.DataSource = tabla;
            grdLibro.DataBind();
            
            if(reiniciar_paginas)
            grdLibro.PageIndex = 0;

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

        public void limpiar(ref TextBox textBox)
        {
            textBox.Text = "";
        }

        public void limpiar(ref Label label)
        {
            label.Text = "";
        }

        public void limpiarEstados()
        {
            limpiar(ref lblEstadoABM_Libro);
            limpiar(ref lblEstadoABM_Categoria);
            limpiar(ref lblEstadoABM_Editorial);
            limpiar(ref lblEstadoABM_Proveedor);
            limpiar(ref lblEstadoLibrosXProveedores);
            limpiar(ref lblEstadoStock);
            limpiar(ref lblEstadoCliente);
            limpiar(ref lblEstadoVentas);
            limpiar(ref lblEstadoDetalleVentas);
        }
    }
}