using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Categoria
    {
		private int id_Cat;
		private String cod_Cat;
		private String nombre_Cat;
		private String desc_Cat;
		private bool estado_Cat;

		public Categoria()
		{
		}

		public Categoria(int idCat, String codCat, String nombreCat, String descCat, bool estadoCat)
		{
			this.id_Cat = idCat;
			this.cod_Cat = codCat;
			this.nombre_Cat = nombreCat;
			this.desc_Cat = descCat;
			this.estado_Cat = estadoCat;
		}

		public int idCategoria
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
		public bool estadoCategoria
		{
			get { return estado_Cat; }
			set { estado_Cat = value; }
		}
	}
}
