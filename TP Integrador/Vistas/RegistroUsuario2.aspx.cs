using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades.Clases;
using Vistas.Clases;

namespace Vistas
{
    public partial class RegistroUsuario2 : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Cliente cli;

        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            cli = new Cliente();

            util = new Utilidades();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if (ValidacionesEspeciales())
            {
                cli.nombreCliente = txtNombre.Text;
                cli.apellidoCliente = txtApellido.Text;
                cli.EmailCliente = (String)Session["Email"];
                cli.ContrasenaCliente = txtContraseña.Text;

                cli.setConsultaInsertUsuario();

                obj.Consulta(cli.getConsulta(2));

                string tabla = "Clientes";
                string campocodigo = "Email_Cl";
                string codigo = cli.EmailCliente;

                util.modificar(campocodigo, codigo, ref DNI_Cl, tabla);
                util.modificar(campocodigo, codigo, ref NumeroTelefono_Cl, tabla);
                util.modificar(campocodigo, codigo, ref FechaNacimiento_Cl, tabla);

                obj.cerrarConexion();

                Session["Usuario"] = "Bienvenido/a " + txtNombre.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblErrorDNI.Text = "hola amigos";
            }

            util.cerrarConexion();
        }

        public bool ValidacionesEspeciales()
        {
            bool validador = true;

            if (txtNombre.Text.Length > 25)
                validador = false;

            if (txtApellido.Text.Length > 25)
                validador = false;

            if (DNI_Cl.Text.Length > 8)
                validador = false;

            if (NumeroTelefono_Cl.Text.Length > 10)
                validador = false;

            if (txtContraseña.Text.Length > 50)
                validador = false;

            return validador;
        }
    }
}