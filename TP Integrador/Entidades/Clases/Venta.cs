using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
   public class Venta
    {
        private String id_Venta;
        private String cod_Venta;
        private String cod_Cliente_Venta;
        private String prec_Venta;
        private String formaDP_Venta;
        private String fecha_Venta;
		private string[] consultas;

        public Venta()
        {
			Consultas();

		}

        public Venta(String idVenta, String codVenta, String codClienteVenta, String precVenta, String formaDP, String fechaVenta)
        {
            this.id_Venta = idVenta;
            this.cod_Venta = codVenta;
            this.cod_Cliente_Venta = codClienteVenta;
            this.prec_Venta = precVenta;
            this.formaDP_Venta = formaDP;
            this.fecha_Venta = fechaVenta;

			Consultas();

		}

        public String idVenta
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
        public String precioVenta
        {
            get { return prec_Venta; }
            set { prec_Venta = value; }

        }
        public String fDPVenta
        {
            get { return formaDP_Venta; }
            set { formaDP_Venta = value; }

        } 
        public String fechaVenta
        {
            get { return fecha_Venta; }
            set { fecha_Venta = value; }

        }



		public void Consultas()
		{
			consultas = new string[10];

			consultas[0] = "SELECT COD_VENTA_V AS [CODIGO VENTA],COD_CLIENTE_V AS [CODIGO CLIENTE],PRECIOTOTAL_V AS [PRECIO TOTAL]," +
				"FORMADEPAGO_V AS [FORMA DE PAGO],FECHA_V AS FECHA FROM VENTAS";
		}

		public void setAgregarVenta()
		{
			consultas[2] = "INSERT INTO VENTAS(Cod_Cliente_V,FormaDePago_V)" +
				"SELECT '" + cod_Cliente_Venta + "', '" + formaDP_Venta + "'";
		}


		public void setMostrar_Where(string campo, string valor)
		{
			consultas[1] = "SELECT COD_VENTA_V AS [CODIGO VENTA],COD_CLIENTE_V AS [CODIGO CLIENTE],PRECIOTOTAL_V AS [PRECIO TOTAL]," +
				"FORMADEPAGO_V AS [FORMA DE PAGO],FECHA_V AS FECHA FROM VENTAS WHERE " + campo + " = " + valor;
		}

		public void setMostrar_Where(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{
				case 0:
					campo_string = "Cod_Venta_V";
					valor = cod_Venta;
					break;
				case 1:
					campo_string = "Cod_Cliente_V";
					valor = cod_Cliente_Venta;
					break;
				case 2:
					campo_string = "PrecioTotal_V";
					valor = prec_Venta;
					break;
				case 3:
					campo_string = "FormaDePago_V";
					valor = formaDP_Venta;
					break;
				case 4:
					campo_string = "Fecha_V";
					valor = fecha_Venta;
					break;

				default:
					break;
			}

			consultas[1] = "SELECT COD_VENTA_V AS [CODIGO VENTA],COD_CLIENTE_V AS [CODIGO CLIENTE],PRECIOTOTAL_V AS [PRECIO TOTAL]," +
				"FORMADEPAGO_V AS [FORMA DE PAGO],FECHA_V AS FECHA FROM VENTAS WHERE " + campo_string + " = " + valor;
		}

		public string getConsulta(int indice)
		{
			return consultas[indice];
		}


	}

   
}
