using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using System.Data;

namespace vistas
{
    public partial class vista1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Libro"] != null)
            {
                Libro lib = new Libro();

                lib = (Libro)Session["Libro"];

                NombreLibro_Lb.Text = lib.nombreLibro;
                Categoria_Lb.Text = lib.catLibro;
                Editorial_Lb.Text = lib.editLibro;
                ImagenURL_Lb.ImageUrl = lib.ImagenURL;
                Precio_Lb.Text = lib.precioLibro;
            }
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (Session["Libro_Tabla"] != null)
            {
                if (Session["Carrito"] == null)
                {
                    Session["Carrito"] = (DataTable)Session["Libro_Tabla"];
                }
                else
                {
                    DataTable tabla_carro = (DataTable)Session["Carrito"];

                    DataTable registro = (DataTable)Session["Libro_Tabla"];

                    DataRow fila_nueva = tabla_carro.NewRow();

                    bool repeticion = false;

                    foreach (DataRow fila in tabla_carro.Rows)
                    {
                        if (fila["Cod_Libro_Lb"] == registro.Rows[0]["Cod_Libro_Lb"])
                        {
                            repeticion = true;

                            Label1.Text = "Repetido";
                        }
                    }

                    if (!repeticion)
                    {
                        fila_nueva["ImagenURL_Lb"] = registro.Rows[0]["ImagenURL_Lb"];
                        fila_nueva["Cod_Libro_Lb"] = registro.Rows[0]["Cod_Libro_Lb"];
                        fila_nueva["NombreLibro_Lb"] = registro.Rows[0]["NombreLibro_Lb"];
                        fila_nueva["Editorial_Lb"] = registro.Rows[0]["Editorial_Lb"];
                        fila_nueva["Precio_Lb"] = registro.Rows[0]["Precio_Lb"];

                        tabla_carro.Rows.Add(fila_nueva);

                        Session["Carrito"] = tabla_carro;
                    }
                }
            }
        }
    }
}