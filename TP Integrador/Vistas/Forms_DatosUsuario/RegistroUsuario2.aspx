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
        .auto-style6 {
            height: 955px;
        }
        </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="background-color:darkgray; " class="auto-style6">
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style="background-color:white;float:left;width:30%" class="auto-style1">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Por favor, complete los siguientes datos para crear una nueva cuenta:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje3" runat="server" Font-Names="Sitka Subheading" Text="Nombre"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtNombre" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblErrorNombre" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje4" runat="server" Font-Names="Sitka Subheading" Text="Apellido"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtApellido" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblErrorApellido" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje7" runat="server" Font-Names="Sitka Subheading" Text="DNI"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="DNI_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="DNI_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="DNI_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblErrorDNI" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje8" runat="server" Font-Names="Sitka Subheading" Text="Telefono"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="NumeroTelefono_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="NumeroTelefono_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="NumeroTelefono_Cl" CssClass="auto-style3" ErrorMessage="Solo puede ingresar numeros" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
&nbsp;<br />
                <asp:Label ID="lblErrorTelefono" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje9" runat="server" Font-Names="Sitka Subheading" Text="Fecha de Nacimiento"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="FechaNacimiento_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Date" min="1850-01-01" max="2140-12-31"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="FechaNacimiento_Cl" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblMensaje5" runat="server" Font-Names="Sitka Subheading" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                <br />
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblErrorContraseña" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMensaje6" runat="server" Font-Names="Sitka Subheading" Text="Repetir Contraseña"></asp:Label>
                <br />
                <asp:TextBox style="text-align: center" ID="txtRepetirContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" CssClass="auto-style3" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt">La contraseña ingresada no coincide</asp:CompareValidator>
                <br />
                <br />
                <strong>
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="RegistroUsuario1.aspx">Volver</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style5" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                </strong>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
