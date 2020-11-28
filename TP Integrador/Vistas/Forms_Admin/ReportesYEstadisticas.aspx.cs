using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;

namespace Vistas.Forms_Admin
{
    public partial class ReportesYEstadisticas : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            string[] consultas = new string[5];

            consultas[0] = "select NombreLibro_Lb from Libros";

            consultas[1] = "select NombreLibro_Lb, Precio_Lb from Libros";

            util.cambiarConsultaDataSource(ref SqlDataSource1, consultas, ddlReportesYEstadisticas.SelectedValue);

            grdReportesYEstadisticas.DataSource = SqlDataSource1;
            grdReportesYEstadisticas.DataBind();
        }

    }
}