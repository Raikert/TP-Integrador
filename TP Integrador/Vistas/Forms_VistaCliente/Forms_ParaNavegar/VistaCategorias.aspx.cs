using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;

namespace vistas
{
    public partial class VistaCategorias : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            if (!IsPostBack)
            {
                if (Session["Carrito"] != null)
                {
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
                Session["ruta_de_regreso"] = "~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx";

                Response.Redirect("~/Forms_DatosUsuario/SeccionLogueo.aspx");         
            }
        }

    }
}