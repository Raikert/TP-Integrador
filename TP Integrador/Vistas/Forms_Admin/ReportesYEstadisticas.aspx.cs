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

            string[] consultas = new string[15];

            consultas[0] = "SELECT TOP 5 NombreLibro_Lb as Nombre, Precio_Lb as Precio FROM Libros ORDER BY Precio_Lb asc";

            consultas[1] = "SELECT TOP 5 NombreLibro_Lb as Nombre, Precio_Lb as Precio FROM Libros ORDER BY Precio_Lb desc";

            consultas[2] = "SELECT NombreLibro_Lb as Nombre, Cantidad_S as Cantidad from Stock inner join Libros on Cod_Libro_S = Cod_Libro_Lb where Cantidad_S <= 10";

            consultas[3] = "SELECT NombreLibro_Lb as Nombre, Cantidad_S as Cantidad from Stock inner join Libros on Cod_Libro_S = Cod_Libro_Lb where Cantidad_S > 10";

            consultas[4] = "SELECT Precio_Lb as Precio,NombreLibro_Lb as Nombre FROM LIBROS where precio_lb = (select max(precio_lb) from libros)";

            consultas[5] = "SELECT Precio_Lb as Precio,NombreLibro_Lb as Nombre FROM LIBROS where precio_lb = (select min(precio_lb) from libros)";

            consultas[6] = "SELECT NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros inner join DetalleVentas on Cod_Libro_lb = " +
                "Cod_Libro_Dv group by NombreLibro_Lb";

            consultas[7] = "SELECT TOP 1 NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros inner join DetalleVentas on Cod_Libro_lb = " +
                "Cod_Libro_Dv group by NombreLibro_Lb order by Cantidad desc";

            consultas[8] = "SELECT TOP 1 NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros inner join DetalleVentas on Cod_Libro_lb = " +
                "Cod_Libro_Dv group by NombreLibro_Lb order by Cantidad asc";
            
            consultas[9] = "SELECT TOP 1 Cod_Cliente_Cl as Codigo, Nombre_Cl as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros inner join DetalleVentas on Cod_Libro_lb = " +
                "Cod_Libro_Dv inner join Ventas on Cod_Venta_V = Cod_Venta_Dv inner join Clientes on Cod_Cliente_V = Cod_Cliente_Cl group by  Cod_Cliente_Cl,Nombre_Cl" +
                " order by Cantidad desc";

            consultas[10] = "SELECT TOP 1 Cod_Cliente_Cl as Codigo, Nombre_Cl as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros inner join DetalleVentas on Cod_Libro_lb = " +
                "Cod_Libro_Dv inner join Ventas on Cod_Venta_V = Cod_Venta_Dv inner join Clientes on Cod_Cliente_V = Cod_Cliente_Cl group by  Cod_Cliente_Cl,Nombre_Cl" +
                " order by Cantidad asc";

            consultas[11] = "SELECT (SUM(CantidadDeLibros_Dv) / (SELECT count(Cod_Cliente_Cl) from Clientes)) as [Promedio Total] from DetalleVentas";	



            util.cambiarConsultaDataSource(ref SqlDataSource1, consultas, ddlReportesYEstadisticas.SelectedValue);

            grdReportesYEstadisticas.DataSource = SqlDataSource1;
            grdReportesYEstadisticas.DataBind();
        }

    }
}