<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeccionLogueo.aspx.cs" Inherits="Vistas.Forms_DatosUsuario.SeccionLogueo" %>

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
            font-size: large;
        }

        .auto-style4 {
            text-decoration: underline;
        }

        </style>
</head>
<body style ="background-image: url(/Imagenes/libros.jpg)">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:40%"> &nbsp;</div>
            <div style="background-color:#FAE8BF; float:left; width:25%" class="auto-style1"> 
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Usted no esta logueado"></asp:Label>
                <br />
                <br />
                    <asp:HyperLink ID="hlInicioSesion" runat="server" CssClass="auto-style3" Font-Names="Constantia" ForeColor="Black" NavigateUrl="InicioSesion1.aspx">Iniciar Sesion</asp:HyperLink>
                            <br />
                <br />
                <asp:HyperLink ID="hlRegistrarse" runat="server" CssClass="auto-style3" Font-Names="Constantia" ForeColor="Black" NavigateUrl="RegistroUsuario1.aspx">Registrarse</asp:HyperLink>
                            <br />
                <br />
                <asp:HyperLink ID="hlVolver" runat="server" ForeColor="#CC6600" CssClass="auto-style4">Volver</asp:HyperLink>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
