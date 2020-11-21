using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Entidades.Clases
{
	public class Cliente
	{
		private String cod_Cliente;
		private String nombre_Cliente;
		private String apellido_Cliente;
		private String dni_Cliente;
		private String telefono_Cliente;
		private String fecha_Cliente;
		private String Email_Cliente;
		private String Contrasena_Cliente;
		private String estado_Cliente;
		private string[] consultas;

		public Cliente()
		{
			Consultas();
		}

		public Cliente(String codCliente, String nombreCliente, String apellidoCliente, String dniCliente,
			String telCliente, String fechaCliente, String EmailCliente, String ContrasenaCliente, String estadoCliente)
		{
			this.cod_Cliente = codCliente;
			this.nombre_Cliente = nombreCliente;
			this.apellido_Cliente = apellidoCliente;
			this.dni_Cliente = dniCliente;
			this.telefono_Cliente = telCliente;
			this.fecha_Cliente = fechaCliente;
			this.Email_Cliente = EmailCliente;
			this.Contrasena_Cliente = ContrasenaCliente;
			this.estado_Cliente = estadoCliente;

			Consultas();
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
		public String fechaCliente
        {
			get { return fecha_Cliente; }
			set { fecha_Cliente = value; }
        }
		public String EmailCliente
		{
			get { return Email_Cliente; }
			set { Email_Cliente = value; }
		}
		public String ContrasenaCliente
		{
			get { return Contrasena_Cliente; }
			set { Contrasena_Cliente = value; }
		}
		public String EstadoCliente
		{
			get { return estado_Cliente; }
			set { estado_Cliente = value; }
		}

		public void cargar(DataRow registro)
        {
			cod_Cliente = registro["CODIGO"].ToString();
			nombre_Cliente = registro["NOMBRE"].ToString();
			apellido_Cliente = registro["APELLIDO"].ToString();
			dni_Cliente = registro["DNI"].ToString();
			telefono_Cliente = registro["TELEFONO"].ToString();
			fecha_Cliente = registro["FEC_NAC"].ToString();
			Email_Cliente = registro["EMAIL"].ToString();
			Contrasena_Cliente = registro["CONTRASEÑA"].ToString();
			estado_Cliente = registro["ACTIVO"].ToString();
		}

		public void Consultas()
		{
			consultas = new string[10];

			consultas[0] = "SELECT Cod_Cliente_Cl AS CODIGO, Nombre_Cl AS NOMBRE, Apellido_Cl AS APELLIDO, " +
			   "DNI_Cl AS DNI, NumeroTelefono_Cl AS TELEFONO, FechaNacimiento_Cl AS FEC_NAC, Email_Cl AS EMAIL, " +
			   "Contraseña_Cl AS CONTRASEÑA, Activo_Cl AS ACTIVO FROM Clientes";
		}

		public void setConsultaInsertUsuario()
		{
			consultas[2] = "INSERT INTO Clientes(Nombre_Cl, Apellido_Cl, DNI_Cl, NumeroTelefono_Cl, FechaNacimiento_Cl, Email_Cl, Contraseña_Cl, Activo_Cl)" +
				"SELECT '" + nombre_Cliente + "', '" + apellido_Cliente + "', '" + dni_Cliente + "', '" + telefono_Cliente + "', '" + fecha_Cliente + "', '" +
				Email_Cliente + "', '" + Contrasena_Cliente + "', 'true'";
		}

		public void setMostrar_Where(string campo, string valor)
		{
			consultas[1] = "SELECT Cod_Cliente_Cl AS CODIGO, Nombre_Cl AS NOMBRE, Apellido_Cl AS APELLIDO, " +
			   "DNI_Cl AS DNI, NumeroTelefono_Cl AS TELEFONO, FechaNacimiento_Cl AS FEC_NAC, Email_Cl AS EMAIL, " +
			   "Contraseña_Cl AS CONTRASEÑA, Activo_Cl AS ACTIVO FROM Clientes WHERE " + campo + " = " + valor;
		}

		public void setMostrar_Where(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{
				case 0:
					campo_string = "Nombre_Cl";
					valor = nombre_Cliente;
					break;
				case 1:
					campo_string = "Apellido_Cl";
					valor = apellido_Cliente;
					break;
				case 2:
					campo_string = "DNI_Cl";
					valor = dni_Cliente;
					break;
				case 3:
					campo_string = "NumeroTelefono_Cl";
					valor = telefono_Cliente;
					break;
				case 4:
					campo_string = "FechaNacimiento_Cl";
					valor = fecha_Cliente;
					break;
				case 5:
					campo_string = "Email_Cl";
					valor = Email_Cliente;
					break;
				case 6:
					campo_string = "Contraseña_Cl";
					valor = Contrasena_Cliente;
					break;
				case 7:
					campo_string = "Activo_Cl";
					valor = estado_Cliente;
					break;

				case 8:
					campo_string = "Cod_Cliente_Cl";
					valor = cod_Cliente;
					break;
				default:
					break;
			}

			consultas[1] = "SELECT Cod_Cliente_Cl AS CODIGO, Nombre_Cl AS NOMBRE, Apellido_Cl AS APELLIDO, " +
			   "DNI_Cl AS DNI, NumeroTelefono_Cl AS TELEFONO, FechaNacimiento_Cl AS FEC_NAC, Email_Cl AS EMAIL, " +
			   "Contraseña_Cl AS CONTRASEÑA, Activo_Cl AS ACTIVO FROM Clientes WHERE " + campo_string + " = " + valor;
		}

		public string getConsulta(int indice)
		{
			return consultas[indice];
		}
	}
}
