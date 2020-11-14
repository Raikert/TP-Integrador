using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
	public class Libro
	{
		private String id_Libro;
		private String cod_Libro;
		private String nombre_Libro;
		private String desc_Libro;
		private String cat_Libro;
		private String edit_Libro;
		private String prec_Libro;
		private String estado_Libro;
		private string[] consultas;
		public Libro()
		{
			Consultas();
		}

		public Libro(String idLibro, String codLibro, String nombreLibro, String descLibro, String catLibro, String editLibro, String precLibro, String estadoLibro)
		{
			this.id_Libro = idLibro;
			this.cod_Libro = codLibro;
			this.nombre_Libro = nombreLibro;
			this.desc_Libro = descLibro;
			this.cat_Libro = catLibro;
			this.edit_Libro = editLibro;
			this.prec_Libro = precLibro;
			this.estado_Libro = estadoLibro;

			Consultas();
		}

		public String idLibro
		{
			get { return id_Libro; }
			set { id_Libro = value; }
		}

		public String codLibro
		{
			get { return cod_Libro; }
			set { cod_Libro = value; }
		}
		public String nombreLibro
		{
			get { return nombre_Libro; }
			set { nombre_Libro = value; }
		}
		public String descLibro
		{
			get { return desc_Libro; }
			set { desc_Libro = value; }
		}
		public String catLibro
		{
			get { return cat_Libro; }
			set { cat_Libro = value; }
		}
		public String editLibro
		{
			get { return edit_Libro; }
			set { edit_Libro = value; }
		}
		public String precioLibro
		{
			get { return prec_Libro; }
			set { prec_Libro = value; }
		}
		public String estadoLibro
		{
			get { return estado_Libro; }
			set { estado_Libro = value; }
		}

		public void Consultas()
        {
			consultas = new string[10];

			consultas[0] = "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
			   "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
			   "Activo_Lb AS ACTIVO FROM Libros";
		}

		public void setConsultaInsert()
        {
			consultas[2] = "INSERT INTO Libros(Cod_Libro_Lb, NombreLibro_Lb, Descripcion_lb, Editorial_Lb, Categoria_Lb, Precio_Lb, Activo_Lb)" +
				"SELECT '" + cod_Libro + "', '" + nombre_Libro + "', '" + desc_Libro + "', '" + edit_Libro + "', '" + cat_Libro +
				"', '" + prec_Libro + "', '" + estado_Libro + "'";
		}

		public void setMostrar_Where(string campo, string valor)
		{
			consultas[1] = "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
				"Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
				"Activo_Lb AS ACTIVO FROM Libros WHERE " + campo + " = " + valor;
		}

		public void setMostrar_Where(int campo)
        {
			string campo_string = "";
			string valor = "";

			switch(campo)
            {
				case 0:
					campo_string = "Cod_Libro_Lb";
					valor = cod_Libro;
					break;
				case 1:
					campo_string = "NombreLibro_Lb";
					valor = nombre_Libro;
					break;
				case 2:
					campo_string = "Categoria_Lb";
					valor = cat_Libro;
					break;
				case 3:
					campo_string = "Editorial_Lb";
					valor = edit_Libro;
					break;
				case 4:
					campo_string = "Precio_Lb";
					valor = prec_Libro;
					break;
				case 5:
					campo_string = "Activo_Lb";
					valor = estado_Libro;
					break;
				case 6:
					campo_string = "Descripcion_lb";
					valor = desc_Libro;
					break;
				default:
					break;
            }

			consultas[1] = "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
				"Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
				"Activo_Lb AS ACTIVO FROM Libros WHERE " + campo_string + " = " + valor;
		}

		public string getConsulta(int indice)
        {
			return consultas[indice];
        }
	}
}
