using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;
using Entidades.Clases;
using Negocio;

namespace Vistas
{
    public partial class ProcesoCompraCarro : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Utilidades util;

        private Venta ven;

        private DetalleVenta dv;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            util = new Utilidades();

            ven = new Venta();

            dv = new DetalleVenta();
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (ValidacionesEspeciales())
            {
                string tabla = "Clientes";

                string campo = "Cod_Cliente_Cl";

                string campocodigo = "Email_CL";

                string EmailUsuario = (string)Session["Email"];

                string Cod_cliente = util.valor_campo_Where(campocodigo,EmailUsuario, campo, tabla);

                ven.codClienteVenta = Cod_cliente;

                ven.fDPVenta = ddlFormaDePago.Text;

                ven.setAgregarVenta();

                obj.Consulta(ven.getConsulta(2));
            }
        }

        public bool ValidacionesEspeciales()
        {
            bool validador = true;

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

            string tabla = "Clientes";

            string campocodigo = "Email_CL";

            string EmailUsuario = (string)Session["Email"];

            if (!util.buscarIgualdad_Where(campocodigo, EmailUsuario, ref DNI_Cl, tabla))
            {
                lblErrorDNI.Text = "El DNI ingresado no coincide con el DNI registrado en su cuenta";
                validador = false;
            }
            else
                lblErrorDNI.Text = "";

            if (!util.buscarIgualdad_Where(campocodigo, EmailUsuario, ref NumeroTelefono_Cl, tabla))
            {
                lblErrorTelefono.Text = "El telefono ingresado no coincide con el telefono registrado en su cuenta";
                validador = false;
            }
            else
                lblErrorTelefono.Text = "";

            return validador;
        }


    }
}