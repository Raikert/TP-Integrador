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

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            obj = new NegocioGenerales();

            lib = new Libro();
            cat = new Categoria();
            util = new Utilidades();
            edit = new Editorial();
            pro = new Proveedor();

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
        public void modificarEditoriales()
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
        public void modificarProveedores()
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
    }
}