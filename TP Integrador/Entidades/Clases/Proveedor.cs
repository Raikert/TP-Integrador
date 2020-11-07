using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class Proveedor
    {
		private int id_pr;
		private String cod_pr;
		private String razon_social_pr;
		private String direc_pr;
		private String ciudad_pr;
		private String prov_pr;
		private String cuit_pr;
		private String telefono_pr;
		private String contacto_pr;
		private String email_pr;
		private bool estado_pr;

		public Proveedor()
		{
		}

		public Proveedor(int idPr, String codPr, String razonSocPr, String direcPr, String ciudadPr, String provPr,
			String cuitPr, String telefonoPr, String contactoPr, String emailPr, bool estadoPr)
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
		}

		public int idProveedor
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
		public bool EstProveedor
		{
			get { return estado_pr; }
			set { estado_pr = value; }
		}
	}
}
