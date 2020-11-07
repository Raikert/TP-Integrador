using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
	class Cliente
	{
		private int id_Cliente;
		private String cod_Cliente;
		private String nombre_Cliente;
		private String apellido_Cliente;
		private String dni_Cliente;
		private String telefono_Cliente;
		private Fecha fecha_Cliente;
		private bool estado_Cliente;


		public Cliente()
		{
		}
		public Cliente(int idCliente, String codCliente, String nombreCliente, String apellidoCliente, String dniCliente,
			String telCliente, Fecha fechaCliente, bool estadoCliente)
		{
			this.id_Cliente = idCliente;
			this.cod_Cliente = codCliente;
			this.nombre_Cliente = nombreCliente;
			this.apellido_Cliente = apellidoCliente;
			this.dni_Cliente = dniCliente;
			this.telefono_Cliente = telCliente;
			this.fecha_Cliente = fechaCliente;
			this.estado_Cliente = estadoCliente;

		}

		public int idCliente
		{
			get { return id_Cliente; }
			set { id_Cliente = value; }
		}
		public String codCliente
        {
			get { return cod_Cliente; }
			set { cod_Cliente = value; }
        }
		public String nombreCliente
        {
			get { return nombre_Cliente; }
			set { nombre_Cliente = value; }
        }
		public String apellidoCliente
        {
			get { return apellido_Cliente; }
			set { apellido_Cliente = value; }
        }
		public String dniCliente
        {
			get { return dni_Cliente; }
			set { dni_Cliente = value; }
        }
		public String telCliente
        {
			get { return telefono_Cliente; }
			set { telefono_Cliente = value; }
        }
		public Fecha fechaCliente
        {
			get { return fecha_Cliente; }
			set { fecha_Cliente = value; }
        }
	}
}
