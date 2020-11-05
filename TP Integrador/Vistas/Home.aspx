<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vistas.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color: rgb(67,117,199);width:275px;float:right;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hlInicioSesion" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White">Iniciar Sesion</asp:HyperLink>
&nbsp; &nbsp;<span class="auto-style2">|</span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hlRegistrarse" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White">Registrarse</asp:HyperLink>
                </div>
            <br />
        </div>
    </form>
</body>
</html>
