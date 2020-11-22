using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;


namespace Vistas.Forms_DatosUsuario
{
    public partial class IngresoMiCuenta : System.Web.UI.Page
    {
        Cliente cli;

        protected void Page_Load(object sender, EventArgs e)
        {
            cli = new Cliente();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            cli = (Cliente)Session["Usuario"];

            if (validaciones(ref cli))
                Response.Redirect("~/Forms_DatosUsuario/MiCuenta.aspx");
        }

        public bool validaciones(ref Cliente cli)
        {
            bool validador = true;

            if(txtContraseña.Text == "")
            {
                lblErrorContraseña.Text = "Campo obligatorio";
                validador = false;
                return validador;
            }

            if(txtContraseña.Text != cli.ContrasenaCliente)
            {
                lblErrorContraseña.Text = "La contraseña ingresada no coincide con la de su cuenta";
                validador = false;
                return validador;
            }

            return validador;
        }
    }
}