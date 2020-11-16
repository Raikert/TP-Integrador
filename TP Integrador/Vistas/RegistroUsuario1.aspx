<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario1.aspx.cs" Inherits="Vistas.RegistroUsuario1" %>

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
            height: 500px;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            font-size: small;
        }
        .nuevoEstilo1 {
            text-align: center;
        }
        .auto-style6 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="background-color:darkgray; height:955px">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style="background-color:white;" class="auto-style1"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje1" runat="server" CssClass="auto-style6" Font-Names="Segoe UI" ForeColor="#0033CC" Text="Ingrese su dirección de e-mail para poder realizar esta accion:"></asp:Label>
                <br />
                <br />
                <asp:TextBox style="text-align: center" ID="txtEmail" runat="server" Width="280px" placeholder="Ingrese aqui su email" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Comic Sans MS" Height="22px"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmailRepetido" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ErrorMessage="Campo obligatorio" Font-Names="Bahnschrift" ForeColor="Red" Font-Size="10.5pt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Bahnschrift" Font-Size="10.5pt">No ha ingresado email correcto</asp:RegularExpressionValidator>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style2" ForeColor="Black" Text="Continuar &gt;" OnClick="btnContinuar_Click" />
                <br />
                <br />
                </strong>
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="Home.aspx">Volver</asp:HyperLink>
                <strong>
                <br />
                <br />
                </strong>
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Calibri Light" Text="Si usted ya ha creado una cuenta anteriormente, asegurese de utilizar la misma dirección de email para recuperar los datos de su cuenta" Width="350px"></asp:Label>
            </div>
            <div style="float:left; width:35%"> </div>
        </div>
    </form>
</body>
</html>
