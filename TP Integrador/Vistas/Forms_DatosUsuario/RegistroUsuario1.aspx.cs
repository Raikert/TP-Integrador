using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;
using Vistas.Clases;
using Entidades.Clases;

namespace Vistas
{
    public partial class RegistroUsuario1 : System.Web.UI.Page
    {
        private Utilidades util;

        private Cliente cli;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            cli = new Cliente();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            string campo = "Email_Cl";

            string tabla = "Clientes";

            if (!util.buscarIgualdad(txtEmail.Text,campo,tabla))
            {
                cli.EmailCliente = txtEmail.Text;
                Session["Usuario"] = cli;
                Response.Redirect("RegistroUsuario2.aspx");
            }
            else
                lblEmailRepetido.Text = "El email ingresado ya se encuentra asociado a otra cuenta";
        }

        protected void lbVolver_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}