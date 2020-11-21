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

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            cli = new Cliente();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if (ValidacionesEspeciales())
            {
                prepararUsuario();

                cli.setConsultaInsertUsuario();

                obj.Consulta(cli.getConsulta(2));

                Session["Usuario"] = cli;
                Response.Redirect("Home.aspx");
            }
        }

        public bool ValidacionesEspeciales()
        {
            bool validador = true;

            if (txtNombre.Text.Length > 25)
            {
                lblErrorNombre.Text = "Ingreso un nombre de mas de 25 caracteres";
                validador = false;
            }


            if (txtApellido.Text.Length > 25)
            {
                lblErrorApellido.Text = "Ingreso un apellido de mas de 25 caracteres";
                validador = false;
            }


            if (DNI_Cl.Text.Length > 8)
            {
                lblErrorDNI.Text = "Ingreso un DNI de mas de 8 caracteres";
                validador = false;
            }


            if (NumeroTelefono_Cl.Text.Length > 10)
            {
                lblErrorTelefono.Text = "Ingreso un telefono de mas de 10 caracteres";
                validador = false;
            }


            if (txtContraseña.Text.Length > 50)
            {
                lblErrorContraseña.Text = "Ingreso una contraseña de mas de 50 caracteres";
                validador = false;
            }


            return validador;
        }

        public void prepararUsuario()
        {
            cli.nombreCliente = txtNombre.Text;
            cli.apellidoCliente = txtApellido.Text;
            cli.dniCliente = DNI_Cl.Text;
            cli.telCliente = NumeroTelefono_Cl.Text;
            cli.fechaCliente = FechaNacimiento_Cl.Text;
            cli.EmailCliente = ((Cliente)Session["Usuario"]).EmailCliente;
            cli.ContrasenaCliente = txtContraseña.Text;
        }
    }
}