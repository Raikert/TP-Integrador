using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class InicioSesion1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            string cuenta;
            string pass;

            cuenta = txtEmail.Text;
            pass = txtContraseña.Text;

            if(cuenta == "admin@admin.com" && pass == "admin")
            {
                Response.Redirect("PanelDelAdministrador.aspx");
            }
            else 
            {
                Session["Usuario"] = "Bienvenido/a X";
                Response.Redirect("Home.aspx");
            }
        }

        protected void lbRestablecerContraseña_Click(object sender, EventArgs e)
        {
            Response.Redirect("RestablecerContraseña.aspx");
        }
    }
}