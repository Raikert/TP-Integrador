using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
                Session["Usuario"] = "No esta logueado";

            else if ((string) Session["Usuario"] != "No esta logueado")
            {
                UsuarioConectado.Text = (string)Session["Usuario"];
                lbSalir.Text = "Salir";
            }
        }

        protected void lbSalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = "No esta logueado";
            UsuarioConectado.Text = (string) Session["Usuario"];
            lbSalir.Text = "";
        }
    }
}