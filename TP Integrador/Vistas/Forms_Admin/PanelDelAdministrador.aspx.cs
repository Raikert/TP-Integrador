using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Management.Instrumentation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades.Clases;
using Vistas.Clases;

namespace Vistas
{
    public partial class PanelDelAdministrador : System.Web.UI.Page
    {
        private NegocioGenerales obj;

        private Libro lib;

        private Categoria cat;

        private Utilidades util;

        private Editorial edit;

        private Proveedor pro;

        private LibrosXProveedor lxp;

        private Stock ST;

        private Cliente cl;

        private Venta ven;

        private DetalleVenta dv;

        protected void Page_Load(object sender, EventArgs e)
        {
            obj = new NegocioGenerales();

            lib = new Libro();
            cat = new Categoria();
            util = new Utilidades();
            edit = new Editorial();
            pro = new Proveedor();
            lxp = new LibrosXProveedor();
            ST = new Stock();
            cl = new Cliente();
            ven = new Venta();
            dv = new DetalleVenta();

            limpiarEstados();

            if (!IsPostBack)
            {
                util.Bindear(ref Categoria_Lb, "SELECT[Nombre_Ca] FROM[Categorias]", "Nombre_Ca");
                util.Bindear(ref Editorial_Lb, "SELECT [Nombre_E] FROM [Editoriales]", "Nombre_E");
            }
        }

        ////////////////////////////////////////INICIO DE MODULO LIBROS///////////////////////////////////////////////////////  

        protected void btnMostrarLibros_Click(object sender, EventArgs e)
        {
            mostrarLibros();
        }

        protected void btnBuscarLibro_Click(object sender, EventArgs e)
        {
            buscarLibros();
        }

        protected void btnModificarLibro_Click(object sender, EventArgs e)
        {
            modificarLibro();
        }

        protected void btnAgregarLibro_Click(object sender, EventArgs e)
        {
            agregarLibro();
        }

        public void mostrarLibros()
        {
            int filas_afectadas = util.Bindear(ref grdLibro, lib.getConsulta(0));

            obj.cerrarConexion();

            Session["consulta_actual"] = lib.getConsulta(0);

            lblEstadoABM_Libro.Text = "Se encontraron " + filas_afectadas + " registros de libros";

            limpiarCamposL();
        }
        public void buscarLibros()
        {
            lib.codLibro = "'" + Cod_Libro_Lb.Text + "'";
            lib.nombreLibro = "'" + NombreLibro_Lb.Text + "'";
            lib.catLibro = "'" + Categoria_Lb.Text + "'";
            lib.editLibro = "'" + Editorial_Lb.Text + "'";
            lib.precioLibro = Precio_Lb.Text;
            lib.estadoLibro = Activo_Lb.Text;
            lib.descLibro = "'" + Descripcion_lb.Text + "'";

            lib.setMostrar_Where(Convert.ToInt32(ddlCampoBuscar.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdLibro, lib.getConsulta(1));

            obj.cerrarConexion();

            Session["consulta_actual"] = lib.getConsulta(1);

            limpiarCamposL();

            lblEstadoABM_Libro.Text = "Se encontraron " + filas_afectadas + " registros de libros";
        }
        public void agregarLibro()
        {
            if (validacionesL()) {

                lib.codLibro = Cod_Libro_Lb.Text;
                lib.nombreLibro = NombreLibro_Lb.Text;
                lib.catLibro = Categoria_Lb.Text;
                lib.editLibro = Editorial_Lb.Text;
                lib.precioLibro = Precio_Lb.Text;
                lib.estadoLibro = Activo_Lb.SelectedValue;
                lib.descLibro = Descripcion_lb.Text;

                lib.setConsultaInsert();

                obj.Consulta(lib.getConsulta(2));

                lib.setMostrar_Where(Cod_Libro_Lb.ID, "'" + Cod_Libro_Lb.Text + "'");

                util.Bindear(ref grdLibro, lib.getConsulta(1));

                obj.cerrarConexion();

                limpiarCamposL();

                lblEstadoABM_Libro.Text = "Registro de libro agregado exitosamente";
            }
         
        }
        public void modificarLibro()
        {

            
                string tabla = "Libros";

                util.modificar(ref Cod_Libro_Lb, ref NombreLibro_Lb, tabla);
                util.modificar(ref Cod_Libro_Lb, ref Categoria_Lb, tabla);
                util.modificar(ref Cod_Libro_Lb, ref Editorial_Lb, tabla);
                util.modificar(ref Cod_Libro_Lb, ref Precio_Lb, tabla, true);
                util.modificar(ref Cod_Libro_Lb, ref Activo_Lb, tabla, true, true);
                util.modificar(ref Cod_Libro_Lb, ref Descripcion_lb, tabla);

                lib.setMostrar_Where(Cod_Libro_Lb.ID, "'" + Cod_Libro_Lb.Text + "'");

                util.Bindear(ref grdLibro, lib.getConsulta(1));

                obj.cerrarConexion();

                limpiarCamposL();

                lblEstadoABM_Libro.Text = "Registro de libro modificado exitosamente";
            
            
        }


        public void limpiarEstados()
        {
            util.limpiar(ref lblEstadoABM_Libro);
            util.limpiar(ref lblEstadoABM_Categoria);
            util.limpiar(ref lblEstadoABM_Editorial);
            util.limpiar(ref lblEstadoABM_Proveedor);
            util.limpiar(ref lblEstadoLibrosXProveedores);
            util.limpiar(ref lblEstadoStock);
            util.limpiar(ref lblEstadoCliente);
            util.limpiar(ref lblEstadoVentas);
            util.limpiar(ref lblEstadoDetalleVentas);
        }
        public void limpiarCamposL()
        {
            util.limpiar(ref Cod_Libro_Lb);
            util.limpiar(ref NombreLibro_Lb);
            util.limpiar(ref Precio_Lb);
            util.limpiar(ref Descripcion_lb);
            Categoria_Lb.SelectedIndex = 0;
            Editorial_Lb.SelectedIndex = 0;
            Activo_Lb.SelectedIndex = 0;
        }

        protected void grdLibro_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdLibro.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdLibro, (string)Session["consulta_actual"], true);

            obj.cerrarConexion();
        }


       public bool validacionesL()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Cod_Libro_Lb, "Libros"))
            {
                validador = false;
                lblEstadoABM_Libro.Text = "El codigo que ingreso ya existe en la base de datos";
            }

            return validador;
        }


        ///7////////////////////////////// INICIO DE MODULO CATEGORIAS /////////////////////////////////////////

        protected void btnMostrarCategorias_Click(object sender, EventArgs e)
        {
            mostrarCategoria();
        }

        protected void btnBuscarCategoria_Click(object sender, EventArgs e)
        {
            buscarCategoria();
        }

        protected void btnAgregarCategoria_Click(object sender, EventArgs e)
        {
            agregarCategoria();
        }

        protected void btnModificarCategoria_Click(object sender, EventArgs e)
        {
            modificarCategoria();
        }

        public void mostrarCategoria()
        {
            int filas_afectadas = util.Bindear(ref grdCategoria, cat.getConsultaC(0));

            obj.cerrarConexion();

            Session["consulta_actual_categoria"] = cat.getConsultaC(0);

            lblEstadoABM_Categoria.Text = "Se encontraron " + filas_afectadas + " registros de Categorias";

            limpiarCamposC();
        }
        public void buscarCategoria()
        {
            cat.nombreCategoria = "'" + Nombre_Ca.Text + "'";
            cat.estadoCategoria = "'" + Activo_Ca.Text + "'";
            cat.descCategoria = "'" + Descripcion_Ca.Text + "'";

            cat.setMostrar_WhereC(Convert.ToInt32(ddlCampoBuscarCa.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdCategoria, cat.getConsultaC(1));

            obj.cerrarConexion();

            Session["consulta_actual_categoria"] = cat.getConsultaC(1);

            limpiarCamposC();

            lblEstadoABM_Categoria.Text = "Se encontraron " + filas_afectadas + " registros de Categorias";
        }
        public void agregarCategoria()
        {
            if (validacionesC())
            {
                cat.nombreCategoria = Nombre_Ca.Text;
                cat.descCategoria = Descripcion_Ca.Text;
                cat.estadoCategoria = Activo_Ca.Text;


                cat.setConsultaInsertC();

                obj.Consulta(cat.getConsultaC(2));

                cat.setMostrar_WhereC(Nombre_Ca.ID, "'" + Nombre_Ca.Text + "'");

                util.Bindear(ref grdCategoria, cat.getConsultaC(1));

                obj.cerrarConexion();

                limpiarCamposC();

                lblEstadoABM_Categoria.Text = "Registro de categoria agregado exitosamente";
            }
        }
        public void modificarCategoria()
        {

            
                string tabla = "Categorias";

                util.modificar(ref Nombre_Ca, ref Descripcion_Ca, tabla);
                util.modificar(ref Nombre_Ca, ref Activo_Ca, tabla, true, true);


                cat.setMostrar_WhereC(Nombre_Ca.ID, "'" + Nombre_Ca.Text + "'");

                util.Bindear(ref grdCategoria, cat.getConsultaC(1));

                obj.cerrarConexion();

                limpiarCamposC();

                lblEstadoABM_Categoria.Text = "Registro de categoria modificado exitosamente";
            
        }

        public void limpiarCamposC()
        {
            util.limpiar(ref Nombre_Ca);
            util.limpiar(ref Descripcion_Ca);
            Activo_Ca.SelectedIndex = 0;
        }

        protected void grdCategoria_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdCategoria.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdCategoria, (string)Session["consulta_actual_categoria"], true);

            obj.cerrarConexion();
        }


        public bool validacionesC()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Nombre_Ca, "Categorias"))
            {
                validador = false;
                lblEstadoABM_Categoria.Text = "El Nombre que ingreso ya existe en la base de datos";
            }

            return validador;
        }



        ///7////////////////////////////// INICIO DE MODULO EDITORIALES /////////////////////////////////////////




        protected void btnMostrarEditoriales_Click(object sender, EventArgs e)
        {
            mostrarEditoriales();
        }

        protected void btnBuscarEditorial_Click(object sender, EventArgs e)
        {
            buscarEditoriales();
        }

        protected void btnAgregarEditorial_Click(object sender, EventArgs e)
        {
            agregarEditoriales();
        }

        protected void btnModificarEditorial_Click(object sender, EventArgs e)
        {
            modificarEditoriales();
        }


        public void mostrarEditoriales()
        {
            int filas_afectadas = util.Bindear(ref grdEditorial, edit.getConsultaE(0));

            obj.cerrarConexion();

            Session["consulta_actual_editorial"] = edit.getConsultaE(0);

            lblEstadoABM_Editorial.Text = "Se encontraron " + filas_afectadas + " registros de Editoriales";

            limpiarCamposE();
        }
        public void buscarEditoriales()
        {
            edit.nombreEditorial = "'" + Nombre_E.Text + "'";
            edit.estadoEditorial = "'" + Activo_E.Text + "'";
            edit.codEditorial = "'" + Cod_Editorial_E.Text + "'";

            edit.setMostrar_WhereE(Convert.ToInt32(ddlCampoBuscarE.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdEditorial, edit.getConsultaE(1));

            obj.cerrarConexion();

            Session["consulta_actual_editorial"] = edit.getConsultaE(1);

            limpiarCamposE();

            lblEstadoABM_Editorial.Text = "Se encontraron " + filas_afectadas + " registros de Editoriales";
        }
        public void agregarEditoriales()
        {
            if (validacionesE())
            {

                edit.nombreEditorial = Nombre_E.Text;
                edit.codEditorial = Cod_Editorial_E.Text;
                edit.estadoEditorial = Activo_E.Text;


                edit.setConsultaInsertE();

                obj.Consulta(edit.getConsultaE(2));

                edit.setMostrar_WhereE(Nombre_E.ID, "'" + Nombre_E.Text + "'");

                util.Bindear(ref grdEditorial, edit.getConsultaE(1));

                obj.cerrarConexion();

                limpiarCamposE();

                lblEstadoABM_Editorial.Text = "Registro de editorial agregado exitosamente";
            }
        }
        public void modificarEditoriales()
        {

            if (validacionesEM())
            {
                string tabla = "Editoriales";

                util.modificar(ref Nombre_E, ref Cod_Editorial_E, tabla);
                util.modificar(ref Nombre_E, ref Activo_E, tabla, true, true);


                edit.setMostrar_WhereE(Nombre_E.ID, "'" + Nombre_E.Text + "'");

                util.Bindear(ref grdEditorial, edit.getConsultaE(1));

                obj.cerrarConexion();

                limpiarCamposE();

                lblEstadoABM_Editorial.Text = "Registro de editorial modificado exitosamente";
            }
        }


        public void limpiarCamposE()
        {
            util.limpiar(ref Nombre_E);
            util.limpiar(ref Cod_Editorial_E);
            Activo_E.SelectedIndex = 0;
        }

        protected void grdEditorial_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdEditorial.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdEditorial, (string)Session["consulta_actual_editorial"], true);

            obj.cerrarConexion();
        }


        public bool validacionesE()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Nombre_E, "Editoriales"))
            {
                validador = false;
               lblEstadoABM_Editorial.Text = "El Nombre que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref Cod_Editorial_E, "Editoriales"))
            {
                validador = false;
                lblEstadoABM_Editorial.Text = "El codigo que ingreso ya existe en la base de datos";
            }

            return validador;
        }

        public bool validacionesEM()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Cod_Editorial_E, "Editoriales"))
            {
                validador = false;
                lblEstadoABM_Editorial.Text = "El codigo que ingreso ya existe en la base de datos";
            }
            return validador;
        }


        ///7////////////////////////////// INICIO DE MODULO PROVEEDORES /////////////////////////////////////////


        protected void btnMostrarProveedores_Click(object sender, EventArgs e)
        {
            mostrarProveedores();
        }

        protected void btnBuscarProveedor_Click(object sender, EventArgs e)
        {
            buscarProveedores();
        }

        protected void btnAgregarProveedor_Click(object sender, EventArgs e)
        {
            agregarProveedores();
        }

        protected void btnModificarProveedor_Click(object sender, EventArgs e)
        {
            modificarProveedores();
        }



        public void mostrarProveedores()
        {
            int filas_afectadas = util.Bindear(ref grdProveedor, pro.getConsultaP(0));

            obj.cerrarConexion();

            Session["consulta_actual_proveedor"] = pro.getConsultaP(0);

            lblEstadoABM_Proveedor.Text = "Se encontraron " + filas_afectadas + " registros de proveedores";

            limpiarCamposP();
        }
        public void buscarProveedores()
        {
            pro.codProveedor = "'" + Cod_Proveedor_Pr.Text + "'";
            pro.RSocialProveedor = "'" + RazonSocial_Pr.Text + "'";
            pro.DirecProveedor = "'" + Direccion_Pr.Text + "'";
            pro.ciudadProveedor = "'" + Ciudad_Pr.Text + "'";
            pro.provProveedor = "'" + Provincia.Text + "'";
            pro.cuitProveedor = "'" + CUIT_Pr.Text + "'";
            pro.telProveedor = "'" + Telefono_Pr.Text + "'";
            pro.contactoProveedor = "'" + Contacto_Pr.Text + "'";
            pro.emailProveedor = "'" + Email_Pr.Text + "'";
            pro.EstProveedor = "'" + Activo_Pr.Text + "'";

            pro.setMostrar_WhereP(Convert.ToInt32(ddlCampoBuscarP.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdProveedor, pro.getConsultaP(1));

            obj.cerrarConexion();

            Session["consulta_actual_proveedor"] = pro.getConsultaP(1);

            limpiarCamposP();

            lblEstadoABM_Proveedor.Text = "Se encontraron " + filas_afectadas + " registros de proveedores";
        } 
        public void agregarProveedores()
        {
            if (validacionesP())
            {
                pro.codProveedor = Cod_Proveedor_Pr.Text;
                pro.RSocialProveedor = RazonSocial_Pr.Text;
                pro.DirecProveedor = Direccion_Pr.Text;
                pro.ciudadProveedor = Ciudad_Pr.Text;
                pro.provProveedor = Provincia.Text;
                pro.cuitProveedor = CUIT_Pr.Text;
                pro.telProveedor = Telefono_Pr.Text;
                pro.contactoProveedor = Contacto_Pr.Text;
                pro.emailProveedor = Email_Pr.Text;
                pro.EstProveedor = Activo_Pr.Text;


                pro.setConsultaInsertP();

                obj.Consulta(pro.getConsultaP(2));

                pro.setMostrar_WhereP(Cod_Proveedor_Pr.ID, "'" + Cod_Proveedor_Pr.Text + "'");

                util.Bindear(ref grdProveedor, pro.getConsultaP(1));

                obj.cerrarConexion();

                limpiarCamposP();

                lblEstadoABM_Proveedor.Text = "Registro de proveedor agregado exitosamente";
            }
        }
        public void modificarProveedores()
        {
           if(validacionesPM())
           {
                string tabla = "Proveedores";

                util.modificar(ref Cod_Proveedor_Pr, ref RazonSocial_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Direccion_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Ciudad_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Provincia, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref CUIT_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Telefono_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Contacto_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Email_Pr, tabla);
                util.modificar(ref Cod_Proveedor_Pr, ref Activo_Pr, tabla, true, true);


                pro.setMostrar_WhereP(Cod_Proveedor_Pr.ID, "'" + Cod_Proveedor_Pr.Text + "'");

                util.Bindear(ref grdProveedor, pro.getConsultaP(1));

                obj.cerrarConexion();

                limpiarCamposP();

                lblEstadoABM_Proveedor.Text = "Registro de proveedores modificado exitosamente";
           }
        }

        public void limpiarCamposP()
        {
            util.limpiar(ref Cod_Proveedor_Pr);
            util.limpiar(ref RazonSocial_Pr);
            util.limpiar(ref Direccion_Pr);
            util.limpiar(ref Ciudad_Pr);
            util.limpiar(ref Provincia);
            util.limpiar(ref CUIT_Pr);
            util.limpiar(ref Telefono_Pr);
            util.limpiar(ref Contacto_Pr);
            util.limpiar(ref Email_Pr);
            Activo_Pr.SelectedIndex = 0;
        }

        protected void grdProveedor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdProveedor.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdProveedor, (string)Session["consulta_actual_proveedor"], true);

            obj.cerrarConexion();
        }


        public bool validacionesP()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Cod_Proveedor_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "El codigo que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref RazonSocial_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "La razon social que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref CUIT_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "El CUIT que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref Email_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "El email que ingreso ya existe en la base de datos";
            }

            return validador;
        }
        public bool validacionesPM()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref RazonSocial_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "La razon social que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref CUIT_Pr, "Proveedores"))
            {   
                validador = false;
                lblEstadoABM_Proveedor.Text = "El CUIT que ingreso ya existe en la base de datos";
            }
            if (util.buscarIgualdad(ref Email_Pr, "Proveedores"))
            {
                validador = false;
                lblEstadoABM_Proveedor.Text = "El email que ingreso ya existe en la base de datos";
            }

            return validador;
        }

        ///7////////////////////////////// INICIO DE MODULO LIBROS POR PROVEEDORES /////////////////////////////////////////

        protected void btnMostrarResultados_Click(object sender, EventArgs e)
        {
            mostrarLibrosXProveedor();
        }

        protected void btnBuscarLibrosXProveedores_Click(object sender, EventArgs e)
        {
            buscarLibrosXProveedor();
        }

        protected void btnAgregarLibroXProveedor_Click(object sender, EventArgs e)
        {
            agregarLibrosPorProveedor();
        }

        protected void btnBorrarLibrosXProveedor_Click(object sender, EventArgs e)
        {
            borrarLibrosXProveedor();
        }


        public void mostrarLibrosXProveedor()
        {
            int filas_afectadas = util.Bindear(ref grdLibrosXProveedores, lxp.getConsultalxp(0));

            obj.cerrarConexion();

            Session["consulta_actual_LibrosXProveedor"] = lxp.getConsultalxp(0);

            lblEstadoLibrosXProveedores.Text = "Se encontraron " + filas_afectadas + " registros de libros por proveedor";

            limpiarCamposlxp();
        }
        public void buscarLibrosXProveedor()
        {
            lxp.codLibLxP = "'" + Cod_Libro_LxP.Text + "'";
            lxp.codProvLxP = "'" + Cod_Proovedor_LxP.Text + "'";
            lxp.EstadoLxP = "'" + Activo_LxP.Text + "'";


            lxp.setMostrar_Wherelxp(Convert.ToInt32(ddlCampoBuscarlxp.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdLibrosXProveedores, lxp.getConsultalxp(1));

            obj.cerrarConexion();

            Session["consulta_actual_LibrosXProveedor"] = lxp.getConsultalxp(1);

            limpiarCamposlxp();

            lblEstadoLibrosXProveedores.Text = "Se encontraron " + filas_afectadas + " registros de libros por proveedor";
        }
        public void agregarLibrosPorProveedor()
        {
            if (validacioneslxp()) {

                lxp.codLibLxP = Cod_Libro_LxP.Text;
                lxp.codProvLxP = Cod_Proovedor_LxP.Text;
                lxp.EstadoLxP = Activo_LxP.Text;

                lxp.setConsultaInsertlxp();

                obj.Consulta(lxp.getConsultalxp(2));

                lxp.setMostrar_Wherelxp(Cod_Libro_LxP.ID, "'" + Cod_Libro_LxP.Text + "'");

                util.Bindear(ref grdLibrosXProveedores, lxp.getConsultalxp(1));

                obj.cerrarConexion();

                limpiarCamposlxp();

                lblEstadoLibrosXProveedores.Text = "Registro de libros por proveedor agregado exitosamente";
            }
        }
        public void borrarLibrosXProveedor()
        {
            string tabla = "LibrosPorProveedor";

            util.modificar(ref Cod_Libro_LxP, ref Activo_LxP, tabla, true, true);


            lxp.setMostrar_Wherelxp(Cod_Libro_LxP.ID, "'" + Cod_Libro_LxP.Text + "'");

            util.Bindear(ref grdLibrosXProveedores, lxp.getConsultalxp(1));

            obj.cerrarConexion();

            limpiarCamposlxp();

            lblEstadoLibrosXProveedores.Text = "Registro de libros por proveedor dado de baja exitosamente";
        }


        public void limpiarCamposlxp()
        {
            util.limpiar(ref Cod_Libro_LxP);
            util.limpiar(ref Cod_Proovedor_LxP);
            Activo_LxP.SelectedIndex = 0;
        }

        protected void grdLibrosXProveedores_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdLibrosXProveedores.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdLibrosXProveedores, (string)Session["consulta_actual_LibrosXProveedor"], true);

            obj.cerrarConexion();

        }

        public bool validacioneslxp()
        {
            bool validador = true;
            bool validador1 = true;

            if (util.buscarIgualdad(ref Cod_Libro_LxP, "LibrosPorProveedor"))
            {
                validador = false;
            }        
            if (util.buscarIgualdad(ref Cod_Proovedor_LxP, "LibrosPorProveedor"))
            {
                validador1 = false;
            }
            if(validador1 == false && validador == false)
            {
                validador = false;
                lblEstadoLibrosXProveedores.Text = "El conjunto de codigos que ingreso ya existe en la base de datos";
            }
            
            return validador;
           }



        ///7////////////////////////////// INICIO DE MODULO STOCK /////////////////////////////////////////

        protected void btnMostrarStock_Click(object sender, EventArgs e)
        {
            mostrarStock();
        }

        protected void btnBuscarStock_Click(object sender, EventArgs e)
        {
            buscarStock();
        }

        protected void btnAgregarStock_Click(object sender, EventArgs e)
        {
            agregarStock();
        }

        protected void btnModificarStock_Click(object sender, EventArgs e)
        {
            modificarStock();
        }


        public void mostrarStock()
        {
            int filas_afectadas = util.Bindear(ref grdStock, ST.getConsultaST(0));

            obj.cerrarConexion();

            Session["consulta_actual_Stock"] = ST.getConsultaST(0);

            lblEstadoStock.Text = "Se encontraron " + filas_afectadas + " registros de stocks";

            limpiarCamposST();
        }

        public void buscarStock()
        {
            ST.codlibroStock = "'" + Cod_Libro_S.Text + "'";
            ST.cantStock = "'" + Cantidad_S.Text + "'";
            ST.precStock = "'" + PrecioUnitario_S.Text + "'";
            ST.estadoStock = "'" + Activo_S.Text + "'";


            ST.setMostrar_WhereST(Convert.ToInt32(ddlCampoBuscarST.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdStock, ST.getConsultaST(1));

            obj.cerrarConexion();

            Session["consulta_actual_Stock"] = ST.getConsultaST(1);

            limpiarCamposST();

            lblEstadoStock.Text = "Se encontraron " + filas_afectadas + " registros de STOCK";
        }

        public void agregarStock()
        {
            if (validacionesStock())
            {

                ST.codlibroStock = Cod_Libro_S.Text;
                ST.cantStock = Cantidad_S.Text;
                ST.precStock = PrecioUnitario_S.Text;
                ST.estadoStock = Activo_S.Text;

                ST.setConsultaInsertST();

                obj.Consulta(ST.getConsultaST(2));

                ST.setMostrar_WhereST(Cod_Libro_S.ID, "'" + Cod_Libro_S.Text + "'");

                util.Bindear(ref grdStock, ST.getConsultaST(1));

                obj.cerrarConexion();

                limpiarCamposST();

                lblEstadoStock.Text = "Registro de stock agregado exitosamente";
            }
        }

        public void modificarStock()
        {
            string tabla = "Stock";

            util.modificar(ref Cod_Libro_S, ref Cantidad_S, tabla);
            util.modificar(ref Cod_Libro_S, ref PrecioUnitario_S, tabla);
            util.modificar(ref Cod_Libro_S, ref Activo_S, tabla, true, true);


            ST.setMostrar_WhereST(Cod_Libro_S.ID, "'" + Cod_Libro_S.Text + "'");

            util.Bindear(ref grdStock, ST.getConsultaST(1));

            obj.cerrarConexion();

            limpiarCamposST();

            lblEstadoStock.Text = "Registro de stock modificado exitosamente";
        }



        protected void grdStock_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdStock.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdStock, (string)Session["consulta_actual_Stock"], true);

            obj.cerrarConexion();
        }

        public void limpiarCamposST()
        {
            util.limpiar(ref Cod_Libro_S);
            util.limpiar(ref Cantidad_S);
            util.limpiar(ref PrecioUnitario_S);

            Activo_S.SelectedIndex = 0;
        }

       public bool validacionesStock()
        {
            bool validador = true;

            if (util.buscarIgualdad(ref Cod_Libro_S, "Stock"))
            {
                validador = false;
                lblEstadoStock.Text = "El codigo de libro que ingreso ya existe en la base de datos";
            }
  
            

            return validador;
        }

        ///7////////////////////////////// INICIO DE MODULO CLIENTE /////////////////////////////////////////


        protected void btnMostrarCliente_Click(object sender, EventArgs e)
        {
            mostrarClientes();
        }

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            buscarClientes();
        }


        public void mostrarClientes()
        {
            int filas_afectadas = util.Bindear(ref grdCliente, cl.getConsulta(0));

            obj.cerrarConexion();

            Session["consulta_actual_Cliente"] = cl.getConsulta(0);

            lblEstadoCliente.Text = "Se encontraron " + filas_afectadas + " registros de clientes";

            limpiarCamposcl();
        }

        public void buscarClientes()
        {
            cl.codCliente = "'" + Cod_Cliente_Cl.Text + "'";

            cl.setMostrar_Where(Convert.ToInt32(8));

            int filas_afectadas = util.Bindear(ref grdCliente, cl.getConsulta(1));

            obj.cerrarConexion();

            Session["consulta_actual_Cliente"] = cl.getConsulta(1);

            limpiarCamposcl();

            lblEstadoCliente.Text = "Se encontraron " + filas_afectadas + " registros de clientes";
        }


        public void limpiarCamposcl()
        {
            util.limpiar(ref Cod_Cliente_Cl);
        }

        protected void grdCliente_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdCliente.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdCliente, (string)Session["consulta_actual_Cliente"], true);

            obj.cerrarConexion();
        }


        ///7////////////////////////////// INICIO DE MODULO VENTAS /////////////////////////////////////////


        protected void btnMostrarVentas_Click(object sender, EventArgs e)
        {
            mostrarVentas();
        }

        protected void btnBuscarVentas_Click(object sender, EventArgs e)
        {
            buscarVentas();
        }


        public void mostrarVentas()
        {
            int filas_afectadas = util.Bindear(ref grdVentas, ven.getConsulta(0));

            obj.cerrarConexion();

            Session["consulta_actual_Venta"] = ven.getConsulta(0);

            lblEstadoVentas.Text = "Se encontraron " + filas_afectadas + " registros de ventas";

            limpiarCamposven();
        }
        public void buscarVentas()
        {
            ven.codVenta = "'" + Cod_Venta_V.Text + "'";
            ven.codClienteVenta = "'" + Cod_Cliente_V.Text +"'";

            ven.setMostrar_Where(Convert.ToInt32(ddlCampoBuscarven.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdVentas, ven.getConsulta(1));

            obj.cerrarConexion();

            Session["consulta_actual_Venta"] = ven.getConsulta(1);

            limpiarCamposven();

            lblEstadoVentas.Text = "Se encontraron " + filas_afectadas + " registros de ventas";
        }
 

        public void limpiarCamposven()
        {
            util.limpiar(ref Cod_Venta_V);
        }

        protected void grdVentas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdVentas.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdVentas, (string)Session["consulta_actual_Venta"], true);

            obj.cerrarConexion();
        }


        ///7////////////////////////////// INICIO DE MODULO DETALLE VENTAS /////////////////////////////////////////

        protected void btnMostrarDetalleVentas_Click(object sender, EventArgs e)
        {
            mostrarDetalleVentas();
        }

        protected void btnBuscarDetalleVentas_Click(object sender, EventArgs e)
        {
            buscarDetalleVentas();
        }



        public void mostrarDetalleVentas()
        {
            int filas_afectadas = util.Bindear(ref grdDetalleVentas, dv.getConsulta(0));

            obj.cerrarConexion();

            Session["consulta_actual_DetalleVenta"] = dv.getConsulta(0);

            lblEstadoDetalleVentas.Text = "Se encontraron " + filas_afectadas + " registros de detalle ventas";

            limpiarCamposDV();
        }

        public void buscarDetalleVentas()
        {
            dv.codVentaDV = "'" + Cod_Venta_Dv.Text + "'";
            dv.codLibDV = "'" + Cod_Libro_Dv.Text + "'";
            dv.codProvDV = "'" + Cod_Proveedor_Dv.Text + "'";

            dv.setMostrar_Where(Convert.ToInt32(ddlCampoBuscarvenDV.SelectedValue));

            int filas_afectadas = util.Bindear(ref grdDetalleVentas, dv.getConsulta(1));

            obj.cerrarConexion();

            Session["consulta_actual_DetalleVenta"] = dv.getConsulta(1);

            limpiarCamposDV();

            lblEstadoDetalleVentas.Text = "Se encontraron " + filas_afectadas + " registros de detalle ventas";
        }


        public void limpiarCamposDV()
        {
            util.limpiar(ref Cod_Venta_Dv);
            util.limpiar(ref Cod_Proveedor_Dv);
            util.limpiar(ref Cod_Libro_Dv);
        }

        protected void grdDetalleVentas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdDetalleVentas.PageIndex = e.NewPageIndex;

            util.Bindear(ref grdDetalleVentas, (string)Session["consulta_actual_DetalleVenta"], true);

            obj.cerrarConexion();
        }
    }
}