using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using System.Data;
using Vistas.Clases;

namespace vistas
{
    public partial class vista1 : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            if (Session["Libro_Tabla"] != null)
            {
                DataTable tabla = (DataTable)Session["Libro_Tabla"];

                DataRow registro = tabla.Rows[0];

                NombreLibro_Lb.Text = registro["NombreLibro_Lb"].ToString();
                Categoria_Lb.Text = registro["Categoria_Lb"].ToString();
                Editorial_Lb.Text = registro["Editorial_Lb"].ToString();
                ImagenURL_Lb.ImageUrl = registro["ImagenURL_Lb"].ToString();
                Precio_Lb.Text = registro["Precio_Lb"].ToString();
            }

            if(Session["Carrito"] != null)
                util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
        }

        protected void lbMiCuenta_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
                Response.Redirect("~/Forms_DatosUsuario/IngresoMiCuenta.aspx");
            else
            {
                Session["ruta_de_regreso"] = "~/Forms_VistaCliente/Forms_DeCompra/LibroSeleccionado.aspx";

                Response.Redirect("~/Forms_DatosUsuario/SeccionLogueo.aspx");
            }
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (Session["Libro_Tabla"] != null)
            {
                if (Session["Carrito"] == null)
                {
                    Session["Carrito"] = (DataTable)Session["Libro_Tabla"];

                    util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
                }
                else
                {
                    DataTable tabla_carro = (DataTable)Session["Carrito"];

                    DataTable registro = (DataTable)Session["Libro_Tabla"];

                    DataRow fila_nueva = tabla_carro.NewRow();

                    bool repeticion = false;

                    foreach (DataRow fila in tabla_carro.Rows)
                    {
                        if (fila["Cod_Libro_Lb"].ToString() == registro.Rows[0]["Cod_Libro_Lb"].ToString())
                            repeticion = true;
                    }

                    if (!repeticion)
                    {
                        int cantidad_libros = tabla_carro.Rows.Count;

                        int id_carrito = Convert.ToInt32(tabla_carro.Rows[cantidad_libros-1]["id_carrito"]);

                        fila_nueva["id_carrito"] = Convert.ToString(id_carrito + 1);
                        fila_nueva["ImagenURL_Lb"] = registro.Rows[0]["ImagenURL_Lb"];
                        fila_nueva["Cod_Libro_Lb"] = registro.Rows[0]["Cod_Libro_Lb"];
                        fila_nueva["NombreLibro_Lb"] = registro.Rows[0]["NombreLibro_Lb"];
                        fila_nueva["Editorial_Lb"] = registro.Rows[0]["Editorial_Lb"];
                        fila_nueva["Precio_Lb"] = registro.Rows[0]["Precio_Lb"];

                        tabla_carro.Rows.Add(fila_nueva);

                        Session["Carrito"] = tabla_carro;

                        util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
                    }
                }
            }
        }

    }
}