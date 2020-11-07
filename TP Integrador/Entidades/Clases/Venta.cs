using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Venta
    {
        private int id_Venta;
        private String cod_Venta;
        private String cod_Cliente_Venta;
        private decimal prec_Venta;
        private String formaDP_Venta;
        private Fecha fecha_Venta;

        public Venta()
        {

        }

        public Venta(int idVenta, String codVenta, String codClienteVenta, decimal precVenta, String formaDP, Fecha fechaVenta)
        {
            this.id_Venta = idVenta;
            this.cod_Venta = codVenta;
            this.cod_Cliente_Venta = codClienteVenta;
            this.prec_Venta = precVenta;
            this.formaDP_Venta = formaDP;
            this.fecha_Venta = fechaVenta;
        }

        public int idVenta
        {
            get { return id_Venta; }
            set { id_Venta = value; }

        }
        public String codVenta
        {
            get { return cod_Venta; }
            set { cod_Venta = value; }

        } 
        public String codClienteVenta
        {
            get { return cod_Cliente_Venta; }
            set { cod_Cliente_Venta = value; }

        } 
        public decimal precioVenta
        {
            get { return prec_Venta; }
            set { prec_Venta = value; }

        }
        public String fDPVenta
        {
            get { return formaDP_Venta; }
            set { formaDP_Venta = value; }

        } 
        public Fecha fechaVenta
        {
            get { return fecha_Venta; }
            set { fecha_Venta = value; }

        }

    }

   
}
