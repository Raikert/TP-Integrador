using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using Vistas.Clases;
using Negocio;

namespace Vistas
{
    public partial class MiCuenta : System.Web.UI.Page
    {
        private Utilidades util;

        private Cliente cli;

        private NegocioGenerales ng;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            cli = (Cliente)Session["Usuario"];

            ng = new NegocioGenerales();

            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblNombre_Micuenta.Text = cli.nombreCliente;

                lblApellido_Micuenta.Text = cli.apellidoCliente;

                lbldniMicuenta.Text = cli.dniCliente;

                EmailcorreoMicuenta.Text = cli.EmailCliente;

                string[] cadenas = cli.fechaCliente.Split('-');

                FechadenacimientoMicuenta.Text = cadenas[2] + "/" + cadenas[1] + "/" + cadenas[0];

                Contraseña.Text = cli.ContrasenaCliente;

                Telefono.Text = cli.telCliente;
            }
        }

        protected void btnModificarDatos_Click(object sender, EventArgs e)
        {
            estadoModificando();

            btnGuardarDatos.Visible = true;

            btnModificarDatos.Visible = false;
        }

        public void estadoModificando()
        {
            estadoModificando(ref lblNombre_Micuenta, ref Nombre_Cl);

            estadoModificando(ref lblApellido_Micuenta, ref Apellido_Cl);

            estadoModificando(ref lbldniMicuenta, ref DNI_Cl);

            estadoModificando(ref FechadenacimientoMicuenta, ref FechaNacimiento_Cl,cli.fechaCliente);

            estadoModificando(ref Contraseña, ref Contraseña_Cl);

            estadoModificando(ref Telefono, ref NumeroTelefono_Cl);
        }

        public void estadoModificando(ref Label lblCampo, ref TextBox txt, string otroTexto = "")
        {
            lblCampo.Visible = false;
            txt.Visible = true;

            if (otroTexto == "")
                txt.Text = lblCampo.Text;
            else
                txt.Text = otroTexto;
        }

        protected void btnGuardarDatos_Click(object sender, EventArgs e)
        {
            if(Validaciones())
            {
                cargarDatos();

                cli.setConsultaModificarUsuario();

                ng.Consulta(cli.getConsulta(3));

                estadoGuardando();

                btnModificarDatos.Visible = true;

                btnGuardarDatos.Visible = false;
            }
        }

        public bool Validaciones()
        {
            bool validador = true;

            if (!(DNI_Cl.Text.Length == 8))
            {
                lblErrorDNI.Text = "Ingreso un DNI erroneo (Debe contener 8 números)";
                validador = false;
            }
            else
                lblErrorDNI.Text = "";

            if (!(NumeroTelefono_Cl.Text.Length == 10))
            {
                lblErrorTelefono.Text = "Ingreso un telefono erroneo (Debe contener 10 números)";
                validador = false;
            }
            else
                lblErrorTelefono.Text = "";

            return validador;
        }

        public void cargarDatos()
        {
            cli.nombreCliente = Nombre_Cl.Text;
            lblNombre_Micuenta.Text = cli.nombreCliente;

            cli.apellidoCliente = Apellido_Cl.Text;
            lblApellido_Micuenta.Text = cli.apellidoCliente;

            cli.dniCliente = DNI_Cl.Text;
            lbldniMicuenta.Text = cli.dniCliente;

            cli.fechaCliente = FechaNacimiento_Cl.Text;

            string[] cadenas = cli.fechaCliente.Split('-');

            FechadenacimientoMicuenta.Text = cadenas[2] + "/" + cadenas[1] + "/" + cadenas[0];

            cli.ContrasenaCliente = Contraseña_Cl.Text;
            Contraseña.Text = cli.ContrasenaCliente;

            cli.telCliente = NumeroTelefono_Cl.Text;
            Telefono.Text = cli.telCliente;
        }

        public void estadoGuardando()
        {
            estadoGuardando(ref lblNombre_Micuenta, ref Nombre_Cl);

            estadoGuardando(ref lblApellido_Micuenta, ref Apellido_Cl);

            estadoGuardando(ref lbldniMicuenta, ref DNI_Cl);

            estadoGuardando(ref FechadenacimientoMicuenta, ref FechaNacimiento_Cl);

            estadoGuardando(ref Contraseña, ref Contraseña_Cl);

            estadoGuardando(ref Telefono, ref NumeroTelefono_Cl);
        }

        public void estadoGuardando(ref Label lblCampo, ref TextBox txt)
        {
            txt.Visible = false;
            lblCampo.Visible = true;
        }

        protected void btnModificarEmail_Click(object sender, EventArgs e)
        {
            estadoModificando(ref EmailcorreoMicuenta, ref Email_Cl);

            btnGuardarEmail.Visible = true;

            btnModificarEmail.Visible = false;
        }

        protected void btnGuardarEmail_Click(object sender, EventArgs e)
        {
            if (util.buscarIgualdad(ref Email_Cl, "Clientes"))
            {
                lblErrorEmail.Text = "El email ingresado ya se encuentra asociado a otra cuenta";
                return;
            }
            else
                lblErrorEmail.Text = "";

            cli.EmailCliente = Email_Cl.Text;
            EmailcorreoMicuenta.Text = cli.EmailCliente;

            cli.setConsultaModificarUsuario();

            ng.Consulta(cli.getConsulta(3));

            estadoGuardando(ref EmailcorreoMicuenta, ref Email_Cl);

            btnModificarEmail.Visible = true;

            btnGuardarEmail.Visible = false;
        }

    }
}