using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Fecha
    {
		private int dia;
		private int mes;
		private int anio;

		public Fecha()
		{
		}

		public Fecha(int Dia, int Mes, int Anio)
		{
			this.dia = Dia;
			this.mes = Mes;
			this.anio = Anio;
		}

		public int diaFecha
		{
			get { return dia; }
			set { dia = value; }
		}
		public int mesFecha
		{
			get { return mes; }
			set { mes = value; }
		}
		public int anioFecha
		{
			get { return anio; }
			set { anio = value; }
		}
	}
}
