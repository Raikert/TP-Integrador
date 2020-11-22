using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;

namespace Vistas
{
    public partial class RestablecerContraseña : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            string tabla = "Clientes";
            string campocodigo = "Email_Cl";
            string codigo = (string) Session["Email"];

            util.modificar(campocodigo, codigo, ref Contraseña_Cl, tabla);

            util.cerrarConexion();

            Session["Email"] = null;

            Response.Redirect("InicioSesion1.aspx");
        }
    }
}