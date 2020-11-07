using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class DetalleVenta
    {
        private int id_DV;
        private String cod_Venta_DV;
        private String cod_Libro_DV;
        private String cod_Prov_DV;
        private decimal prec_DV;
        private int cant_DV;
        private bool estado_DV;


        public DetalleVenta()
        {

        }
        public DetalleVenta(int idDV, String codVentaDV, String codLibDV, String codProvDV, decimal precDV, int cantDV, bool estadoDV)
        {
            this.id_DV = idDV;
            this.cod_Venta_DV = codVentaDV;
            this.cod_Libro_DV = codLibDV;
            this.cod_Prov_DV = codProvDV;
            this.prec_DV = precDV;
            this.cant_DV = cantDV;
            this.estado_DV = estadoDV;
        }

        public int idDetalleVenta
        {
            get { return id_DV; }
            set { id_DV = value; }
        }

        public String codVentaDV
        {
            get { return cod_Venta_DV; }
            set { cod_Venta_DV = value; }
        }
        public String codLibDV
        {
            get { return cod_Libro_DV; }
            set { cod_Libro_DV = value; }
        }
        public String codProvDV
        {
            get { return cod_Prov_DV; }
            set { cod_Prov_DV = value; }
        }
        public decimal precioDV
        {
            get { return prec_DV; }
            set { prec_DV = value; }
        }
        public int cantDV
        {
            get { return cant_DV; }
            set { cant_DV = value; }
        }
        public bool estadoDV
        {
            get { return estado_DV; }
            set { estado_DV = value; }
        }

        
    }
}
