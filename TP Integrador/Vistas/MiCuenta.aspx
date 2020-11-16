<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiCuenta.aspx.cs" Inherits="Vistas.MiCuenta" %>

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
        .auto-style8 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            color: rgb(230, 39, 65);
            letter-spacing: normal;
        }
        .auto-style9 {
            width: 371px;
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
           border: 2px groove pink;
           background-color:gray;
          
         }

         footer{
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
         }
         


        .auto-style29 {
            width: 291px;
        }

        .auto-style30 {
            font-size: xx-large;
            text-decoration: underline;
        }

        .auto-style31 {
            width: 447px;
            font-size: large;
            text-decoration: underline;
        }
        .auto-style32 {
            width: 302px;
        }
        .auto-style33 {
            width: 447px;
            font-size: large;
            text-decoration: underline;
            height: 24px;
        }
        .auto-style34 {
            height: 24px;
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
                        <asp:HyperLink ID="hlMiCuenta" runat="server" NavigateUrl="~/MiCuenta.aspx">Mi Cuenta</asp:HyperLink>
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
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style29">
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style30">Datos personales</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style31"><strong>Nombre y Apellido:<br />
                    </strong></td>
                <td>
                    <asp:Label ID="lblNombre_Apellido_Micuenta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33"><strong>DNI:<br />
                    </strong></td>
                <td class="auto-style34">
                    <asp:Label ID="lbldniMicuenta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Email/Correo:<br />
                    </strong></td>
                <td>
                    <asp:Label ID="EmailcorreoMicuenta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Fecha de nacimiento:<br />
                    </strong></td>
                <td>
                    <asp:Label ID="FechadenacimientoMicuenta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Contraseña:<br />
                    </strong></td>
                <td>
                    <asp:Label ID="Contraseña" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Telefono:</strong></td>
                <td>
                    <asp:Label ID="Telefono" runat="server"></asp:Label>
                    <br />
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
        <br />
        <br />
        <div style="background-color:gray" class="auto-style21">       </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
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
