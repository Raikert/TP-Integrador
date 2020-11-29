using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;
using Entidades.Clases;

namespace Vistas.Forms_Admin
{
    public partial class ReportesYEstadisticas : System.Web.UI.Page
    {
        private Utilidades util;

        private Libro lib;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            lib = new Libro();

            int valor_elegido = Convert.ToInt32(ddlReportesYEstadisticas.SelectedValue);

            util.cambiarConsultaDataSource(ref SqlDataSource1, lib.getConsulta(valor_elegido));

            grdReportesYEstadisticas.DataSource = SqlDataSource1;
            grdReportesYEstadisticas.DataBind();
        }

    }
}