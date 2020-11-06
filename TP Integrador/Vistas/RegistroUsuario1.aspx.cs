﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class RegistroUsuario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Session["Email"] = txtEmail.Text;
            Response.Redirect("RegistroUsuario2.aspx");
        }
    }
}