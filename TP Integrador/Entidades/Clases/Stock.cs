using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
   public class Stock
    {
		private String cod_libro_stock;
        private String cant_Stock;
        private String prec_Stock;
        private String estado_Stock;
        private string[] consultasST;

        public Stock()
        {
            ConsultasST();
        }
        public Stock(String codlibroStock, String cantStock, String precStock, String estadoStock)
        {
            this.cod_libro_stock = codlibroStock;
            this.cant_Stock = cantStock;
            this.prec_Stock = precStock;
            this.estado_Stock = estadoStock;

            ConsultasST();
        }

        public String codlibroStock
        {
            get { return cod_libro_stock; }
            set { cod_libro_stock = value; }
        }
        public String cantStock
        {
            get { return cant_Stock; }
            set { cant_Stock = value; }
        }
        public String precStock
        {
            get { return prec_Stock; }
            set { prec_Stock = value; }
        }
        public String estadoStock
        {
            get { return estado_Stock; }
            set { estado_Stock = value; }
        }

		public void ConsultasST()
		{
			consultasST = new string[10];

			consultasST[0] = "SELECT Cod_Libro_S AS CODIGO, Cantidad_S AS CANTIDAD,PrecioUnitario_S AS PRECIO," +
				"Activo_S AS ACTIVO FROM STOCK";
		}

		public void setConsultaInsertST()
		{
			consultasST[2] = "INSERT INTO Stock(Cod_Libro_S,Cantidad_S,PrecioUnitario_S,Activo_S)" +
				"SELECT '" + cod_libro_stock + "', '" + cant_Stock + "', '" + prec_Stock + "', '" + estado_Stock + "'";
		}

		public void setMostrar_WhereST(string campo, string valor)
		{
			consultasST[1] = "SELECT Cod_Libro_S AS CODIGO, Cantidad_S AS CANTIDAD,PrecioUnitario_S AS PRECIO," +
				"Activo_S AS ACTIVO FROM STOCK WHERE " + campo + " = " + valor;
		}

		public void setMostrar_WhereST(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{

				case 0:
					campo_string = "Cod_Libro_S";
					valor = cod_libro_stock;
					break;
				case 1:
					campo_string = "Cantidad_S";
					valor = cant_Stock;
					break;
				case 2:
					campo_string = "PrecioUnitario_S";
					valor = prec_Stock;
					break;
				case 3:
					campo_string = "Activo_S";
					valor = estado_Stock;
					break;

				default:
					break;
			}

			consultasST[1] = "SELECT Cod_Libro_S AS CODIGO, Cantidad_S AS CANTIDAD,PrecioUnitario_S AS PRECIO," +
				"Activo_S AS ACTIVO FROM STOCK WHERE " + campo_string + " = " + valor;
		}

		public string getConsultaST(int indice)
		{
			return consultasST[indice];
		}

	}
}
