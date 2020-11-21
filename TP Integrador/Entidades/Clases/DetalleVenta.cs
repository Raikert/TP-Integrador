using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
   public class DetalleVenta
    {
        private String id_DV;
        private String cod_Venta_DV;
        private String cod_Libro_DV;
        private String cod_Prov_DV;
        private String prec_DV;
        private String cant_DV;
        private String estado_DV;
        private string[] consultas;

        public DetalleVenta()
        {
            Consultas();
        }
        public DetalleVenta(String idDV, String codVentaDV, String codLibDV, String codProvDV, String precDV, String cantDV, String estadoDV)
        {
            this.id_DV = idDV;
            this.cod_Venta_DV = codVentaDV;
            this.cod_Libro_DV = codLibDV;
            this.cod_Prov_DV = codProvDV;
            this.prec_DV = precDV;
            this.cant_DV = cantDV;
            this.estado_DV = estadoDV;

            Consultas();
        }

        public String idDetalleVenta
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
        public String precioDV
        {
            get { return prec_DV; }
            set { prec_DV = value; }
        }
        public String cantDV
        {
            get { return cant_DV; }
            set { cant_DV = value; }
        }
        public String estadoDV
        {
            get { return estado_DV; }
            set { estado_DV = value; }
        }



        public void Consultas()
        {
            consultas = new string[10];

            consultas[0] = "SELECT Cod_Venta_Dv AS [CODIGO VENTA],Cod_Libro_Dv AS [CODIGO LIBRO],Cod_Proveedor_Dv AS [CODIGO PROVEEDOR]," +
                "PrecioUnitario_Dv AS PRECIO,CantidadDeLibros_Dv AS CANTIDAD,Activo_Dv AS ACTIVO FROM DETALLEVENTAS";
        }

        public void setAgregarDetalleVenta()
        {
            consultas[2] = "INSERT INTO DETALLEVENTAS(Cod_Venta_Dv, Cod_Libro_Dv, Cod_Proveedor_Dv, PrecioUnitario_Dv, CantidadDeLibros_Dv, Activo_Dv)" +
                "SELECT " + cod_Venta_DV + ", '" + cod_Libro_DV + "', '" + cod_Prov_DV + "', " + prec_DV + ", " + cant_DV + ", 'true'";
        }


        public void setMostrar_Where(string campo, string valor)
        {
            consultas[1] = "SELECT Cod_Venta_Dv AS [CODIGO VENTA],Cod_Libro_Dv AS [CODIGO LIBRO],Cod_Proveedor_Dv AS [CODIGO PROVEEDOR]," +
                "PrecioUnitario_Dv AS PRECIO,CantidadDeLibros_Dv AS CANTIDAD,Activo_Dv AS ACTIVO FROM DETALLEVENTAS WHERE " + campo + " = " + valor;
        }

        public void setMostrar_Where(int campo)
        {
            string campo_string = "";
            string valor = "";

            switch (campo)
            {
                case 0:
                    campo_string = "Cod_Venta_Dv";
                    valor = cod_Venta_DV;
                    break;
                case 1:
                    campo_string = "Cod_Libro_Dv";
                    valor = cod_Libro_DV;
                    break;
                case 2:
                    campo_string = "Cod_Proveedor_Dv";
                    valor = cod_Prov_DV;
                    break;
                case 3:
                    campo_string = "PrecioUnitario_Dv";
                    valor = prec_DV;
                    break;
                case 4:
                    campo_string = "CantidadDeLibros_Dv";
                    valor = cant_DV;
                    break;
                case 5:
                    campo_string = "Activo_Dv";
                    valor = estado_DV;
                    break;

                default:
                    break;
            }

            consultas[1] = "SELECT Cod_Venta_Dv AS [CODIGO VENTA],Cod_Libro_Dv AS [CODIGO LIBRO],Cod_Proveedor_Dv AS [CODIGO PROVEEDOR]," +
                "PrecioUnitario_Dv AS PRECIO,CantidadDeLibros_Dv AS CANTIDAD,Activo_Dv AS ACTIVO FROM DETALLEVENTAS WHERE " + campo_string + " = " + valor;
        }

        public string getConsulta(int indice)
        {
            return consultas[indice];
        }


    }
}
