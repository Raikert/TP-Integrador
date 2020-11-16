using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades.Clases;

namespace Vistas
{
    public partial class RegistroUsuario2 : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Cliente cli;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            cli = new Cliente();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            cli.nombreCliente = txtNombre.Text;
            cli.apellidoCliente = txtApellido.Text;
            cli.EmailCliente = (String)Session["Email"];
            cli.ContrasenaCliente = txtContraseña.Text;

            cli.setConsultaInsertUsuario();

            obj.Consulta(cli.getConsulta(2));

            obj.cerrarConexion();

            Session["Usuario"] = "Bienvenido/a " + txtNombre.Text;
            Response.Redirect("Home.aspx");
        }
    }
}