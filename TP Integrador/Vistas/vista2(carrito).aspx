﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vista2(carrito).aspx.cs" Inherits="vistas.vista2_carrito_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=1, initial-scale=1.0">
    <title></title>
    <style type="text/css">

        .centrado{
            margin: 0 auto;
            padding: 0 1em;
            }

        @media screen and (min-width: 52em) {
            .centrado {
                max-width: 52em;
            }
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            width: 634px;
        }
        .auto-style3 {
            width: 634px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 369px;
        }
        .auto-style8 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            color: rgb(230, 39, 65);
            letter-spacing: normal;
        }
        .auto-style9 {
            width: 371px;
        }
        .auto-style10 {
            color: #00FF00;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 689px;
        }
        .auto-style14 {
            width: 1022px;
        }
        .auto-style16 {
            width: 812px;
        }
        

        #form1{
           /* margin-left: 150px;        
            margin-right: 150px;
            padding: 0 1em;*/
            background-color: white;
        }

        body{
            background-color:gray;
        }


        .auto-style20 {
            width: 77px;
        }


        .auto-style21 {
            width: 100%;
            height: 10px;
            
        }

        .hl1{
           justify-content: center;
           align-items: center;
           border: 2px groove gray;
        }

         .hl2 td{
           justify-content: center;
           align-items: center;
           border: 2px groove black;
           background-color:gray;
          
         }

         footer{
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
         }
         
}

        .auto-style22 {
            width: 381px;
        }
        .auto-style23 {
            width: 100%;
            margin-bottom: 0px;
        }

        .auto-style24 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            width: 198px;
        }
        .auto-style25 {
            width: 198px;
        }

        </style>
</head>
<body class="centrado">
   
    <form class="centrado" id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr id="hl1">
                    <td class="auto-style3">&nbsp;</td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlHome" runat="server">HOME</asp:HyperLink>
                    </td>
                    <td class="auto-style24">
                        <asp:HyperLink ID="hlContacto" runat="server">Contacto</asp:HyperLink>
                    </td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlMiCuenta" runat="server">Mi Cuenta</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>TITULO</strong></td>
                    <td>&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="background-color:white" class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscar" runat="server" Width="400px" CssClass="auto-style11"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlBuscar" runat="server" Height="16px" Width="101px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" BackColor="#3399FF" CssClass="auto-style11" ForeColor="White" Height="23px" Text="Buscar" Width="75px" />
&nbsp; </td>
                <td>
                    <asp:Label ID="lblNumeroCarro" runat="server"></asp:Label>
&nbsp;productos <span class="auto-style10">AR$ </span>
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td>
                                <asp:HyperLink ID="hlLibros" runat="server">Libros</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlCategorias" runat="server">Categorias</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlEditoriales" runat="server">Editoriales</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlStock" runat="server">En stock</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style16"><span class="auto-style5">Mi carrito</span></td>
                <td><span class="auto-style5">
                    <asp:Button ID="btnIniciarCompra" runat="server" BorderStyle="Double" ForeColor="Red" Text="Iniciar proceso de compra" />
                    </span></td>
            </tr>
        </table>
        <br />
        <table class="auto-style23">
            <tr>
                <td class="auto-style22">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Cod_Libro_Lb" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <span style="">Precio_Lb:
                            <asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                            <br />
                            NombreLibro_Lb:
                            <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>' />
                            <br />
                            Cod_Libro_Lb:
                            <asp:Label ID="Cod_Libro_LbLabel" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                            <br />
                            ImagenURL_Lb:
                            <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                            <br />
                            Categoria_Lb:
                            <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>' />
<br />Editorial_Lb:
                            <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>' />
                            <br />
                            <br />
                            </span>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <span style="">Precio_Lb:
                            <asp:TextBox ID="Precio_LbTextBox" runat="server" Text='<%# Bind("Precio_Lb") %>' />
                            <br />
                            NombreLibro_Lb:
                            <asp:TextBox ID="NombreLibro_LbTextBox" runat="server" Text='<%# Bind("NombreLibro_Lb") %>' />
                            <br />
                            Cod_Libro_Lb:
                            <asp:Label ID="Cod_Libro_LbLabel1" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                            <br />
                            ImagenURL_Lb:
                            <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                            <br />
                            Categoria_Lb:
                            <asp:TextBox ID="Categoria_LbTextBox" runat="server" Text='<%# Bind("Categoria_Lb") %>' />
                            <br />
                            Editorial_Lb:
                            <asp:TextBox ID="Editorial_LbTextBox" runat="server" Text='<%# Bind("Editorial_Lb") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            <br /><br /></span>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No se han devuelto datos.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <span style="">Precio_Lb:
                            <asp:TextBox ID="Precio_LbTextBox" runat="server" Text='<%# Bind("Precio_Lb") %>' />
                            <br />NombreLibro_Lb:
                            <asp:TextBox ID="NombreLibro_LbTextBox" runat="server" Text='<%# Bind("NombreLibro_Lb") %>' />
                            <br />Cod_Libro_Lb:
                            <asp:TextBox ID="Cod_Libro_LbTextBox" runat="server" Text='<%# Bind("Cod_Libro_Lb") %>' />
                            <br />ImagenURL_Lb:
                            <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                            <br />
                            Categoria_Lb:
                            <asp:TextBox ID="Categoria_LbTextBox" runat="server" Text='<%# Bind("Categoria_Lb") %>' />
                            <br />
                            Editorial_Lb:
                            <asp:TextBox ID="Editorial_LbTextBox" runat="server" Text='<%# Bind("Editorial_Lb") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                            <br /><br /></span>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <span style="">Precio_Lb:
                            <asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                            <br />
                            NombreLibro_Lb:
                            <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>' />
                            <br />
                            Cod_Libro_Lb: <asp:Label ID="Cod_Libro_LbLabel" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                            <br />
                            ImagenURL_Lb:
                            <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                            <br />
                            Categoria_Lb:
                            <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>' />
                            <br />
                            Editorial_Lb:
                            <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>' />
                            <br />
                            <br />
                            </span>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <span style="">Precio_Lb:
                            <asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                            <br />
                            NombreLibro_Lb:
                            <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>' />
                            <br />
                            Cod_Libro_Lb:
                            <asp:Label ID="Cod_Libro_LbLabel" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                            <br />
                            ImagenURL_Lb:
                            <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                            <br />
                            Categoria_Lb:
                            <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>' />
<br />Editorial_Lb:
                            <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>' />
                            <br />
                            <br />
                            </span>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="62px">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AR$ 150
                    <asp:Label ID="lblPrecio" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton ID="lbEliminar" runat="server">Eliminar</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="background-color:gray" class="auto-style21">       </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">MEDIOS DE PAGO</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td><span class="auto-style10">Subtotal AR$</span>
                    <asp:Label ID="lblTotal0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Efectivo-Tarjeta Visa o Master Card- Rapi Pago</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Button ID="btnIniciarCompra0" runat="server" BorderStyle="Double" CssClass="auto-style11" ForeColor="Red" Text="Iniciar proceso de compra" Height="27px" Width="170px" />
                </td>
            </tr>
        </table>
&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <%--  <table style="background-color:gray" class="auto-style15">
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Copyright © 2019-2020<span>&nbsp;</span></span><span class="auto-style8" style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Libra</span><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>S.A.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td><strong><em>Email: Libros.Libra@gmail.com</em></strong></td>
            </tr>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">TODOS LOS DERECHOS RESERVADOS.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">JURAMENTO 2052 (D4499CNN CABA - CUIT Nº: 25-14909745-7</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Precio_Lb], [NombreLibro_Lb], [Cod_Libro_Lb], [ImagenURL_Lb], [Categoria_Lb], [Editorial_Lb] FROM [Libros]"></asp:SqlDataSource>
    </form>
    <br />
    
    <footer class="centrado">  <table>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Copyright © 2019-2020<span>&nbsp;</span></span><span class="auto-style8" style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Libra</span><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>S.A.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td><strong><em>Email: Libros.Libra@gmail.com</em></strong></td>
            </tr>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">TODOS LOS DERECHOS RESERVADOS.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">JURAMENTO 2052 (D4499CNN CABA - CUIT Nº: 25-14909745-7</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table></footer>
</body>
</html>