using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Forms_DatosUsuario
{
    public partial class SeccionLogueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                hlVolver.NavigateUrl = (string)Session["ruta_de_regreso"];
            }
        }
    }
}