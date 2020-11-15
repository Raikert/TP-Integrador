using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
   public class Proveedor
    {
		private String id_pr;
		private String cod_pr;
		private String razon_social_pr;
		private String direc_pr;
		private String ciudad_pr;
		private String prov_pr;
		private String cuit_pr;
		private String telefono_pr;
		private String contacto_pr;
		private String email_pr;
		private String estado_pr;
		private string[] consultasP;

		public Proveedor()
		{
			ConsultasP();
		}

		public Proveedor(String idPr, String codPr, String razonSocPr, String direcPr, String ciudadPr, String provPr,
			String cuitPr, String telefonoPr, String contactoPr, String emailPr, String estadoPr)
		{
			this.id_pr = idPr;
			this.cod_pr = codPr;
			this.razon_social_pr = razonSocPr;
			this.direc_pr = direcPr;
			this.ciudad_pr = ciudadPr;
			this.prov_pr = provPr;
			this.cuit_pr = cuitPr;
			this.telefono_pr = telefonoPr;
			this.contacto_pr = contactoPr;
			this.email_pr = emailPr;
			this.estado_pr = estadoPr;

			ConsultasP();
		}

		public string idProveedor
		{
			get { return id_pr; }
			set { id_pr = value; }
		}

		public string codProveedor
		{
			get { return cod_pr; }
			set { cod_pr = value; }
		}
		public string RSocialProveedor
		{
			get { return razon_social_pr; }
			set { razon_social_pr = value; }
		}
		public string DirecProveedor
		{
			get { return direc_pr; }
			set { direc_pr = value; }
		}
		public string ciudadProveedor
		{
			get { return ciudad_pr; }
			set { ciudad_pr = value; }
		}
		public string provProveedor
		{
			get { return prov_pr; }
			set { prov_pr = value; }
		}
		public string cuitProveedor
		{
			get { return cuit_pr; }
			set { cuit_pr = value; }
		}
		public string telProveedor
		{
			get { return telefono_pr; }
			set { telefono_pr = value; }
		}
		public string emailProveedor
		{
			get { return email_pr; }
			set { email_pr = value; }
		}
		public string contactoProveedor
		{
			get { return contacto_pr; }
			set { contacto_pr = value; }
		}
		public string EstProveedor
		{
			get { return estado_pr; }
			set { estado_pr = value; }
		}



		public void ConsultasP()
		{
			consultasP = new string[10];

			consultasP[0] = "select id_Proveedor_Pr as ID,Cod_Proveedor_Pr AS COD,RazonSocial_Pr AS [R.S],Direccion_Pr AS DIRECCION," +
				"Ciudad_Pr AS CIUDAD, PROVINCIA, CUIT_Pr AS CUIT, Telefono_Pr AS TELEFONO, Contacto_Pr AS CONTACTO," +
				"Email_Pr AS EMAIL,Activo_Pr AS AC FROM Proveedores";
		}

		public void setConsultaInsertP()
		{
			consultasP[2] = "INSERT INTO Proveedores(Cod_Proveedor_Pr, RazonSocial_Pr, Direccion_Pr,Ciudad_Pr,Provincia,CUIT_Pr," +
				"Telefono_Pr,Contacto_Pr,Email_Pr,Activo_Pr)" +
				"SELECT '" + cod_pr + "', '" + razon_social_pr + "', '" + direc_pr + "', '" + ciudad_pr + "'," +
				" '" + prov_pr + "', '" + cuit_pr + "', '" +telefono_pr + "', '" + contacto_pr + "', '" + email_pr + "', '" +estado_pr + "'";
		}

		public void setMostrar_WhereP(string campo, string valor)
		{
			consultasP[1] = "select id_Proveedor_Pr as ID,Cod_Proveedor_Pr AS COD,RazonSocial_Pr AS [R.S],Direccion_Pr AS DIRECCION," +
				"Ciudad_Pr AS CIUDAD, PROVINCIA, CUIT_Pr AS CUIT, Telefono_Pr AS TELEFONO, Contacto_Pr AS CONTACTO," +
				"Email_Pr AS EMAIL,Activo_Pr AS AC FROM Proveedores WHERE " + campo + " = " + valor;
		}

		public void setMostrar_WhereP(int campo)
		{
			string campo_string = "";
			string valor = "";

			switch (campo)
			{

				case 0:
					campo_string = "Cod_Proveedor_Pr";
					valor = cod_pr;
					break;
				case 1:
					campo_string = "RazonSocial_Pr";
					valor = razon_social_pr;
					break;
				case 2:
					campo_string = "Direccion_Pr";
					valor = direc_pr;
					break;
				case 3:
					campo_string = "Ciudad_Pr";
					valor = ciudad_pr;
					break;
				case 4:
					campo_string = "Provincia";
					valor = prov_pr;
					break;
				case 5:
					campo_string = "CUIT_Pr";
					valor = cuit_pr;
					break;
				case 6:
					campo_string = "Telefono_Pr";
					valor = telefono_pr;
					break;
				case 7:
					campo_string = "Contacto_Pr";
					valor = contacto_pr;
					break;
				case 8:
					campo_string = "Email_Pr";
					valor = email_pr;
					break;
				case 9:
					campo_string = "Activo_Pr";
					valor = estado_pr;
					break;

				default:
					break;
			}

			consultasP[1] = "select id_Proveedor_Pr as ID,Cod_Proveedor_Pr AS COD,RazonSocial_Pr AS [R.S],Direccion_Pr AS DIRECCION," +
				"Ciudad_Pr AS CIUDAD, PROVINCIA, CUIT_Pr AS CUIT, Telefono_Pr AS TELEFONO, Contacto_Pr AS CONTACTO," +
				"Email_Pr AS EMAIL,Activo_Pr AS AC FROM Proveedores WHERE " + campo_string + " = " + valor;
		}

		public string getConsultaP(int indice)
		{
			return consultasP[indice];
		}

	}
}
