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
		private String ImagenURL_Lb;
		private string[] consultas;

		public Libro()
		{
			Consultas();
		}

		public Libro(String idLibro, String codLibro, String nombreLibro, String descLibro, String catLibro, String editLibro, String precLibro, String estadoLibro, String ImagenURL_Lb)
		{
			this.id_Libro = idLibro;
			this.cod_Libro = codLibro;
			this.nombre_Libro = nombreLibro;
			this.desc_Libro = descLibro;
			this.cat_Libro = catLibro;
			this.edit_Libro = editLibro;
			this.prec_Libro = precLibro;
			this.estado_Libro = estadoLibro;
			this.ImagenURL_Lb = ImagenURL_Lb;

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

		public String ImagenURL
		{
			get { return ImagenURL_Lb; }
			set { ImagenURL_Lb = value; }
		}

		public void Consultas()
		{
			consultas = new string[20];
			
			//Trae todos los registros de la tabla Libros

			consultas[0] = "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +

			   "Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +

			   "Activo_Lb AS ACTIVO FROM Libros";

			//Top 5 mejores ofertas

			consultas[3] = "SELECT TOP 5 NombreLibro_Lb as Nombre, Precio_Lb as Precio FROM Libros ORDER BY Precio_Lb asc";

			//Top 5 libros mas caros

			consultas[4] = "SELECT TOP 5 NombreLibro_Lb as Nombre, Precio_Lb as Precio FROM Libros ORDER BY Precio_Lb desc";

			//Stock menor o igual a 10

			consultas[5] = "SELECT NombreLibro_Lb as Nombre, Cantidad_S as Cantidad from Stock " +

				"inner join Libros on Cod_Libro_S = Cod_Libro_Lb where Cantidad_S <= 10";

			//Stock mayor a 10

			consultas[6] = "SELECT NombreLibro_Lb as Nombre, Cantidad_S as Cantidad from Stock " +

				"inner join Libros on Cod_Libro_S = Cod_Libro_Lb where Cantidad_S > 10";

			//Libro mas caro

			consultas[7] = "SELECT Precio_Lb as Precio,NombreLibro_Lb as Nombre FROM LIBROS where precio_lb = (select max(precio_lb) from libros)";

			//Libro mas barato

			consultas[8] = "SELECT Precio_Lb as Precio,NombreLibro_Lb as Nombre FROM LIBROS where precio_lb = (select min(precio_lb) from libros)";

			//Libros vendidos

			consultas[9] = "SELECT NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros " +
				
				"inner join DetalleVentas on Cod_Libro_lb = Cod_Libro_Dv group by NombreLibro_Lb";

			//Libro mas vendido

			consultas[10] = "SELECT TOP 1 NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros " +

				"inner join DetalleVentas on Cod_Libro_lb = Cod_Libro_Dv group by NombreLibro_Lb order by Cantidad desc";

			//Libro menos vendido

			consultas[11] = "SELECT TOP 1 NombreLibro_Lb as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros " +
				
				"inner join DetalleVentas on Cod_Libro_lb = Cod_Libro_Dv " +

				"group by NombreLibro_Lb order by Cantidad asc";

			//Cliente que mas libros compro

			consultas[12] = "SELECT TOP 1 Cod_Cliente_Cl as Codigo, Nombre_Cl as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros " +
				
				"inner join DetalleVentas on Cod_Libro_lb = Cod_Libro_Dv inner join Ventas on Cod_Venta_V = Cod_Venta_Dv " +
				
				"inner join Clientes on Cod_Cliente_V = Cod_Cliente_Cl " +
				
				"group by  Cod_Cliente_Cl,Nombre_Cl order by Cantidad desc";

			//Cliente que menos libros compro

			consultas[13] = "SELECT TOP 1 Cod_Cliente_Cl as Codigo, Nombre_Cl as Nombre,sum(CantidadDeLibros_Dv) as Cantidad from libros " +
				
				"inner join DetalleVentas on Cod_Libro_lb = Cod_Libro_Dv inner join Ventas on Cod_Venta_V = Cod_Venta_Dv " +
				
				"inner join Clientes on Cod_Cliente_V = Cod_Cliente_Cl " +
				
				"group by  Cod_Cliente_Cl,Nombre_Cl order by Cantidad asc";

			//Promedio de libros comprados por cliente

			consultas[14] = "SELECT (SUM(CantidadDeLibros_Dv) / (SELECT count(Cod_Cliente_Cl) from Clientes)) as [Promedio Total] from DetalleVentas";

			//Los mas buscados

			consultas[15] = "SELECT TOP 4 * from Libros ORDER BY Precio_Lb asc";

			//Mejores ofertas all campos

			consultas[16] = "Select TOP 4 Cod_Libro_lb, ImagenURL_Lb,  sum(CantidadDeLibros_Dv) as CantidadVXLibro from DetalleVentas " +
				
				"inner join Libros on Cod_Libro_Dv = Cod_Libro_Lb " +
				
				"group by Cod_Libro_Lb,ImagenURL_Lb order by CantidadVXLibro desc";

			//Top ventas hoy

			consultas[17] = "Select TOP 4 Cod_Libro_lb, ImagenURL_Lb,  sum(CantidadDeLibros_Dv) as CantidadVXLibro from DetalleVentas " +
				
				"inner join Libros on Cod_Libro_Dv = Cod_Libro_Lb inner join Ventas on Cod_Venta_Dv = Cod_Venta_V " +

				"where SUBSTRING(CONVERT(VARCHAR(10), Fecha_V), 9, 2) = SUBSTRING(CONVERT(VARCHAR(10), GETDATE(), 110), 4, 2) " +
				
				"group by Cod_Libro_Lb,ImagenURL_Lb, Fecha_V order by CantidadVXLibro desc";
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

		public void setMostrar_Where(string formato_where)
		{
			consultas[1] = "SELECT id_libro_lb AS ID, Cod_Libro_Lb AS CODIGO, NombreLibro_Lb AS NOMBRE, " +
				"Descripcion_lb AS DESCRIPCION, Categoria_Lb AS CATEGORIA, Editorial_Lb AS EDITORIAL, Precio_Lb AS PRECIO, " +
				"Activo_Lb AS ACTIVO FROM Libros WHERE " + formato_where;
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
