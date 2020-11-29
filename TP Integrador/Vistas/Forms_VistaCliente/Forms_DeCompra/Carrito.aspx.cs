using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Vistas.Clases;

namespace vistas
{
    public partial class vista2_carrito_ : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            if (!IsPostBack)
            {
                if (Session["Carrito"] != null)
                {
                    DataList1.DataSource = (DataTable)Session["Carrito"];
                    DataList1.DataBind();

                    util.cargarDatosCarro(ref CantidadProductosCarrito, ref MontoCarrito, Session);
                }
            }
        }

        protected void lbMiCuenta_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
                Response.Redirect("~/Forms_DatosUsuario/IngresoMiCuenta.aspx");
            else
            {
                Response.Redirect("~/Forms_DatosUsuario/SeccionLogueo.aspx");

                Session["ruta_de_regreso"] = "~/Forms_VistaCliente/Forms_DeCompra/Carrito.aspx";
            }
        }

        protected void btnIniciarCompra1_Click(object sender, EventArgs e)
        {
            if (Session["Carrito"] != null && Session["Usuario"]!= null)
            {
                DataTable tabla_carro = (DataTable)Session["Carrito"];

                int registro = 0;

                foreach(DataListItem item in DataList1.Items)
                {
                    tabla_carro.Rows[registro]["cantidad_items"] = ((DropDownList)item.FindControl("ddlCantidad")).Text;

                    registro++;
                }

                Response.Redirect("ProcesoCompraCarro.aspx");
            }
            else
            {
                if (Session["Carrito"] == null)
                {
                    lblErrorCompra.Text = "El carrito no esta cargado";
                }
           
                if (Session["Usuario"] == null)
                {
                    lblErrorCompra.Text = "No ha iniciado session";
                }
                         
            }
        }

        protected void btnIniciarCompra0_Click(object sender, EventArgs e)
        {
            if (Session["Carrito"] != null && Session["Usuario"] != null)
            {
                DataTable tabla_carro = (DataTable)Session["Carrito"];

                int registro = 0;

                foreach (DataListItem item in DataList1.Items)
                {
                    tabla_carro.Rows[registro]["cantidad_items"] = ((DropDownList)item.FindControl("ddlCantidad")).Text;

                    registro++;
                }

                Response.Redirect("ProcesoCompraCarro.aspx");
            }
        }

        protected void lbEliminar_Command(object sender, CommandEventArgs e)
        {           
            if(e.CommandName == "EliminarLibro")
            {
                DataTable tabla_carro = (DataTable)Session["Carrito"];

                DataRow libro_eliminado = tabla_carro.Rows[Convert.ToInt32(e.CommandArgument)];

                tabla_carro.Rows.Remove(libro_eliminado);

                if (tabla_carro.Rows.Count != 0)
                {
                    int id_carrito = 0;

                    foreach (DataRow registro in tabla_carro.Rows)
                    {
                        registro["id_carrito"] = Convert.ToString(id_carrito);

                        id_carrito++;

                        tabla_carro.AcceptChanges();
                    }

                    Session["Carrito"] = tabla_carro;
                }
                else
                    Session["Carrito"] = null;

                DataList1.DataSource = tabla_carro;
                DataList1.DataBind();
            }
        }
    }
}