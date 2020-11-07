using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Libro
    {
		private int id_Libro;
		private String cod_Libro;
		private String nombre_Libro;
		private String desc_Libro;
		private String cat_Libro;
		private String edit_Libro;
		private decimal prec_Libro;
		private bool estado_Libro;

		public Libro()
		{
		}

		public Libro(int idLibro, String codLibro, String nombreLibro, String descLibro, String catLibro, String editLibro, decimal precLibro, bool estadoLibro)
		{
			this.id_Libro = idLibro;
			this.cod_Libro = codLibro;
			this.nombre_Libro = nombreLibro;
			this.desc_Libro = descLibro;
			this.cat_Libro = catLibro;
			this.edit_Libro = editLibro;
			this.prec_Libro = precLibro;
			this.estado_Libro = estadoLibro;
		}

		public int idLibro
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
			set { cod_Libro = value; }
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
		public decimal precioLibro
		{
			get { return prec_Libro; }
			set { prec_Libro = value; }
		}
		public bool estadoLibro
		{
			get { return estado_Libro; }
			set { estado_Libro = value; }
		}
	}
}
