<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcesoCompraCarro.aspx.cs" Inherits="Vistas.ProcesoCompraCarro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            margin-top: 0px;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
             <div style="float:left; width:30%"> &nbsp;</div>
            <div style="background-color:white; float:left; width:40%" class="auto-style1"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Proceso de compra del Carrito"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje7" runat="server" Font-Names="Sitka Subheading" Text="DNI"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="DNI_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" ViewStateMode="Enabled"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="DNI_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="DNI_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblErrorDNI" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje8" runat="server" Font-Names="Sitka Subheading" Text="Telefono"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="NumeroTelefono_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" ViewStateMode="Enabled"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombre0" runat="server" ControlToValidate="NumeroTelefono_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="NumeroTelefono_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
&nbsp;<br />
                <asp:Label ID="lblErrorTelefono" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje9" runat="server" Font-Names="Sitka Subheading" Text="Fecha de Nacimiento"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="FechaNacimiento_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Date" max="9999-12-31" ViewStateMode="Enabled"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombre1" runat="server" ControlToValidate="FechaNacimiento_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblErrorFecha" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje10" runat="server" Font-Names="Sitka Subheading" Text="Forma de Pago"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlFormaDePago" runat="server">
                    <asp:ListItem>Efectivo</asp:ListItem>
                    <asp:ListItem>Tarjeta</asp:ListItem>
                    <asp:ListItem>RapiPago</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnComprar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style6" Text="Efectuar compra del carro" OnClick="btnComprar_Click" />
                <br />
                <br />
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="Carrito.aspx">Volver</asp:HyperLink>
                </strong>
                <br />
                <br />
                <asp:Label ID="lblMensaje1" runat="server" Font-Names="Calibri Light" Text="Sepa que al pagar en efectivo, debera presentarse en la sucursal de la tienda ubicada en &quot;Av. Hipólito Yrigoyen 288, B1617 Gral. Pacheco, Provincia de Buenos Aires&quot;" Width="350px" CssClass="auto-style5"></asp:Label>
                <br />
        </div>
    </form>
</body>
</html>
