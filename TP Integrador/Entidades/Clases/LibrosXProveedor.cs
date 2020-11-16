using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
	public class LibrosXProveedor
	{
		private String id_LxP;
		private String cod_Prov_LxP;
		private String cod_Lib_LxP;
		private String estado_LxP;
		private string[] consultaslxp;

		public LibrosXProveedor()
		{
			Consultaslxp();
		}

		public LibrosXProveedor(String idLxP, String codProvLxP, String codLibLxP)
		{
			this.id_LxP = idLxP;
			this.cod_Lib_LxP = codLibLxP;
			this.cod_Prov_LxP = codProvLxP;

			Consultaslxp();
		}


		public String idLxP
		{
			get { return id_LxP; }
			set { id_LxP = value; }
		}
		public String codLibLxP
		{
			get { return cod_Lib_LxP; }
			set { cod_Lib_LxP = value; }
		}
		public String codProvLxP
		{
			get { return cod_Prov_LxP; }
			set { cod_Prov_LxP = value; }
		}

		public String EstadoLxP
		{
			get { return estado_LxP; }
			set { estado_LxP = value; }
		}


		public void Consultaslxp()
		{
			consultaslxp = new string[10];

			consultaslxp[0] = "SELECT id_LxP AS ID,Cod_Libro_LxP AS [CODIGO LIBRO],Cod_Proovedor_LxP AS [CODIGO PROVEEDOR]," +
				"Activo_LxP AS ACTIVO FROM LibrosPorProveedor";
		}

		public void setConsultaInsertlxp()
		{
			consultaslxp[2] = "INSERT INTO LibrosPorProveedor(Cod_Libro_LxP,Cod_Proovedor_LxP,Activo_LxP)" +
				"SELECT '" + cod_Lib_LxP + "', '" + cod_Prov_LxP + "', '" + estado_LxP + "'";
		}

		public void setMostrar_Wherelxp(string campo, string valor)
		{
			consultaslxp[1] = "SELECT id_LxP AS ID,Cod_Libro_LxP AS [CODIGO LIBRO],Cod_Proovedor_LxP AS [CODIGO PROVEEDOR]," +
				"Activo_LxP AS ACTIVO FROM LibrosPorProveedor WHERE " + campo + " = " + valor;
		}

		public void setMostrar_Wherelxp(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{

				case 0:
					campo_string = "Cod_Libro_LxP";
					valor = codLibLxP;
					break;
				case 1:
					campo_string = "Cod_Proovedor_LxP";
					valor = codProvLxP;
					break;
				case 2:
					campo_string = "Activo_LxP";
					valor = estado_LxP;
					break;

				default:
					break;
			}

			consultaslxp[1] = "SELECT id_LxP AS ID,Cod_Libro_LxP AS [CODIGO LIBRO],Cod_Proovedor_LxP AS [CODIGO PROVEEDOR]," +
				"Activo_LxP AS ACTIVO FROM LibrosPorProveedor WHERE " + campo_string + " = " + valor;
		}

		public string getConsultalxp(int indice)
		{
			return consultaslxp[indice];
		}
	}


}
