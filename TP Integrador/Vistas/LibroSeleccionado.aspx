﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibroSeleccionado.aspx.cs" Inherits="vistas.vista1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

   <%-- <meta name="viewport" content="width=1, initial-scale=1.0">--%>

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
        .auto-style12 {
            width: 689px;
        }
        .auto-style14 {
            width: 1022px;
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
           border: 2px groove red;
           background-color:gray;
          
         }

         footer{
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
         }
         


        .auto-style22 {
            width: 262px;
        }
        .auto-style23 {
            margin-top: 0px;
        }
        .auto-style24 {
            width: 291px;
        }

        .auto-style4 {
            font-size: large;
            font-weight: bold;
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
                        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">HOME</asp:HyperLink>
                    </td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlContacto" runat="server" NavigateUrl="~/VistaContacto.aspx">Contacto</asp:HyperLink>
                    </td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlMiCuenta" runat="server">Mi Cuenta</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="background-color:white" class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscar" runat="server" Font-Overline="False" TextMode="Search" Width="359px" placeholder="Titulo, Autor, Categoria"></asp:TextBox>
            <asp:DropDownList ID="ddlFiltro" runat="server">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>Titulo</asp:ListItem>
                <asp:ListItem>Autor</asp:ListItem>
                <asp:ListItem>Categoria</asp:ListItem>
            </asp:DropDownList>
            <strong>
                <asp:Button ID="btnBuscar" runat="server" BackColor="#4375C7" CssClass="auto-style4" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="White" Height="31px" Text="Buscar" Width="82px" />
                    </strong> </td>
                <td>
            <strong>
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp;</strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto  AR$"></asp:Label>
            &nbsp;<strong><asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/Imagenes/carrito logo.jpg" Width="49px" PostBackUrl="~/Carrito.aspx" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style24">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/vistaLibros.aspx">Libros</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/VistaCategorias.aspx">Categorias</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/VistaEditoriales.aspx">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style22"><em>TITULO DEL LIBRO: <asp:Label ID="NombreLibro_Lb" runat="server"></asp:Label>
                    </em> </td>
                <td><em>&nbsp;&nbsp;&nbsp; &nbsp; CATEGORIA:
                    <asp:Label ID="Categoria_Lb" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDITORIAL:&nbsp;<asp:Label ID="Editorial_Lb" runat="server"></asp:Label>
                    </em> </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Image ID="ImagenURL_Lb" runat="server"/>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AR$
                    <asp:Label ID="Precio_Lb" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnComprar" runat="server" CssClass="auto-style23" OnClick="btnComprar_Click" Text="Añadir al carro" Width="128px" />
                </td>
            </tr>
        </table>
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
                    &nbsp;</td>
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
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
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
                <td>Av. Hipólito Yrigoyen 288, B1617 Gral. Pacheco, Provincia de Buenos Aires</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table></footer>
</body>
</html>

