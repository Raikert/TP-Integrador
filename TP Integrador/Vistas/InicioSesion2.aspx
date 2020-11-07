<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion2.aspx.cs" Inherits="Vistas.InicioSesion2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style6 {
            font-size: medium;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="height:955px"> 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style=" background-color:white;float:left; width:30%;height:500px" class="auto-style7"> 
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style6" Font-Names="Segoe UI" ForeColor="#0033CC" Text="Hola, "></asp:Label>
                <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style6" Font-Names="Segoe UI" ForeColor="#0033CC" Text="&quot;Nombre de Usuario&quot;"></asp:Label>
                <asp:Label ID="lblMensaje1" runat="server" CssClass="auto-style6" Font-Names="Segoe UI" ForeColor="#0033CC" Text=", Ingrese su contraseña por favor:"></asp:Label>
                <br />
                <br />
                <asp:TextBox style="text-align: center" ID="txtEmail" runat="server" Width="280px" placeholder="Ingrese aqui su contraseña" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Comic Sans MS" Height="22px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style2" ForeColor="Black" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                </strong>
                <asp:LinkButton ID="lbRestablecerContraseña" runat="server" ForeColor="#CC6600" OnClick="lbRestablecerContraseña_Click">¿Olvidó su contraseña?</asp:LinkButton>
                <strong>
                <br />
                <br />
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="InicioSesion1.aspx">Volver</asp:HyperLink>
                <br />
                </strong> </div>
        </div>
    </form>
</body>
</html>
