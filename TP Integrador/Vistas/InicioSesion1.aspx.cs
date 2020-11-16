using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;

namespace Vistas
{
    public partial class InicioSesion1 : System.Web.UI.Page
    {
        private Utilidades util;

        protected void Page_Load(object sender, EventArgs e)
        {
            util = new Utilidades();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if (Email_Cl.Text != "admin@admin.com" && Contraseña_Cl.Text != "admin")
            {
                string tabla = "Clientes";

                bool validador_email = util.buscarIgualdad(ref Email_Cl, tabla);

                bool validador_contraseña = util.buscarIgualdad(ref Contraseña_Cl, tabla);

                if (validador_email && validador_contraseña)
                {
                    string campo = "Nombre_CL";

                    string nombreUsuario = util.valor_campo_Where(ref Email_Cl, campo, tabla);

                    Session["Usuario"] = "Bienvenido/a " + nombreUsuario;
                    Session["Email"] = Email_Cl.Text;
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
            else
                Response.Redirect("PanelDelAdministrador.aspx");

            util.cerrarConexion();
        }

        protected void lbRestablecerContraseña_Click(object sender, EventArgs e)
        {
            string tabla = "Clientes";

            bool validador_email = util.buscarIgualdad(ref Email_Cl, tabla);

            if (validador_email)
            {
                Session["Email"] = Email_Cl.Text;
                Response.Redirect("RestablecerContraseña.aspx");
            }
            else
            {
                if (!validador_email)
                    lblEmailNoCoincide.Text = "No se encuentra una cuenta registrada con ese email";
            }

            util.cerrarConexion();
        }
    }
}