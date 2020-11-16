using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace vistas
{
    public partial class vista2_carrito_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = (DataTable)Session["Carrito"];
                DataList1.DataBind();
            }
        }

        protected void btnIniciarCompra1_Click(object sender, EventArgs e)
        {
            if (Session["ProcesoCarrito"] == null)
            {
                Session["ProcesoCarrito"] = (DataTable)Session["Carrito"];

                Response.Redirect("ProcesoCompraCarro.aspx");
            }
        }

        protected void btnIniciarCompra0_Click(object sender, EventArgs e)
        {
            if (Session["ProcesoCarrito"] == null)
            {
                Session["ProcesoCarrito"] = (DataTable)Session["Carrito"];

                Response.Redirect("ProcesoCompraCarro.aspx");
            }
        }
    }
}