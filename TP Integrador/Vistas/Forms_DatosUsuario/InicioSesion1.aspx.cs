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

        protected void Page_Load(object sender, EventArgs e)
        {
            nc = new NegocioCliente();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if (Email_Cl.Text == "admin@admin.com" && Contraseña_Cl.Text == "admin")
                Response.Redirect("PanelDelAdministrador.aspx");

                cli = nc.registro_cliente(Email_Cl.ID, "'" + Email_Cl.Text + "'");

                bool validador_email = validarEmail(ref Email_Cl, ref cli);

                bool validador_contraseña = validarContrasena(ref Contraseña_Cl, ref cli);

                if (validador_email && validador_contraseña)
                {
                    Session["Usuario"] = cli;

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    if (!validador_email)
                    {
                        lblEmailNoCoincide.Text = "No se encuentra una cuenta registrada con ese email";
                        Email_Cl.Text = "";
                    }
                    else
                        lblEmailNoCoincide.Text = "";

                    if (!validador_contraseña)
                        lblContraseñaNoCoincide.Text = "No se encuentra una cuenta registrada con esa contraseña";
                    else
                        lblContraseñaNoCoincide.Text = "";
                }
        }

        public bool validarEmail(ref TextBox email, ref Cliente cli)
        {
            if (email.Text == cli.EmailCliente)
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
            cli = nc.registro_cliente(Email_Cl.ID, "'" + Email_Cl.Text + "'");

            bool validador_email = validarEmail(ref Email_Cl, ref cli);

            if (validador_email)
            {
                Session["Usuario"] = cli;
                Response.Redirect("RestablecerContraseña.aspx");
            }
            else if(!validador_email)
                lblEmailNoCoincide.Text = "No se encuentra una cuenta registrada con ese email";
        }
    }
}