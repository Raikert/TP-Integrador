using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Management.Instrumentation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vistas;

namespace Vistas
{
    public partial class PanelDelAdministrador : System.Web.UI.Page
    {
        NegocioGenerales obj = new NegocioGenerales("Data Source=localhost\\sqlexpress;Initial " +
                 "Catalog=PFprogramacion3;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

        protected void btnMostrarLibros_Click(object sender, EventArgs e)
        {
            BindearGrid(ref grdLibro, "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
               "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
               "Activo_Lb AS ACTIVO FROM Libros");

            obj.cerrarConexion();
        }

        protected void btnBuscarLibro_Click(object sender, EventArgs e)
        {
            BindearGrid(ref grdLibro, "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
                "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
                "Activo_Lb AS ACTIVO FROM Libros where Cod_Libro_Lb = '" + Cod_Libro_Lb.Text + "'");

            obj.cerrarConexion();

            limpiartxt(ref Cod_Libro_Lb);
        }

        protected void btnModificarLibro_Click(object sender, EventArgs e)
        {
            string tabla = "Libros";

            modificar(ref Cod_Libro_Lb,ref NombreLibro_Lb,tabla);
            modificar(ref Cod_Libro_Lb, ref Descripcion_lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Precio_Lb, tabla, true);
            modificar(ref Cod_Libro_Lb,ref Categoria_Lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Editorial_Lb, tabla);
            modificar(ref Cod_Libro_Lb, ref Activo_Lb, tabla, true, true);

            BindearGrid(ref grdLibro, "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
               "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
               "Activo_Lb AS ACTIVO FROM Libros where Cod_Libro_Lb = '" + Cod_Libro_Lb.Text + "'");

            obj.cerrarConexion();
        }


        public void modificar(ref TextBox cod,ref TextBox value,string tabla, bool inter = false)
        {
            if (value.Text != "")
            {    
                string codigo = cod.Text;
                string campo = value.ID;
                string valor = value.Text;
                obj.modificarCampo(codigo, campo, valor, tabla,inter);
                limpiartxt(ref cod);
                limpiartxt(ref value);
            }
        }

        public void modificar(ref TextBox cod, string campo,string valor, string tabla, bool inter = false)
        {
                string codigo = cod.Text;
                obj.modificarCampo(codigo, campo, valor, tabla, inter);
        }

        public void modificar(ref TextBox mod, ref DropDownList cod, string tabla, bool inter = false,bool estado = false)
        {
            if (mod.Text != "")
            {
                string codigo = mod.Text;
                string campo = cod.ID;
                string valor;

                if(!estado)
                valor = cod.Text;
                else
                valor = cod.SelectedValue;

                obj.modificarCampo(codigo, campo, valor, tabla, inter);
            }
        }

        protected void btnBorrarLibro_Click(object sender, EventArgs e)
        {
            string tabla = "Libros";

            modificar(ref Cod_Libro_Lb,"Activo_Lb","0", tabla, true);

            obj.cerrarConexion();

            limpiartxt(ref Cod_Libro_Lb);

            lblEstadoABM_Libro.Text = "Registro de libro dado de baja exitosamente";
        }

        public void BindearGrid(ref GridView grid,string consulta)
        {
            grdLibro.DataSource = obj.cargarGrilla(consulta);
            grdLibro.DataBind();
        }

        protected void btnAgregarLibro_Click(object sender, EventArgs e)
        {
            obj.ConsultaPersonalizada("INSERT INTO Libros(Cod_Libro_Lb, NombreLibro_Lb, Descripcion_lb, Editorial_Lb, Categoria_Lb, Precio_Lb, Activo_Lb)" +
                "SELECT '"+ Cod_Libro_Lb.Text + "', '" + NombreLibro_Lb.Text + "', '" + Descripcion_lb.Text + "', '" + Editorial_Lb.Text + "', '" + Categoria_Lb.Text +
                "', '" + Precio_Lb.Text + "', 'true'");

            BindearGrid(ref grdLibro, "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
               "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
               "Activo_Lb AS ACTIVO FROM Libros where Cod_Libro_Lb = '" + Cod_Libro_Lb.Text + "'");

            obj.cerrarConexion();

            limpiartxt(ref Cod_Libro_Lb);
            limpiartxt(ref NombreLibro_Lb);
            limpiartxt(ref Precio_Lb);
            limpiartxt(ref Descripcion_lb);

            lblEstadoABM_Libro.Text = "Registro de libro agregado exitosamente";
        }

        public void limpiartxt(ref TextBox textBox)
        {
            textBox.Text = "";
        }
    }
}