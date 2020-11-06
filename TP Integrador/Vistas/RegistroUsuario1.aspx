<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario1.aspx.cs" Inherits="Vistas.RegistroUsuario1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            color: #0066FF;
            background-color: #000000;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .nuevoEstilo1 {
            text-align: center;
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
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style="background-color:white;float:left; width:30%; height:500px" class="auto-style1"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <span class="auto-style4"><strong><span class="auto-style5">Ingrese su dirección de e-mail para poder realizar esta accion:</span></strong></span><br />
                <br />
                <asp:TextBox style="text-align: center" ID="txtEmail" runat="server" Width="280px" placeholder="Ingrese aqui su email" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CssClass="nuevoEstilo1" Font-Names="Comic Sans MS" Height="22px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style3" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Bahnschrift">No ha ingresado email correcto</asp:RegularExpressionValidator>
                <br />
                <br />
                <strong>
                <asp:Button ID="btnContinuar" runat="server" BackColor="#33CC33" BorderColor="Black" CssClass="auto-style2" ForeColor="Black" Text="Continuar &gt;" />
                <br />
                <br />
                </strong>
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" NavigateUrl="Home.aspx">volver</asp:HyperLink>
                <strong>
                <br />
                <br />
                </strong><span class="auto-style3">Si usted ya ha creado una cuenta anteriormente, asegurese de utilizar la misma dirección de email para recuperar los datos de su cuenta</span></div>
            <div style="float:left; width:35%"> </div>
        </div>
    </form>
</body>
</html>
