<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestablecerContraseña.aspx.cs" Inherits="Vistas.RestablecerContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            float: left;
            width: 40%;
            background-color:#FAE8BF;
        }

        body{
             background-image: url("/Imagenes/libros.jpg");
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:500px" class="auto-style4"> 
            <div style="float:left;width:30%"> &nbsp;</div>
            <div class="auto-style8">
                <div class="auto-style7"> 
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                </div>
                <div class="auto-style7"> 
                    <br />
                    <strong>
                    <asp:Label ID="lblMensaje2" runat="server" Font-Names="Malgun Gothic" Text="CAMBIAR CONTRASEÑA"></asp:Label>
                    <br />
                    <br />
                    </strong>
                <asp:Label ID="lblMensaje3" runat="server" Font-Names="Sitka Subheading" Text="Nueva Contraseña:"></asp:Label>
                    <br />
                <asp:TextBox style="text-align: center" ID="Contraseña_Cl" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNuevaContraseña" runat="server" ControlToValidate="Contraseña_Cl" CssClass="auto-style5" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblMensaje4" runat="server" Font-Names="Sitka Subheading" Text="Repetir nueva contraseña:"></asp:Label>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox style="text-align: center" ID="txtRepetirNuevaContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:RequiredFieldValidator ID="rfvRepetirNuevaContraseña" runat="server" ControlToValidate="txtRepetirNuevaContraseña" CssClass="auto-style5" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cvRepetirNuevaContraseña" runat="server" ControlToCompare="Contraseña_Cl" ControlToValidate="txtRepetirNuevaContraseña" CssClass="auto-style5" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0" Font-Size="10.5pt">La contraseña ingresada no coincide</asp:CompareValidator>
                    <br />
                    <br /><strong>
                    <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style6" Text="Continuar &gt;" ValidationGroup="0" OnClick="btnContinuar_Click" />
                    <br />
                    <br />
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="~/Forms_DatosUsuario/InicioSesion1.aspx">Volver</asp:HyperLink>
                    </strong>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
