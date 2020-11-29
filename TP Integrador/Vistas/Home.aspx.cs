using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using Negocio;
using System.Data;
using Vistas.Clases;

namespace Vistas
{
    public partial class Home : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Libro lib;

        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            lib = new Libro();

            util = new Utilidades();

            util.Bindear(ref lvLibrosMasVendidos, "select Cod_Libro_Lb, ImagenURL_Lb from Libros");

            util.cerrarConexion();

            MensajeListado.Text = "Libros disponibles";

            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    UsuarioConectado.Text = "Hola " + ((Cliente)Session["Usuario"]).nombreCliente;

                    lbSalir.Visible = true;
                    hlInicioSesion.Visible = false;
                    hlRegistrarse.Visible = false;
                    hlMiCuenta.Visible = true;
                }

                if (Session["Carrito"] != null)
                {
                    util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
                }

                if (Session["Compra_realizada"] != null)
                {
                    UsuarioConectado.Text = "Gracias " + ((Cliente)Session["Usuario"]).nombreCliente + ", disfruta de tu compra";
                    Session["Compra_realizada"] = null;
                }
            }
        }

        protected void lbSalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;

            UsuarioConectado.Text = "No esta logueado";

            lbSalir.Visible = false;
            hlMiCuenta.Visible = false;
            hlInicioSesion.Visible = true;
            hlRegistrarse.Visible = true;
        }

        protected void ImagenLibro_Command(object sender, CommandEventArgs e)
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
                return;

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

            util.cambiarConsultaDataSource(ref ListaLibros, consulta);

            DataTable tabla2 = new DataTable();

            if(ListaLibros.Select(DataSourceSelectArguments.Empty) != null)
            {
                DataView dv = (DataView)ListaLibros.Select(DataSourceSelectArguments.Empty);

                tabla2 = dv.Table;
            }
            
            if(tabla2.Rows.Count != 0)
            {
                lvLibrosMasVendidos.DataSource = ListaLibros;
                lvLibrosMasVendidos.DataBind();

                MensajeListado.Text = "Se encontraron " + tabla2.Rows.Count + " resultados para '" + txtBuscar.Text + "'";
            }
            else
            {
                consulta = "select * from Libros";

                util.cambiarConsultaDataSource(ref ListaLibros, consulta);

                lvLibrosMasVendidos.DataSource = ListaLibros;

                lvLibrosMasVendidos.DataBind();

                MensajeListado.Text = "No se han encontrado libros para '" + txtBuscar.Text + "'";
            }
        }

        protected void lbTopVentas_Click(object sender, EventArgs e)
        {
            util.cambiarConsultaDataSource(ref ListaLibros, lib.getConsulta(16));

            lvLibrosMasVendidos.DataSource = ListaLibros;
            lvLibrosMasVendidos.DataBind();

            MensajeListado.Text = "Mas buscados";
        }

        protected void lbMejoresOfertas_Click(object sender, EventArgs e)
        {
            util.cambiarConsultaDataSource(ref ListaLibros, lib.getConsulta(15));

            lvLibrosMasVendidos.DataSource = ListaLibros;
            lvLibrosMasVendidos.DataBind();

            MensajeListado.Text = "Mas baratos";
        }

        protected void lbMasVentasHoy_Click(object sender, EventArgs e)
        {
            util.cambiarConsultaDataSource(ref ListaLibros, lib.getConsulta(17));

            lvLibrosMasVendidos.DataSource = ListaLibros;
            lvLibrosMasVendidos.DataBind();

            MensajeListado.Text = "Mas vendidos hoy";
        }

        protected void lbBuscaPrecio_Click(object sender, EventArgs e)
        {
            bool precioMinimo_valido = util.validaciones_precio(ref txtPrecioMinimo, "minimo", ref lblErrorPrecios);

            bool precioMaximo_valido = util.validaciones_precio(ref txtPrecioMaximo, "maximo", ref lblErrorPrecios);

            string precioMinimo = "0";

            string precioMaximo = "0";

            if (precioMinimo_valido)
                precioMinimo = txtPrecioMinimo.Text;

            if (precioMaximo_valido)
                precioMaximo = txtPrecioMaximo.Text;

            string consulta = "select Cod_Libro_Lb, ImagenURL_Lb from Libros where ";

            if (!precioMinimo_valido && precioMaximo_valido)
            {
                util.Bindear(ref lvLibrosMasVendidos, consulta + "Precio_Lb <= " + precioMaximo);

                MensajeListado.Text = "Por menos de $" + precioMaximo;
            }

            if (precioMinimo_valido && !precioMaximo_valido)
            {
                util.Bindear(ref lvLibrosMasVendidos, consulta + "Precio_Lb >= " + precioMinimo);

                MensajeListado.Text = "Por mas de $" + precioMinimo;
            }

            if (precioMinimo_valido && precioMaximo_valido)
            {
                util.Bindear(ref lvLibrosMasVendidos, consulta + "Precio_Lb >= " + precioMinimo + " and " + " Precio_Lb <= " + precioMaximo);

                MensajeListado.Text = "Por mas de $" + precioMinimo + " y menos de $" + precioMaximo;
            }

            if (!precioMinimo_valido && !precioMaximo_valido)
                MensajeListado.Text = "Por mas de $" + precioMinimo;

            util.cerrarConexion();
        }

        protected void dlCategorias_ItemCommand(object source, DataListCommandEventArgs e)
        {
            FiltrosDataList(ref e, "Categoria_Lb", "LinkButton1", "categoria");
        }

        protected void dlEditoriales_ItemCommand(object source, DataListCommandEventArgs e)
        {
            FiltrosDataList(ref e, "Editorial_Lb", "LinkButton2", "editorial");
        }

        public void FiltrosDataList(ref DataListCommandEventArgs e, string campo, string nombre_control, string mensaje_campo)
        {
            string valor_campo = ((LinkButton)e.Item.FindControl(nombre_control)).Text;

            int filas_afectadas = util.Bindear(ref lvLibrosMasVendidos, "select Cod_Libro_Lb, ImagenURL_Lb from Libros where " + campo +
                " = '" + valor_campo + "'");

            util.cerrarConexion();

            if (filas_afectadas != 0)
                MensajeListado.Text = "Por " + mensaje_campo + ": " + valor_campo;
            else
                MensajeListado.Text = "Sin stock para " + mensaje_campo + ": " + valor_campo;
        }

    }
}