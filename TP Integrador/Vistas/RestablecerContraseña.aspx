<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestablecerContraseña.aspx.cs" Inherits="Vistas.RestablecerContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }

        .auto-style3 {
            font-size: large;
        }

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
    </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="background-color:darkgray;height:500px" class="auto-style4"> 
            <div style="float:left;width:30%"> &nbsp;</div>
            <div style="background-color:white;float:left;width:40%;height:500px">
                <div class="auto-style1">
                    <asp:Label ID="lblMensaje" runat="server" Text="Hola, "></asp:Label>
                    <strong>
                    <asp:Label ID="lblUsuario" runat="server" Text="&quot;Nombre de Usuario&quot;"></asp:Label>
                    </strong>&nbsp;<asp:LinkButton ID="lbSalir" runat="server" CssClass="auto-style3" Font-Names="Tahoma" ForeColor="Black" OnClick="lbSalir_Click">(Salir)</asp:LinkButton>
                </div>
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
                <asp:TextBox style="text-align: center" ID="txtNuevaContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvNuevaContraseña" runat="server" ControlToValidate="txtNuevaContraseña" CssClass="auto-style5" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="lblMensaje4" runat="server" Font-Names="Sitka Subheading" Text="Repetir nueva contraseña:"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox style="text-align: center" ID="txtRepetirNuevaContraseña" runat="server" Height="20px" Width="300px" CssClass="auto-style4" Font-Names="Calibri"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:RequiredFieldValidator ID="rfvRepetirNuevaContraseña" runat="server" ControlToValidate="txtRepetirNuevaContraseña" CssClass="auto-style5" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cvRepetirNuevaContraseña" runat="server" ControlToCompare="txtNuevaContraseña" ControlToValidate="txtRepetirNuevaContraseña" CssClass="auto-style5" Font-Names="Bahnschrift" ForeColor="Red" ValidationGroup="0">La contraseña ingresada no coincide</asp:CompareValidator>
                    <br />
                    <br />
                    <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style6" Text="Continuar &gt;" ValidationGroup="0" />
                </strong>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                &nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
