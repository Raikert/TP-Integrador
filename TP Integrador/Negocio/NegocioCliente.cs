using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.Clases;
using System.Data;

namespace Negocio
{
    public class NegocioCliente
    {
        private Cliente cli;

        private NegocioGenerales ng;

        public NegocioCliente()
        {
            cli = new Cliente();

            ng = new NegocioGenerales();
        }

        public Cliente registro_cliente(string campo,string valor)
        {
            cli.setMostrar_Where(campo, valor);

            DataTable registro = ng.DataTable_Query(cli.getConsulta(1));

            if (registro.Rows.Count != 0)
                cli.cargar(registro.Rows[0]);

            return cli;
        }
    }
}
