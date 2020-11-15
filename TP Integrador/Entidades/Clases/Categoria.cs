using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
   public class Categoria
    {
		private String id_Cat;
		private String cod_Cat;
		private String nombre_Cat;
		private String desc_Cat;
		private String estado_Cat;
		private string[] consultasC;

		public Categoria()
		{
			ConsultasC();
		}

		public Categoria(String idCat, String codCat, String nombreCat, String descCat,String estadoCat)
		{
			this.id_Cat = idCat;
			this.cod_Cat = codCat;
			this.nombre_Cat = nombreCat;
			this.desc_Cat = descCat;
			this.estado_Cat = estadoCat;

			ConsultasC();
		}

		public String idCategoria
		{
			get { return id_Cat; }
			set { id_Cat = value; }
		}

		public String codCategoria
		{
			get { return cod_Cat; }
			set { cod_Cat = value; }
		}
		public String nombreCategoria
		{
			get { return nombre_Cat; }
			set { nombre_Cat = value; }
		}
		public String descCategoria
		{
			get { return desc_Cat; }
			set { desc_Cat = value; }
		}
		public String estadoCategoria
		{
			get { return estado_Cat; }
			set { estado_Cat = value; }
		}








		//////////
		public void ConsultasC()
		{
			consultasC = new string[10];

			consultasC[0] = "select * from Categorias";
		}

		public void setConsultaInsertC()
		{
			consultasC[2] = "INSERT INTO Categorias(Nombre_Ca, Descripcion_Ca, Activo_Ca)" +
				"SELECT '" + nombre_Cat + "', '" + desc_Cat + "', '" + estado_Cat + "'";
		}

		public void setMostrar_WhereC(string campo, string valor)
		{
			consultasC[1] = "SELECT Nombre_Ca,Descripcion_Ca,Activo_Ca FROM Categorias WHERE " + campo + " = " + valor;
		}


		public void setMostrar_WhereC(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo) 
			{ 
			
				case 0:
					campo_string = "Nombre_Ca";
					valor = nombre_Cat;
					break;
				case 1:
					campo_string = "Activo_Ca";
					valor = estado_Cat;
					break;
				case 2:
					campo_string = "Descripcion_Ca";
					valor = desc_Cat;
					break;

				default:
					break;
			}

			consultasC[1] = "SELECT Nombre_Ca,Descripcion_Ca,Activo_Ca FROM Categorias WHERE " + campo_string + " = " + valor;
		}

		public string getConsultaC(int indice)
		{
			return consultasC[indice];
		}




	}
}
