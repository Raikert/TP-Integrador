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

            if (Session["Usuario"] != null)
            {
                UsuarioConectado.Text = "Bienvenido/a " + ((Cliente)Session["Usuario"]).nombreCliente;
                lbSalir.Visible = true;

                hlInicioSesion.Visible = false;
                hlRegistrarse.Visible = false;
                hlMiCuenta.Visible = true;
            }

            if (Session["Carrito"] != null)
            {
                DataTable tabla_carro = (DataTable)Session["Carrito"];

                CantidadProductosCarrito.Text = tabla_carro.Rows.Count.ToString();

                Decimal precio_libro = new Decimal();

                foreach (DataRow registro in tabla_carro.Rows)
                {
                    precio_libro += Convert.ToDecimal(registro["Precio_Lb"]);
                }

                MontoCarrito.Text = Convert.ToString(precio_libro);
            }
        }

        protected void lbSalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            UsuarioConectado.Text = "No esta logueado";

            lbSalir.Visible = false;
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

        }

        protected void lbTopVentas_Click(object sender, EventArgs e)
        {
            util.Bindear(ref lvLibrosMasVendidos, "select Cod_Libro_Lb, ImagenURL_Lb from Libros");

            util.cerrarConexion();

            MensajeListado.Text = "Mas vendidos";
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

            if(precioMinimo_valido && precioMaximo_valido)
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