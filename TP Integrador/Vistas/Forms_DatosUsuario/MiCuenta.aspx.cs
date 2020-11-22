using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades.Clases;
using Vistas.Clases;

namespace Vistas
{
    public partial class MiCuenta : System.Web.UI.Page
    {
        private Utilidades util;

        private Cliente cli;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();

            if (Session["Usuario"] != null)
            {
                cli = (Cliente) Session["Usuario"];

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

        protected void hlCambiar_Click(object sender, EventArgs e)
        {
            cli.nombreCliente = modificarDato(ref Nombre_Cl,ref lblNombre_Micuenta);
        }

        protected void hlCambiarApellido_Click(object sender, EventArgs e)
        {
            cli.apellidoCliente = modificarDato(ref Apellido_Cl, ref lblApellido_Micuenta);
        }

        protected void hlCambiarDNI_Click(object sender, EventArgs e)
        {
            if (DNI_Cl.Text.Length <= 8)
            {
                cli.dniCliente = modificarDato(ref DNI_Cl, ref lbldniMicuenta, ref revDNI);

                lblErrorDNI.Text = "";
            }
            else
            {
                revDNI.Visible = false;

                lblErrorDNI.Text = "Ingreso un DNI de mas de 8 caracteres";
            }
        }

        protected void hlCambiarEmail_Click(object sender, EventArgs e)
        {
            if (!util.buscarIgualdad(ref Email_Cl,"Clientes"))
            {
                cli.EmailCliente = modificarDato(ref Email_Cl, ref EmailcorreoMicuenta, ref revEmail);

                Email_Cl.Text = "";

                lblEmailRepetido.Text = "";
            }
            else
            {
                revEmail.Visible = false;

                lblEmailRepetido.Text = "El email ingresado ya se encuentra asociado a otra cuenta";
            }
        }

        protected void hlCambiarFec_Click(object sender, EventArgs e)
        {
            cli.fechaCliente = modificarDato(ref FechaNacimiento_Cl, ref FechadenacimientoMicuenta);
        }

        protected void hlCambiarContraseña_Click(object sender, EventArgs e)
        {
            cli.ContrasenaCliente = modificarDato(ref Contraseña_Cl, ref Contraseña);
        }

        protected void hlCambiarTelefono_Click(object sender, EventArgs e)
        {
            if (NumeroTelefono_Cl.Text.Length <= 10)
            {
                cli.telCliente = modificarDato(ref NumeroTelefono_Cl, ref Telefono, ref revTelefono);

                lblErrorTelefono.Text = "";
            }
            else
            {
                revTelefono.Visible = false;

                lblErrorTelefono.Text = "Ingreso un telefono de mas de 10 caracteres";
            }
        }

        public string modificarDato(ref TextBox txt, ref Label lbl)
        {
            if (!txt.Visible)
            {
                lbl.Visible = false;
                txt.Visible = true;
            }
            else
            {
                util.modificar("Cod_Cliente_Cl", cli.codCliente, ref txt, "Clientes");

                util.cerrarConexion();

                lbl.Text = txt.Text;

                txt.Visible = false;
                lbl.Visible = true;
            }

            return txt.Text;
        }

        public string modificarDato(ref TextBox txt, ref Label lbl, ref RegularExpressionValidator rev, bool buscar_igualdad = false)
        {
            if (!txt.Visible)
            {
                lbl.Visible = false;
                txt.Visible = true;
            }
            else
            {
                util.modificar("Cod_Cliente_Cl", cli.codCliente, ref txt, "Clientes");
                
                util.cerrarConexion();

                lbl.Text = txt.Text;

                txt.Visible = false;
                lbl.Visible = true;
                rev.Visible = true;
            }

            return txt.Text;
        }


    }
}