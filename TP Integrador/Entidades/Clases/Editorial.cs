using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    public class Editorial
    {
		private String id_Editorial;
		private String cod_Editorial;
		private String nombre_Editorial;
		private String estado_Editorial;
		private string[] consultasE;
		public Editorial()
		{
			ConsultasE();
		}

		public Editorial(String idEditorial, String codEditorial, String nombreEditorial, String estadoEditorial)
		{
			this.id_Editorial = idEditorial;
			this.cod_Editorial = codEditorial;
			this.nombre_Editorial = nombreEditorial;
			this.estado_Editorial = estadoEditorial;

			ConsultasE();
		}

		public String idEditorial
		{
			get { return id_Editorial; }
			set { id_Editorial = value; }
		}

		public String codEditorial
		{
			get { return cod_Editorial; }
			set { cod_Editorial = value; }
		}

		public String nombreEditorial
		{
			get { return nombre_Editorial; }
			set { nombre_Editorial = value; }
		}

		public String estadoEditorial
		{
			get { return estado_Editorial; }
			set { estado_Editorial = value; }
		}



		public void ConsultasE()
		{
			consultasE = new string[3];

			consultasE[0] = "select Cod_Editorial_E as CODIGO,Nombre_E AS NOMBRE,Activo_E AS ACTIVO FROM Editoriales";
		}

		public void setConsultaInsertE()
		{
			consultasE[2] = "INSERT INTO Editoriales(Cod_Editorial_E, Nombre_E, Activo_E)" +
				"SELECT '" + cod_Editorial + "', '" + nombre_Editorial + "', '" + estado_Editorial + "'";
		}

		public void setMostrar_WhereE(string campo, string valor)
		{
			consultasE[1] = "SELECT Cod_Editorial_E AS CODIGO, Nombre_E AS NOMBRE, Activo_E AS ACTIVO FROM Editoriales WHERE " + campo + " = " + valor;
		}


		public void setMostrar_WhereE(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{

				case 0:
					campo_string = "Cod_Editorial_E";
					valor = cod_Editorial;
					break;
				case 1:
					campo_string = "Nombre_E";
					valor = nombre_Editorial;
					break;
				case 2:
					campo_string = "Activo_E";
					valor = estado_Editorial;
					break;

				default:
					break;
			}

			consultasE[1] = "SELECT Cod_Editorial_E as CODIGO,Nombre_E AS NOMBRE,Activo_E AS ACTIVO FROM Editoriales WHERE " + campo_string + " = " + valor;
		}

		public string getConsultaE(int indice)
		{
			return consultasE[indice];
		}






	}
}
