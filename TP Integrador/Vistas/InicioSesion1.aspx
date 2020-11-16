<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion1.aspx.cs" Inherits="Vistas.InicioSesion1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            float: left;
            width: 30%;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style2 {
            font-weight: bold;
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
            <div style="float:left;width:35%"> &nbsp;</div>
            <div style="background-color:white;" class="auto-style1">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Por favor, complete los siguientes datos para iniciar sesion:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje3" runat="server" Font-Names="Sitka Subheading" Text="E-mail"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtEmail" runat="server" Width="280px" placeholder="Ingrese aqui su email" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Comic Sans MS" Height="22px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Bahnschrift">No ha ingresado email correcto</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje2" runat="server" Font-Names="Sitka Subheading" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtContraseña" runat="server" Width="280px" placeholder="Ingrese aqui su contraseña" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Comic Sans MS" Height="22px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style2" ForeColor="Black" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                <asp:LinkButton ID="lbRestablecerContraseña" runat="server" ForeColor="#CC6600" OnClick="lbRestablecerContraseña_Click">¿Olvidó su contraseña?</asp:LinkButton>
                <br />
                <br />
                </strong>
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="Home.aspx">Volver</asp:HyperLink>
                <strong>
                <br />
                <br />
                </strong>
                <asp:Label ID="lblMensaje1" runat="server" Font-Names="Calibri Light" Text="Si usted ya ha creado una cuenta anteriormente, asegurese de utilizar la misma dirección de email para recuperar los datos de su cuenta" Width="350px"></asp:Label>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
