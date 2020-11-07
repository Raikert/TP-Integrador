using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Editorial
    {
		private int id_Editorial;
		private String cod_Editorial;
		private String nombre_Editorial;
		private bool estado_Editorial;

		public Editorial()
		{
		}

		public Editorial(int idEditorial, String codEditorial, String nombreEditorial, bool estadoEditorial)
		{
			this.id_Editorial = idEditorial;
			this.cod_Editorial = codEditorial;
			this.nombre_Editorial = nombreEditorial;
			this.estado_Editorial = estadoEditorial;
		}

		public int idEditorial
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

		public bool estadoEditorial
		{
			get { return estado_Editorial; }
			set { estado_Editorial = value; }
		}
	}
}
