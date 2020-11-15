using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class Home : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        Libro lib;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
                Session["Usuario"] = "No esta logueado";

            else if ((string) Session["Usuario"] != "No esta logueado")
            {
                UsuarioConectado.Text = (string)Session["Usuario"];
                lbSalir.Text = "Salir";
            }

            obj = new NegocioGenerales();

            lib = new Libro();
        }

        protected void lbSalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = "No esta logueado";
            UsuarioConectado.Text = (string) Session["Usuario"];
            lbSalir.Text = "";
        }

        protected void ImagenLibro_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "SeleccionarLibro")
            {
                DataTable tabla = obj.DataTable_Query("SELECT[Cod_Libro_Lb], [NombreLibro_Lb], [Categoria_Lb], [Editorial_Lb], [Precio_Lb], [ImagenURL_Lb] FROM[Libros]" +
                    " WHERE [Cod_Libro_Lb] = '" + e.CommandArgument.ToString() + "'");

                DataRow registro = tabla.Rows[0];

                //DataColumn campo = new DataColumn("Cod_Cliente_Cl", Type.GetType("System.String"));

                //tabla.Columns.Add(campo);

                lib.codLibro = registro["Cod_Libro_Lb"].ToString();
                lib.nombreLibro = registro["NombreLibro_Lb"].ToString();
                lib.catLibro = registro["Categoria_Lb"].ToString();
                lib.editLibro = registro["Editorial_Lb"].ToString();
                lib.precioLibro = registro["Precio_Lb"].ToString();
                lib.ImagenURL = registro["ImagenURL_Lb"].ToString();

                Session["Libro"] = lib;

                Session["Libro_Tabla"] = tabla;

                Response.Redirect("LibroSeleccionado.aspx");
            }
        }
    }
}