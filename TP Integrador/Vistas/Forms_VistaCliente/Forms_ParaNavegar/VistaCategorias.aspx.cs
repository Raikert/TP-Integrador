using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistas
{
    public partial class VistaCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbMiCuenta_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
                Response.Redirect("~/Forms_DatosUsuario/IngresoMiCuenta.aspx");
            else
            {
                Response.Redirect("~/Forms_DatosUsuario/SeccionLogueo.aspx");

                Session["ruta_de_regreso"] = "~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx";
            }
        }

    }
}