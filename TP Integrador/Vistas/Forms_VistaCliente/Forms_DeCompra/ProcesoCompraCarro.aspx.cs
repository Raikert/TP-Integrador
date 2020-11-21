using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.Clases;
using Entidades.Clases;
using Negocio;
using System.Data;

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
                ven.codClienteVenta = util.valor_campo_Where("Cod_Cliente_Cl", "Clientes", "Email_CL", (string)Session["Email"]);

                ven.fDPVenta = ddlFormaDePago.Text;

                ven.setAgregarVenta();

                obj.Consulta(ven.getConsulta(2));

                string campo = "Cod_Venta_V";

                dv.codVentaDV = util.valor_campo_Where(campo, "select max(" + campo + ") as "+ campo +
                    " from Ventas where Cod_Cliente_V = '" + ven.codClienteVenta + "'");

                string[] cadenas = new string[2];

                foreach (DataRow registro in ((DataTable)Session["Carrito"]).Rows)
                {
                    dv.codLibDV = registro["Cod_Libro_Lb"].ToString();

                    dv.codProvDV = util.valor_campo_Where("Cod_Proovedor_LxP", "LibrosPorProveedor", "Cod_Libro_LxP", dv.codLibDV);

                    string precio_libro = registro["Precio_Lb"].ToString();

                    cadenas = precio_libro.Split(',');

                    precio_libro = cadenas[0] + "." + cadenas[1];

                    dv.precioDV = precio_libro;

                    dv.cantDV = registro["cantidad_items"].ToString();

                    dv.setAgregarDetalleVenta();

                    obj.Consulta(dv.getConsulta(2));
                }

                campo = "PrecioUnitario_Dv";

                string monto_total = util.valor_campo_Where(campo, "select sum(" + campo + " * CantidadDeLibros_Dv) as " + campo + 
                    " from DetalleVentas where Cod_Venta_Dv = '" + dv.codVentaDV + "'");

                cadenas = monto_total.Split(',');

                monto_total = cadenas[0] + "." + cadenas[1];

                util.modificar("PrecioTotal_V", monto_total, "Ventas", "Cod_Venta_V", dv.codVentaDV,true);

                obj.cerrarConexion();
            }
        }

        public bool ValidacionesEspeciales()
        {
            bool validador = true;

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