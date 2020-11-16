<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaCategorias.aspx.cs" Inherits="vistas.VistaCategorias" %>

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
        .auto-style11 {
            margin-left: 0px;
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
           border: 2px groove blue;
           background-color:gray;
          
         }

         footer{
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
         }
         


        .auto-style25 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style26 {
            text-align: center;
            width: 237px;
            height: 7px;
        }
        .auto-style27 {
            width: 247px;
            height: 7px;
        }
        .auto-style28 {
            font-size: xx-large;
        }
        .auto-style30 {
            width: 100%;
            margin-top: 1px;
            margin-bottom: 0px;
        }
        .auto-style31 {
            margin-top: 0px;
        }
        .auto-style32 {
            height: 7px;
        }
        .auto-style33 {
            width: 291px;
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
                        <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
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
                            <td class="auto-style33">
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style25"><strong>LISTADO DE LAS DISTINTAS CATEGORIAS A DISPOSICION </strong></td>
            </tr>
        </table>
        <br />
        <table class="auto-style30">
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style26">
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style31" DataKeyField="Nombre_Ca" DataSourceID="dsCategoriasC" Width="316px">
                        <ItemTemplate>
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("Nombre_Ca") %>'></asp:Label>
                            </em><br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; </td>
                <td class="auto-style32"></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="dsCategoriasC" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_Ca] FROM [Categorias] WHERE ([Activo_Ca] = @Activo_Ca)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="Activo_Ca" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
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
                <td>&nbsp;</td>
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
