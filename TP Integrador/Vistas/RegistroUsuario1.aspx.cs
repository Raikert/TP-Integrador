using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;
using Vistas.Clases;

namespace Vistas
{
    public partial class RegistroUsuario1 : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            string campo = "Email_Cl";

            string tabla = "Clientes";

            if (!util.buscarIgualdad(txtEmail.Text,campo,tabla))
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("RegistroUsuario2.aspx");
            }
            else
                lblEmailRepetido.Text = "El email ingresado ya se encuentra asociado a otra cuenta";
        }
    }
}