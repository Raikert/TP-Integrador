<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario2.aspx.cs" Inherits="Vistas.RegistroUsuario2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-weight: bold;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:darkgray; height:1000px">
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style="background-color:white;float:left;width:30%;height:900px" class="auto-style1">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Por favor, complete los siguientes datos para crear una nueva cuenta:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje1" runat="server" Font-Names="Sitka Subheading" Text="E-mail"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtEmail" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Bahnschrift">No ha ingresado email correcto</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje2" runat="server" Font-Names="Sitka Subheading" Text="Repetir E-mail"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtRepetirEmail" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvRepetirEmail" runat="server" ControlToValidate="txtRepetirContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtRepetirEmail" CssClass="auto-style3" Font-Names="Bahnschrift" ForeColor="Red">El email ingresado no coincide</asp:CompareValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje3" runat="server" Font-Names="Sitka Subheading" Text="Nombre"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtNombre" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje4" runat="server" Font-Names="Sitka Subheading" Text="Apellido"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtApellido" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje5" runat="server" Font-Names="Sitka Subheading" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblMensaje6" runat="server" Font-Names="Sitka Subheading" Text="Repetir Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtRepetirContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" CssClass="auto-style3" Font-Names="Bahnschrift" ForeColor="Red">La contraseña ingresada no coincide</asp:CompareValidator>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style5" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                <br />
                </strong>
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="RegistroUsuario1.aspx">Volver</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
