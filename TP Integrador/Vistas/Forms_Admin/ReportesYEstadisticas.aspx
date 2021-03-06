﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesYEstadisticas.aspx.cs" Inherits="Vistas.Forms_Admin.ReportesYEstadisticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style20 {
            margin-right: 0px;
        }

        .auto-style11 {
            margin-left: 0px;
            font-size: large;
        }

        .centrar{
           width:50%; 
            margin: 0 20%; 
        }


        .auto-style21 {
            text-decoration: underline;
            font-size: x-large;
        }


        </style>
</head>
<body style="background-image:url(/Imagenes/librosadmin.jpg)">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="float:left; width:35%"> &nbsp;</div>
            <div style="background-color:#FAE8BF;float:left; width:30%" class="auto-style1">  
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Panel del Administrador logo.png" CssClass="auto-style20" />
                    <br />
                <asp:HyperLink ID="hlVolverpanel" runat="server" ForeColor="#CC6600" NavigateUrl="~/Forms_Admin/PanelDelAdministrador.aspx">Volver al panel</asp:HyperLink>
                    <br />
                <br />
                    <strong>
                <asp:Label ID="lblMensaje" runat="server" Font-Names="Bahnschrift" Text="Reportes y Estadisticas" CssClass="auto-style21"></asp:Label>
                    </strong>
                <br />
                <br />
                <asp:DropDownList ID="ddlReportesYEstadisticas" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="3">Top 5 mejores ofertas</asp:ListItem>
                    <asp:ListItem Value="4">Top 5 libros mas caros</asp:ListItem>
                    <asp:ListItem Value="5">Stock menor o igual a 10</asp:ListItem>
                    <asp:ListItem Value="6">Stock mayor a 10</asp:ListItem>
                    <asp:ListItem Value="7">Libro mas caro</asp:ListItem>
                    <asp:ListItem Value="8">Libro mas barato</asp:ListItem>
                    <asp:ListItem Value="9">Libros vendidos</asp:ListItem>
                    <asp:ListItem Value="10">Libro mas vendido</asp:ListItem>
                    <asp:ListItem Value="11">Libro menos vendido</asp:ListItem>
                    <asp:ListItem Value="12">Cliente que mas libros compro</asp:ListItem>
                    <asp:ListItem Value="13">Cliente que menos libros compro</asp:ListItem>
                    <asp:ListItem Value="14">Promedio de libros comprados por cliente</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <div class="centrar">
                    <strong> 
                    <asp:GridView ID="grdReportesYEstadisticas" runat="server" CssClass="auto-style11" CellPadding="4" Font-Names="Calibri Light" ForeColor="#333333" PageSize="5" Height="163px" Width="255px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Javanese Text" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>             
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
                <br />
                    </strong>
                    </div>
            </div>
        </div>
    </form>
</body>
</html>
