<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelDelAdministrador.aspx.cs" Inherits="Vistas.PanelDelAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            float: left;
            width: 60%;
        }
        .auto-style10 {
            color: #000000;
            font-size: large;
        }
        .auto-style11 {
            margin-left: 19px;
            font-size: large;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 96px;
        }
        .auto-style14 {
            width: 192px;
        }
        .auto-style15 {
            width: 98px;
        }
        .auto-style16 {
            width: 101px;
        }
        .auto-style17 {
            width: 97px;
        }
        .auto-style18 {
            margin-left: 19px;
            font-size: small;
        }
        .auto-style19 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-color: darkgray">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left;width:20%"> &nbsp;
                <asp:RequiredFieldValidator ID="rfvCodigoLibro" runat="server" ControlToValidate="Cod_Libro_Lb" Display="None" ErrorMessage="No ingreso el codigo del libro" ValidationGroup="0"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvCodigoLibro0" runat="server" ControlToValidate="Cod_Libro_Lb" Display="None" ErrorMessage="No ingreso el codigo del libro" ValidationGroup="1"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombreLibro" runat="server" ControlToValidate="NombreLibro_Lb" Display="None" ErrorMessage="No ingreso el nombre/titulo del libro" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvPrecioLibro" runat="server" ControlToValidate="Precio_Lb" Display="None" ErrorMessage="No ingreso el precio del libro" ValidationGroup="1"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvDescripcionLibro" runat="server" ControlToValidate="Descripcion_lb" Display="None" ErrorMessage="No ingreso la descripcion del libro" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvCategoriaLibro" runat="server" ControlToValidate="Categoria_Lb" Display="None" ErrorMessage="No selecciono la categoria del libro" ValidationGroup="1" InitialValue="Seleccionar"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvEditorialLibro" runat="server" ControlToValidate="Editorial_Lb" Display="None" ErrorMessage="No selecciono la editorial del libro" ValidationGroup="1" InitialValue="Seleccionar"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="0" Width="233px" />
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="1" Width="233px" />
                <br />
                <asp:RequiredFieldValidator ID="rfvNombreCategoria" runat="server" ControlToValidate="Nombre_Ca" Display="None" ErrorMessage="No ingreso el nombre de la categoria" ValidationGroup="2"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvNombreCategoria0" runat="server" ControlToValidate="Nombre_Ca" Display="None" ErrorMessage="No ingreso el nombre de la categoria" ValidationGroup="3"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvDescripcionCategoria" runat="server" ControlToValidate="Descripcion_Ca" Display="None" ErrorMessage="No ingreso la descripcion de la categoria" ValidationGroup="3"></asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary3" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="2" Width="233px" />
                <asp:ValidationSummary ID="ValidationSummary4" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="3" Width="233px" />
                <br />
                <asp:RequiredFieldValidator ID="rfvCodigoEditorial" runat="server" ControlToValidate="Cod_Editorial_E" Display="None" ErrorMessage="No ingreso el codigo de la editorial" ValidationGroup="4"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvCodigoEditorial0" runat="server" ControlToValidate="Cod_Editorial_E" Display="None" ErrorMessage="No ingreso el codigo de la editorial" ValidationGroup="5"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombreEditorial" runat="server" ControlToValidate="Nombre_E" Display="None" ErrorMessage="No ingreso el nombre de la editorial" ValidationGroup="5"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary5" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="4" Width="233px" />
                <asp:ValidationSummary ID="ValidationSummary6" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="5" Width="233px" />
                <br />
                <asp:RequiredFieldValidator ID="rfvCodigoProveedor" runat="server" ControlToValidate="Cod_Proveedor_Pr" Display="None" ErrorMessage="No ingreso el codigo del proveedor" ValidationGroup="6"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvCodigoProveedor0" runat="server" ControlToValidate="Cod_Proveedor_Pr" Display="None" ErrorMessage="No ingreso el codigo del proveedor" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ControlToValidate="RazonSocial_Pr" Display="None" ErrorMessage="No ingreso la razon social" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="Direccion_Pr" Display="None" ErrorMessage="No ingreso la direccion" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="Ciudad_Pr" Display="None" ErrorMessage="No ingreso la ciudad" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="Provincia" Display="None" ErrorMessage="No ingreso la provincia" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvCuit" runat="server" ControlToValidate="CUIT_Pr" Display="None" ErrorMessage="No ingreso el CUIT" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="Telefono_Pr" Display="None" ErrorMessage="No ingreso el telefono" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvContacto" runat="server" ControlToValidate="Contacto_Pr" Display="None" ErrorMessage="No ingreso el contacto" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email_Pr" Display="None" ErrorMessage="No ingreso el email" ValidationGroup="7"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email_Pr" Display="None" ErrorMessage="No ha ingresado un email valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="7"></asp:RegularExpressionValidator>
                <br />
                <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="Telefono_Pr" Display="None" ErrorMessage="Solo puede ingresar numeros como telefono" ValidationExpression="^\d+$" ValidationGroup="7"></asp:RegularExpressionValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary7" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="6" Width="233px" />
                <asp:ValidationSummary ID="ValidationSummary8" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="7" Width="233px" />
                <asp:RequiredFieldValidator ID="rfvCodigoLibroXProveedor" runat="server" ControlToValidate="Cod_Libro_LxP" Display="None" ErrorMessage="No ingreso el codigo del libro" ValidationGroup="8"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvCodigoLibroXProveedor0" runat="server" ControlToValidate="Cod_Proovedor_LxP" Display="None" ErrorMessage="No ingreso el codigo del proveedor" ValidationGroup="8"></asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary9" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="8" Width="233px" />
                <asp:RequiredFieldValidator ID="rfvCodigoLibroStock" runat="server" ControlToValidate="Cod_Libro_S" Display="None" ErrorMessage="No ingreso el codigo del libro" ValidationGroup="9"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvCodigoLibroStock0" runat="server" ControlToValidate="Cod_Libro_S" Display="None" ErrorMessage="No ingreso el codigo del libro" ValidationGroup="10"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvCantidad" runat="server" ControlToValidate="Cantidad_S" Display="None" ErrorMessage="No ingreso la cantidad de stock" ValidationGroup="9"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvPrecioStock" runat="server" ControlToValidate="PrecioUnitario_S" Display="None" ErrorMessage="No ingreso el precio unitario" ValidationGroup="9"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary10" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="9" Width="233px" />
                <asp:ValidationSummary ID="ValidationSummary11" runat="server" HeaderText="Errores" ShowMessageBox="True" ShowSummary="False" ValidationGroup="10" Width="233px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_Ca] FROM [Categorias]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_E] FROM [Editoriales]"></asp:SqlDataSource>
                <br />
            </div>
            <div style="background-color:white; " class="auto-style9">
                <div class="auto-style8"> 
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Panel del Administrador logo.png" />
                </div>
                <div class="auto-style7"> 
                        <br />
&nbsp;
                        <br />
&nbsp;&nbsp;
                        <asp:Label ID="lblABM_Libros" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Modulo Libros" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                        <br />&nbsp;&nbsp;
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style13">
                        <strong>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblCodigo" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo"></asp:Label>
                    </strong></td>
                                <td class="auto-style14">
                        <strong>
                        <asp:Label ID="lblNombre" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Nombre/Titulo"></asp:Label>
                    </strong></td>
                                <td class="auto-style15"><strong>
                        <asp:Label ID="lblCategoria" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Categoria"></asp:Label>
                    </strong></td>
                                <td class="auto-style16">
                        <strong>
                        <asp:Label ID="lblEditorial" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Editorial"></asp:Label>
                    </strong></td>
                                <td class="auto-style17">
                        <strong>
                        <asp:Label ID="lblPrecio" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Precio"></asp:Label>
                    </strong></td>
                                <td> <strong>
                        <asp:Label ID="lblEstado" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">&nbsp;
                        <asp:TextBox ID="Cod_Libro_Lb" runat="server" Width="77px"></asp:TextBox>
                                </td>
                                <td class="auto-style14">
                        <asp:TextBox ID="NombreLibro_Lb" runat="server" Width="178px"></asp:TextBox>
                                </td>
                                <td class="auto-style15">
                        <asp:DropDownList ID="Categoria_Lb" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                        </asp:DropDownList>
                                </td>
                                <td class="auto-style16">
                        <asp:DropDownList ID="Editorial_Lb" runat="server">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                        </asp:DropDownList>
                                </td>
                                <td class="auto-style17">
                        <asp:TextBox ID="Precio_Lb" runat="server" Width="79px"></asp:TextBox>
                                </td>
                                <td><asp:DropDownList ID="Activo_Lb" runat="server">
                        <asp:ListItem Value="1">Activo</asp:ListItem>
                        <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
                                </td>
                            </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <br />&nbsp;&nbsp;
                        <strong>
                        <asp:Label ID="lblDescripcion" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Descripcion del libro"></asp:Label>
                        </strong>
                        <br />&nbsp;&nbsp;
                        <asp:TextBox ID="Descripcion_lb" runat="server" Height="58px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                        <strong>
                        <br />
                    <br />
&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarLibros" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar libros" Width="105px" OnClick="btnMostrarLibros_Click" />
&nbsp;<asp:Button ID="btnBuscarLibro" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por:" Width="103px" OnClick="btnBuscarLibro_Click" />
&nbsp;<asp:DropDownList ID="ddlCampoBuscar" runat="server">
                            <asp:ListItem Value="0">Codigo</asp:ListItem>
                            <asp:ListItem Value="1">Nombre/Titulo</asp:ListItem>
                            <asp:ListItem Value="2">Categoria</asp:ListItem>
                            <asp:ListItem Value="3">Editorial</asp:ListItem>
                            <asp:ListItem Value="4">Precio</asp:ListItem>
                            <asp:ListItem Value="5">Estado</asp:ListItem>
                            <asp:ListItem Value="6">Descripcion</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:Button ID="btnAgregarLibro" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="1" OnClick="btnAgregarLibro_Click" />
&nbsp;<asp:Button ID="btnModificarLibro" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Modificar" OnClick="btnModificarLibro_Click" ValidationGroup="0" />
&nbsp;&nbsp;
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoABM_Libro" runat="server" Font-Names="Arial"></asp:Label>
                        <br />
                        <br />
                    <asp:GridView ID="grdLibro" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" Height="200px" Width="255px" AllowPaging="True" OnPageIndexChanging="grdLibro_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblABM_Categoria" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Modulo Categorias" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNombre0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblEstado0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />&nbsp;&nbsp;
                        &nbsp;
                        <asp:TextBox ID="Nombre_Ca" runat="server" Width="122px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:DropDownList ID="Activo_Ca" runat="server">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDescripcion0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Descripcion de la categoria"></asp:Label>
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Descripcion_Ca" runat="server" Height="58px" TextMode="MultiLine" Width="240px"></asp:TextBox>
&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarCategorias" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar categorias" Width="140px" OnClick="btnMostrarCategorias_Click" />
&nbsp;<asp:Button ID="btnBuscarCategoria" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar :" Width="85px" OnClick="btnBuscarCategoria_Click" />
&nbsp; <asp:DropDownList ID="ddlCampoBuscarCa" runat="server">
                            <asp:ListItem Value="0">Nombre/Titulo</asp:ListItem>
                            <asp:ListItem Value="1">Estado</asp:ListItem>
                            <asp:ListItem Value="2">Descripcion</asp:ListItem>
                        </asp:DropDownList>
&nbsp; <asp:Button ID="btnAgregarCategoria" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="3" OnClick="btnAgregarCategoria_Click" />
&nbsp;<asp:Button ID="btnModificarCategoria" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Modificar" OnClick="btnModificarCategoria_Click" />
&nbsp;&nbsp;<br />
                        <br />
                    <asp:GridView ID="grdCategoria" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdCategoria_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoABM_Categoria" runat="server" Font-Names="Arial"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblABM_Editorial" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Modulo Editoriales" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNombre1" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblEstado1" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="lblCodigo0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />&nbsp;&nbsp;
                        &nbsp;
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Nombre_E" runat="server" Width="122px"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="Activo_E" runat="server">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp; 
                        <asp:TextBox ID="Cod_Editorial_E" runat="server" Width="77px"></asp:TextBox>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarEditoriales" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar editoriales" Width="138px" OnClick="btnMostrarEditoriales_Click" />
&nbsp;<asp:Button ID="btnBuscarEditorial" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar :" Width="85px" OnClick="btnBuscarEditorial_Click" />
&nbsp;<asp:DropDownList ID="ddlCampoBuscarE" runat="server">
                            <asp:ListItem Value="0">Codigo</asp:ListItem>
                            <asp:ListItem Value="1">Nombre</asp:ListItem>
                            <asp:ListItem Value="2">Estado</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:Button ID="btnAgregarEditorial" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="5" OnClick="btnAgregarEditorial_Click" />
&nbsp;<asp:Button ID="btnModificarEditorial" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Modificar" OnClick="btnModificarEditorial_Click" />
&nbsp;<br />
                        <br />
                    <asp:GridView ID="grdEditorial" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdEditorial_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoABM_Editorial" runat="server" Font-Names="Arial"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblABM_Proveedores" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Modulo Proveedores" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigo1" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRazonSocial" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Razón Social"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDireccion" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Direccion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCiudad" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Ciudad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblProvincia" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Provincia"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblEstado2" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Proveedor_Pr" runat="server" Width="77px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="RazonSocial_Pr" runat="server" Width="131px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Direccion_Pr" runat="server" Width="131px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Ciudad_Pr" runat="server" Width="131px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Provincia" runat="server" Width="131px"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="Activo_Pr" runat="server">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCuit" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="CUIT"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblTelefono" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Telefono"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblContacto" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Contacto"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblEmail" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="E-mail"></asp:Label>
                    </strong>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:TextBox ID="CUIT_Pr" runat="server" Width="153px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Telefono_Pr" runat="server" Width="153px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Contacto_Pr" runat="server" Width="153px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Email_Pr" runat="server" Width="221px"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarProveedores" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar proveedores" Width="150px" OnClick="btnMostrarProveedores_Click" />
&nbsp;<asp:Button ID="btnBuscarProveedor" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por :" Width="95px" OnClick="btnBuscarProveedor_Click" />
&nbsp;<asp:DropDownList ID="ddlCampoBuscarP" runat="server" Height="16px" Width="84px">
                            <asp:ListItem Value="0">Codigo</asp:ListItem>
                            <asp:ListItem Value="1">Razon social</asp:ListItem>
                            <asp:ListItem Value="2">Direccion</asp:ListItem>
                            <asp:ListItem Value="3">Ciudad</asp:ListItem>
                            <asp:ListItem Value="4">Provincia</asp:ListItem>
                            <asp:ListItem Value="5">Cuit</asp:ListItem>
                            <asp:ListItem Value="6">Telefono</asp:ListItem>
                            <asp:ListItem Value="7">Contacto</asp:ListItem>
                            <asp:ListItem Value="8">Email</asp:ListItem>
                            <asp:ListItem Value="9">Estado</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:Button ID="btnAgregarProveedor" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="7" OnClick="btnAgregarProveedor_Click" />
&nbsp;<asp:Button ID="btnModificarProveedor" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Modificar" OnClick="btnModificarProveedor_Click" />
&nbsp;<br />
                    </strong>
                    <br />
                    <strong>
                    <asp:GridView ID="grdProveedor" runat="server" CssClass="auto-style18" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdProveedor_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoABM_Proveedor" runat="server" Font-Names="Arial"></asp:Label>
                    </strong>
                    <br />&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="lblLibrosPorProveedores" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Libros por Proveedores" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoLibro" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo de Libro"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoProveedor" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo de Proveedor"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblEstado3" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                    </strong>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:TextBox ID="Cod_Libro_LxP" runat="server" Width="136px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Proovedor_LxP" runat="server" Width="167px"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="Activo_LxP" runat="server">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarResultados" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar resultados" Width="150px" OnClick="btnMostrarResultados_Click" />
&nbsp;<asp:Button ID="btnBuscarLibrosXProveedores" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por :" Width="97px" OnClick="btnBuscarLibrosXProveedores_Click" />
&nbsp; <asp:DropDownList ID="ddlCampoBuscarlxp" runat="server" Height="16px" Width="84px">
                            <asp:ListItem Value="0">Codigo de libro</asp:ListItem>
                            <asp:ListItem Value="1">Codigo de proveedor</asp:ListItem>
                            <asp:ListItem Value="2">Estado</asp:ListItem>
                        </asp:DropDownList>
&nbsp; <asp:Button ID="btnAgregarLibroXProveedor" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="8" OnClick="btnAgregarLibroXProveedor_Click" />
&nbsp;<asp:Button ID="btnBorrarLibroXProveedor" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Dar de baja/habilitar" ValidationGroup="8" OnClick="btnBorrarLibrosXProveedor_Click" Width="138px" />
                    <br />
                    <br />
                    <asp:GridView ID="grdLibrosXProveedores" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdLibrosXProveedores_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoLibrosXProveedores" runat="server" Font-Names="Arial"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblStock" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Stocks" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoLibro0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo de Libro"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCantidadStock" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Cantidad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblPrecio0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Precio"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblEstado4" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Estado"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Libro_S" runat="server" Width="136px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cantidad_S" runat="server" Width="92px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="PrecioUnitario_S" runat="server" Width="79px"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="Activo_S" runat="server">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarStock" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar stocks" Width="115px" OnClick="btnMostrarStock_Click" />
&nbsp;<asp:Button ID="btnBuscarStock" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por :" Width="95px" OnClick="btnBuscarStock_Click" />
&nbsp;<asp:DropDownList ID="ddlCampoBuscarST" runat="server" Height="16px" Width="137px">
                            <asp:ListItem Value="0">Codigo de libro</asp:ListItem>
                            <asp:ListItem Value="1">Cantidad de articulos</asp:ListItem>
                            <asp:ListItem Value="2">Precio articulo</asp:ListItem>
                            <asp:ListItem Value="3">Activo</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:Button ID="btnAgregarStock" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Agregar" ValidationGroup="9" OnClick="btnAgregarStock_Click" />
&nbsp;<asp:Button ID="btnModificarStock" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Modificar" OnClick="btnModificarStock_Click" />
&nbsp;<br />
                    <br />
                    <asp:GridView ID="grdStock" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdStock_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoStock" runat="server" Font-Names="Arial"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCliente" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Clientes" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoCliente" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Cliente_Cl" runat="server" Width="77px"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarCliente" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar clientes" Width="115px" OnClick="btnMostrarCliente_Click" />
&nbsp;<asp:Button ID="btnBuscarCliente" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por codigo" Width="134px" OnClick="btnBuscarCliente_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="grdCliente" runat="server" CssClass="auto-style18" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdCliente_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoCliente" runat="server" Font-Names="Arial"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblVentas" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Ventas" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoVenta" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo de Venta"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoCliente0" runat="server" CssClass="auto-style3" Font-Names="Candara Light" Text="Codigo de Cliente"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Venta_V" runat="server" Width="136px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Cliente_V" runat="server" Width="136px"></asp:TextBox>
                    &nbsp;<asp:DropDownList ID="ddlCampoBuscarven" runat="server" Height="16px" Width="137px">
                            <asp:ListItem Value="0">Codigo de venta</asp:ListItem>
                            <asp:ListItem Value="1">Codigo de cliente</asp:ListItem>
                        </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarVentas" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar ventas" Width="115px" OnClick="btnMostrarVentas_Click" />
&nbsp;<asp:Button ID="btnBuscarVentas" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por codigo" Width="134px" OnClick="btnBuscarVentas_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="grdVentas" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdVentas_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblEstadoVentas" runat="server" Font-Names="Arial"></asp:Label>
                        <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDetalleVentas" runat="server" BackColor="#FFCC00" CssClass="auto-style10" Font-Names="Bahnschrift SemiBold" Text="Detalle Ventas" BorderColor="#FF6600" BorderWidth="5px"></asp:Label>
                        <br />
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoVenta0" runat="server" CssClass="auto-style19" Font-Names="Candara Light" Text="Codigo de Venta"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="lblCodigoCliente1" runat="server" CssClass="auto-style19" Font-Names="Candara Light" Text="Codigo de Proveedor"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCodigoLibro1" runat="server" CssClass="auto-style19" Font-Names="Candara Light" Text="Codigo de Libro"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Venta_Dv" runat="server" Width="136px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Proveedor_Dv" runat="server" Width="144px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Cod_Libro_Dv" runat="server" Width="122px"></asp:TextBox>
                    &nbsp; <asp:DropDownList ID="ddlCampoBuscarvenDV" runat="server" Height="22px" Width="123px">
                            <asp:ListItem Value="0">Codigo de venta</asp:ListItem>
                            <asp:ListItem Value="1">Codigo de libro</asp:ListItem>
                            <asp:ListItem Value="2">Codigo de proveedor</asp:ListItem>
                        </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarDetalleVentas" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Mostrar detalle ventas" Width="153px" OnClick="btnMostrarDetalleVentas_Click" />
&nbsp;<asp:Button ID="btnBuscarDetalleVentas" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style5" Text="Buscar por :" Width="109px" OnClick="btnBuscarDetalleVentas_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="grdDetalleVentas" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" AllowPaging="True" OnPageIndexChanging="grdDetalleVentas_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="lblEstadoDetalleVentas" runat="server" Font-Names="Arial"></asp:Label>
                    </strong>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp; </strong>
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
