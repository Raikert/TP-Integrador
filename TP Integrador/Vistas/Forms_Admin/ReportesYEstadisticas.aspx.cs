using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Forms_Admin
{
    public partial class ReportesYEstadisticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string consulta = "";

            switch(ddlReportesYEstadisticas.SelectedValue)
            {
                case "0":
                    consulta = "select NombreLibro_Lb from Libros";
                    break;
                case "1":
                    consulta = "select NombreLibro_Lb, Precio_Lb  from Libros";
                    break;
            }

            SqlDataSource1.SelectCommand = consulta;

            grdReportesYEstadisticas.DataSource = SqlDataSource1;
            grdReportesYEstadisticas.DataBind();
        }

    }
}