using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;


namespace vistas
{
    public partial class vistaLibros : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            if (!IsPostBack)
            {
                PagedDataSource pg = devuelvePaginador();

                ListaLibros.DataSource = pg;
                ListaLibros.DataBind();

                string[] data = new string[2];

                data[0] = (pg.PageCount).ToString();

                Session["VistaLibros"] = data;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PagedDataSource pg = devuelvePaginador();

            if (pg.CurrentPageIndex != 0)
                pg.CurrentPageIndex = pg.CurrentPageIndex - 1;

            ListaLibros.DataSource = pg;
            ListaLibros.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PagedDataSource pg = devuelvePaginador();

            if (pg.CurrentPageIndex <= pg.PageCount)
                pg.CurrentPageIndex = pg.CurrentPageIndex + 1;

            ListaLibros.DataSource = pg;
            ListaLibros.DataBind();
        }

        public PagedDataSource devuelvePaginador()
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();

            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = dsLibrosL.Select(args);
            pg.AllowPaging = true;
            pg.PageSize = 5;

            return pg;
        }

        protected void ImageButton2_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "SeleccionarLibro")
            {
                DataTable tabla = obj.DataTable_Query("SELECT [Cod_Libro_Lb], [NombreLibro_Lb], [Categoria_Lb], [Editorial_Lb], [Precio_Lb]" +
                    ", [ImagenURL_Lb] FROM [Libros] WHERE [Cod_Libro_Lb] = '" + e.CommandArgument.ToString() + "'");

                DataColumn campo = new DataColumn("id_carrito", Type.GetType("System.String"));

                tabla.Columns.Add(campo);

                tabla.Rows[0]["id_carrito"] = "0";

                campo = new DataColumn("cantidad_items", Type.GetType("System.String"));

                tabla.Columns.Add(campo);

                Session["Libro_Tabla"] = tabla;

                Response.Redirect("~/Forms_VistaCliente/Forms_DeCompra/LibroSeleccionado.aspx");
            }
        }
    }
}