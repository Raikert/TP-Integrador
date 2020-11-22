<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoMiCuenta.aspx.cs" Inherits="Vistas.Forms_DatosUsuario.IngresoMiCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style2 {
            font-weight: bold;
        }
        </style>
</head>
<body style="background-color: darkgray">
    <form id="form1" runat="server">
        <div style="height: 1000px">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float: left; width: 35%">
                &nbsp;</div>
            <div style="background-color: white; float: left; width: 30%" class="auto-style1">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Por favor, reingrese su contraseña para acceder a los datos de su cuenta:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje2" runat="server" Font-Names="Sitka Subheading" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtContraseña" runat="server" Width="280px" placeholder="Ingrese aqui su contraseña" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Comic Sans MS" Height="22px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblErrorContraseña" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style2" ForeColor="Black" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                <br />
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="~/Home.aspx">Volver</asp:HyperLink>
                <br />
                <br />
                </strong>
            </div>
        </div>
    </form>
</body>
</html>
