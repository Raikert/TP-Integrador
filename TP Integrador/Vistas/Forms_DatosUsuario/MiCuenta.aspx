<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiCuenta.aspx.cs" Inherits="Vistas.MiCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <%-- <meta name="viewport" content="width=1, initial-scale=1.0">--%>

    <title></title>
    <style type="text/css">
        .centrado {
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

        .auto-style29 {
            text-align: center;
        }

        #form1 {
            /* margin-left: 150px;        
            margin-right: 150px;
            padding: 0 1em;*/
            background-color: white;
        }

        body {
            background-color: gray;
        }


        .auto-style20 {
            width: 77px;
        }


        .auto-style21 {
            width: 100%;
            height: 10px;
        }

        .hl1 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
        }

        .hl2 td {
            justify-content: center;
            align-items: center;
            border: 2px groove black;
            background-color: antiquewhite;
        }

        footer {
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
        }



        .auto-style30 {
            font-size: xx-large;
            text-decoration: underline;
        }

        .auto-style32 {
            width: 302px;
        }

        .auto-style35 {
            width: 166px;
            font-size: large;
            height: 45px;
        }

        .auto-style36 {
            height: 45px;
        }

        .auto-style37 {
            width: 166px;
            font-size: large;
            height: 44px;
        }

        .auto-style38 {
            height: 44px;
        }

        .auto-style42 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            text-align: center;
        }
        .auto-style43 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            text-align: center;
            width: 129px;
        }
        .auto-style45 {
            width: 21px;
        }
        .auto-style46 {
            width: 129px;
        }
    </style>
</head>
<body class="centrado">

    <form class="centrado" id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr id="hl1">
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style45"></td>
                    <td class="auto-style43">
                        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">Volver al Home</asp:HyperLink>
                    </td>
                    <td class="auto-style42"><asp:HyperLink ID="hlContacto" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaContacto.aspx">Contacto</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
                    </td>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="background-color: white" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style29" style="justify-content: center; align-items: center;">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/vistaLibros.aspx" Font-Names="Constantia">Libros</asp:HyperLink>
                            </td>
                            <td class="auto-style29">
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx" Font-Names="Constantia">Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style29">
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaEditoriales.aspx" Font-Names="Constantia">Editoriales</asp:HyperLink>
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
                <td class="auto-style37"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre:<br />
                </strong></td>
                <td class="auto-style38">
                    <asp:TextBox ID="Nombre_Cl" runat="server" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="lblNombre_Micuenta" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarNombre" runat="server" ForeColor="#CC6600" OnClick="hlCambiar_Click">cambiar</asp:LinkButton>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="Nombre_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apellido:<br />
                </strong></td>
                <td class="auto-style36">
                    <asp:TextBox ID="Apellido_Cl" runat="server" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="lblApellido_Micuenta" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarApellido" runat="server" ForeColor="#CC6600" OnClick="hlCambiarApellido_Click">cambiar</asp:LinkButton>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="Apellido_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DNI:<br />
                </strong></td>
                <td class="auto-style36">
                    <asp:TextBox ID="DNI_Cl" runat="server" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="lbldniMicuenta" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarDNI" runat="server" ForeColor="#CC6600" OnClick="hlCambiarDNI_Click" ValidationGroup="0">cambiar</asp:LinkButton>
                    &nbsp;<asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="DNI_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="0"></asp:RegularExpressionValidator>
                    <asp:Label ID="lblErrorDNI" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Email/Correo:<br />
                </strong></td>
                <td class="auto-style36">
                    <asp:TextBox ID="Email_Cl" runat="server" Visible="False" Width="232px"></asp:TextBox>
                    <asp:Label ID="EmailcorreoMicuenta" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarEmail" runat="server" ForeColor="#CC6600" OnClick="hlCambiarEmail_Click" ValidationGroup="1">cambiar</asp:LinkButton>
                    &nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email_Cl" CssClass="auto-style3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Bahnschrift" Font-Size="10.5pt" ValidationGroup="1">No ha ingresado email correcto</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lblEmailRepetido" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>Fecha de nacimiento:<br />
                </strong></td>
                <td class="auto-style36">
                    <asp:TextBox ID="FechaNacimiento_Cl" runat="server" TextMode="Date" max="9999-12-31" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="FechadenacimientoMicuenta" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarFec" runat="server" ForeColor="#CC6600" OnClick="hlCambiarFec_Click">cambiar</asp:LinkButton>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contraseña:</strong></td>
                <td class="auto-style36">
                    <asp:TextBox ID="Contraseña_Cl" runat="server" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="Contraseña" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarContraseña" runat="server" ForeColor="#CC6600" OnClick="hlCambiarContraseña_Click">cambiar</asp:LinkButton>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="Contraseña_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telefono:</strong></td>
                <td class="auto-style36"><asp:TextBox ID="NumeroTelefono_Cl" runat="server" Visible="False" Width="150px"></asp:TextBox>
                    <asp:Label ID="Telefono" runat="server"></asp:Label>
                    &nbsp;<asp:LinkButton ID="hlCambiarTelefono" runat="server" ForeColor="#CC6600" OnClick="hlCambiarTelefono_Click" ValidationGroup="2">cambiar</asp:LinkButton>
                    &nbsp;<asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="NumeroTelefono_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="2"></asp:RegularExpressionValidator>
                    <asp:Label ID="lblErrorTelefono" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
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
        <div style="background-color: gray" class="auto-style21"></div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
    <br />

    <footer class="centrado">
        <table>
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
        </table>
    </footer>
</body>
</html>
