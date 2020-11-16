using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class RegistroUsuario1 : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            string campo = "Email_Cl";

            DataTable tabla = obj.DataTable_Query("select " + campo + " from Clientes");

            bool repeticion = false;

            foreach (DataRow registro in tabla.Rows)
            {
                if (registro[campo].ToString() == txtEmail.Text)
                    repeticion = true;
            }

            if (!repeticion)
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("RegistroUsuario2.aspx");
            }
            else
                lblEmailRepetido.Text = "El email ingresado ya se encuentra asociado a otra cuenta";
        }
    }
}