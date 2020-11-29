using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades.Clases;
using Vistas.Clases;

namespace vistas
{
    public partial class vistaLibros : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Libro lib;

        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            lib = new Libro();

            util = new Utilidades();

            PagedDataSource pg = devuelvePaginador();

            ListaLibros.DataSource = pg;
            ListaLibros.DataBind();

            if (Session["Carrito"] != null)
            {
                util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
            }
        }

        protected void MostrarTodos_Click(object sender, EventArgs e)
        {
            Anterior.Visible = true;
            Siguiente.Visible = true;
            MensajeListado.Text = "";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
            {
                MensajeListado.Text = "";
                Anterior.Visible = true;
                Siguiente.Visible = true;
                return;
            }

            Anterior.Visible = false;
            Siguiente.Visible = false;

            string consulta = "";

            switch (ddlFiltro.SelectedValue)
            {
                case "1-2-3":

                    int max_reg = 0;

                    string formato_where = "";

                    for (int i = 0; i < 3; i++)
                    {
                        switch (i)
                        {
                            case 0:
                                formato_where = "NombreLibro_Lb like '%" + txtBuscar.Text + "%'";
                                lib.setMostrar_Where(formato_where);
                                break;
                            case 1:
                                formato_where = "Categoria_Lb like '%" + txtBuscar.Text + "%'";
                                lib.setMostrar_Where(formato_where);
                                break;
                            case 2:
                                formato_where = "Editorial_Lb like '%" + txtBuscar.Text + "%'";
                                lib.setMostrar_Where(formato_where);
                                break;
                        }

                        DataTable tabla = obj.DataTable_Query(lib.getConsulta(1));

                        if (max_reg == 0 && tabla.Rows.Count != 0)
                        {
                            consulta = "select * from Libros where " + formato_where;
                            max_reg = tabla.Rows.Count;
                        }

                        if (tabla.Rows.Count < max_reg && tabla.Rows.Count != 0)
                        {
                            consulta = "select * from Libros where " + formato_where;
                            max_reg = tabla.Rows.Count;
                        }
                    }

                    break;

                case "1":

                    consulta = "select * from Libros where NombreLibro_Lb like '%" + txtBuscar.Text + "%'";
                    break;

                case "2":

                    consulta = "select * from Libros where Categoria_Lb like '%" + txtBuscar.Text + "%'";
                    break;

                case "3":

                    consulta = "select * from Libros where Editorial_Lb like '%" + txtBuscar.Text + "%'";
                    break;
            }

            util.cambiarConsultaDataSource(ref dsLibrosL, consulta);

            DataTable tabla2 = new DataTable();

            PagedDataSource pg = new PagedDataSource();

            if (dsLibrosL.Select(DataSourceSelectArguments.Empty) != null)
            {
                DataView dv = (DataView)dsLibrosL.Select(DataSourceSelectArguments.Empty);

                tabla2 = dv.Table;
            }

            if (tabla2.Rows.Count != 0)
            {
                pg = devuelvePaginador();

                ListaLibros.DataSource = pg;
                ListaLibros.DataBind();

                MensajeListado.Text = "Se encontraron " + tabla2.Rows.Count + " resultados para '" + txtBuscar.Text + "'";
            }
            else
            {
                consulta = "select * from Libros";

                util.cambiarConsultaDataSource(ref dsLibrosL, consulta);

                pg = devuelvePaginador();

                ListaLibros.DataSource = pg;
                ListaLibros.DataBind();

                MensajeListado.Text = "No se han encontrado libros para '" + txtBuscar.Text + "'";
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

        protected void lbMiCuenta_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
                Response.Redirect("~/Forms_DatosUsuario/IngresoMiCuenta.aspx");
            else
            {
                Session["ruta_de_regreso"] = "~/Forms_VistaCliente/Forms_ParaNavegar/vistaLibros.aspx";

                Response.Redirect("~/Forms_DatosUsuario/SeccionLogueo.aspx");             
            }
        }

    }
}