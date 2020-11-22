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
    public partial class InicioSesion1 : System.Web.UI.Page
    {
        private NegocioCliente nc;

        private Cliente cli;

        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            nc = new NegocioCliente();

            cli = new Cliente();

            util = new Utilidades();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if (Email_Cl.Text == "admin@admin.com" && Contraseña_Cl.Text == "admin")
                Response.Redirect("~/Forms_Admin/PanelDelAdministrador.aspx");

            bool validador_email = validarEmail(ref Email_Cl, ref cli);

            bool validador_contraseña = false;

            if(validador_email)
            {
                cli = nc.registro_cliente(Email_Cl.ID, "'" + Email_Cl.Text + "'");
                validador_contraseña = validarContrasena(ref Contraseña_Cl, ref cli);
            }
                
            if (validador_email && validador_contraseña)
            {
                Session["Usuario"] = cli;

                Response.Redirect("~/Home.aspx");
            }
            else
            {
                if (!validador_email)
                {
                    lblContraseñaNoCoincide.Text = "";
                    lblEmailNoCoincide.Text = "No se encuentra una cuenta registrada con ese email";
                    Email_Cl.Text = "";
                }
                else
                {
                    lblEmailNoCoincide.Text = "";

                    if (!validador_contraseña)
                        lblContraseñaNoCoincide.Text = "No se encuentra una cuenta registrada con esa contraseña";
                    else
                        lblContraseñaNoCoincide.Text = "";
                }
            }
        }

        public bool validarEmail(ref TextBox email, ref Cliente cli)
        {
            if (util.buscarIgualdad(ref Email_Cl,"Clientes"))
                return true;
            else
                return false;
        }

        public bool validarContrasena(ref TextBox contrasena, ref Cliente cli)
        {
            if (contrasena.Text == cli.ContrasenaCliente)
                return true;
            else
                return false;
        }

        protected void lbRestablecerContraseña_Click(object sender, EventArgs e)
        {
            bool validador_email = validarEmail(ref Email_Cl, ref cli);

            if (validador_email)
            {
                Session["Email"] = Email_Cl.Text;

                Response.Redirect("~/Forms_DatosUsuario/RestablecerContraseña.aspx");
            }
            else
                lblEmailNoCoincide.Text = "No se encuentra una cuenta registrada con ese email";
        }
    }
}