using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Stock
    {
        private String cod_Stock;
        private int cant_Stock;
        private decimal prec_Stock;
        private bool estado_Stock;


        public Stock()
        {
        }
        public Stock(String codStock, int cantStock, decimal precStock, bool estadoStock)
        {
            this.cod_Stock = codStock;
            this.cant_Stock = cantStock;
            this.prec_Stock = precStock;
            this.estado_Stock = estadoStock;
        }

        public String codStock
        {
            get { return cod_Stock; }
            set { cod_Stock = value; }
        }
        public int cantStock
        {
            get { return cant_Stock; }
            set { cant_Stock = value; }
        }
        public decimal precStock
        {
            get { return prec_Stock; }
            set { prec_Stock = value; }
        }
        public bool estadoStock
        {
            get { return estado_Stock; }
            set { estado_Stock = value; }
        }
    }
}
