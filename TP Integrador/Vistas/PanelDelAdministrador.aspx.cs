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

        protected void btnModificarProveedor_Click(object sender, EventArgs e)
        {
            if (Cod_Proveedor_Pr.ToString() != "")
            {
                /* Proveedor prov
                 
                NegocioProveedores np

                prov = txtCodigo.text;

                np.modificarCodigo(prov);

                "Update Proveedores set prov.codigo.id = prov.codigo.text"

                */


            }
        }

        protected void cvCodigoLibro_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnMostrarLibros_Click(object sender, EventArgs e)
        {
           grdLibro.DataSource = obj.cargarGrilla("SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, Activo_Lb AS ACTIVO FROM Libros");
           grdLibro.DataBind();
        }

        protected void btnBuscarLibro_Click(object sender, EventArgs e)
        {
            grdLibro.DataSource = obj.cargarGrilla("SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
                "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
                "Activo_Lb AS ACTIVO FROM Libros where Cod_Libro_Lb = '" + Cod_Libro_Lb.Text+"'");
            grdLibro.DataBind();
        }

        protected void btnModificarLibro_Click(object sender, EventArgs e)
        {
            modificar(ref Cod_Libro_Lb,ref NombreLibro_Lb);
            modificar(ref Cod_Libro_Lb, ref Descripcion_lb);
            modificar(ref Cod_Libro_Lb, ref Precio_Lb, true);

            grdLibro.DataSource = obj.cargarGrilla("SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
                "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
                "Activo_Lb AS ACTIVO FROM Libros where Cod_Libro_Lb = '" + Cod_Libro_Lb.Text + "'");
            grdLibro.DataBind();

            obj.cerrarConexion();
        }


        public void modificar(ref TextBox mod,ref TextBox cod,bool inter=false)
        {
            if (mod.Text != "")
            {    
                string codigo = mod.Text;
                string campo = cod.ID;
                string valor = cod.Text;
                string tabla = "Libros";
                obj.modificarCampo(codigo, campo, valor, tabla,inter);
            }
        }







    }

}