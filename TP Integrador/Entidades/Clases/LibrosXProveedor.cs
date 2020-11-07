using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.Clases
{
    class LibrosXProveedor
    {
        private int id_LxP;
        private String cod_Prov_LxP;
        private String cod_Lib_LxP;


        public LibrosXProveedor()
        {

        }
     
        public LibrosXProveedor(int idLxP, String codProvLxP, String codLibLxP)
        {
            this.id_LxP = idLxP;
            this.cod_Lib_LxP = codLibLxP;
            this.cod_Prov_LxP = codProvLxP;
        }

        public int idLxP
        {
            get { return id_LxP; }
            set { id_LxP = value; }
        }
        public String codLibLxP
        {
            get { return cod_Lib_LxP; }
            set { cod_Lib_LxP = value; }
        }
        public String codProvLxP
        {
            get { return codProvLxP; }
            set { cod_Prov_LxP = value; }
        }


    }

  
}
