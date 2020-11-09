using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Instrumentation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class PanelDelAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnModificarProveedor_Click(object sender, EventArgs e)
        {
            if(Cod_Proveedor_Pr.ToString() != "")
            {
                /* Proveedor prov
                 
                NegocioProveedores np

                prov = txtCodigo.text;

                np.modificarCodigo(prov);

                "Update Proveedores set prov.codigo.id = prov.codigo.text"

                */

                
            }
        }

        protected void cvCodigoLibro_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnMostrarLibros_Click(object sender, EventArgs e)
        {

        }
    }
}