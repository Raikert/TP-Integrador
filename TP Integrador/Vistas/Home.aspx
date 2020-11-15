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

        .auto-style4 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style5 {
            width: 283px;
            float: right;
        }
        .auto-style6 {
            width: 106%;
        }
        .auto-style7 {
            width: 246px;
        }
        .auto-style8 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style9 {
            color: #3399FF;
        }
        .auto-style10 {
            color: #3366FF;
        }
        .auto-style11 {
            color: #3366FF;
            font-size: x-large;
        }
        .auto-style12 {
            text-align: center;
            color: #000000;
            background-color: deepskyblue;
        }
        .auto-style13 {
            color: #800000;
            font-size: large;
        }
        .auto-style14 {
            font-size: medium;
        }
        
        .auto-style1 {
            width: 100%;
        }
        .auto-style27 {
            border: 2px groove black;
            background-color: gray;
        }

        .hl2 td{
           justify-content: center;
           align-items: center;
           border: 2px groove black;
           background-color:antiquewhite;
          
         }

        </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="background-color: darkgray; width: 15%; height: 1200px; float: left"></div>
        <div style="background-color:white;width: 70%; float: left">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBuscar" runat="server" Font-Overline="False" TextMode="Search" Width="359px" placeholder="Titulo, Autor, Categoria"></asp:TextBox>
            <asp:DropDownList ID="ddlFiltro" runat="server">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>Titulo</asp:ListItem>
                <asp:ListItem>Autor</asp:ListItem>
                <asp:ListItem>Categoria</asp:ListItem>
            </asp:DropDownList>
            <strong>
                <asp:Button ID="btnBuscar" runat="server" BackColor="#4375C7" CssClass="auto-style4" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="White" Height="31px" Text="Buscar" Width="82px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp;</strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto | AR$"></asp:Label>
            &nbsp;<strong><asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/Imagenes/carrito logo.jpg" Width="49px" PostBackUrl="~/Carrito.aspx" />
            <br />
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style27" style="justify-content: center; align-items: center;">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/vistaLibros.aspx">Libros</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/VistaCategorias.aspx">Categorias</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/VistaEditoriales.aspx">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
            <br />
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7">
                        <div style="border:groove; border-color:cornflowerblue; width:250px; height:500px;" class="auto-style11"><em>
                            <br />
                            Filtrar por...<br />
                            <br />
                            </em><div class="auto-style12"> <strong><em>Categoria</em></strong></div>
                            <asp:DataList ID="dlCategorias" runat="server" Height="217px" DataKeyField="Nombre_Ca" DataSourceID="dsCategorias">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style14" Text='<%# Eval("Nombre_Ca") %>'></asp:LinkButton>
                                    <br />
<br />
                                </ItemTemplate>
                            </asp:DataList>
                            <br />
                            <div class="auto-style12"> <strong><em>Editorial</em></strong></div>
                            <asp:DataList ID="dlEditoriales" runat="server" DataKeyField="Nombre_E" DataSourceID="dsEditoriales">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style14" Text='<%# Eval("Nombre_E") %>'></asp:LinkButton>
                                    <br />
<br />
                                </ItemTemplate>
                            </asp:DataList>
                            <br />
                            <div class="auto-style12"> <strong><em>Precio</em></strong></div>
                            <br />
                            <div style="background-color:goldenrod"> &nbsp;
                                <asp:TextBox style="text-align: center" ID="txtMinimo" runat="server" Height="25px" Width="75px" placeholder="Minimo"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:TextBox style="text-align: center" ID="txtMaximo" runat="server" Height="25px" Width="75px" placeholder="Máximo"></asp:TextBox>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span class="auto-style8">
                        <br />
                        <span class="auto-style10">Mas Vendidos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style9">&nbsp; </span></span>
                        <asp:HyperLink ID="hlVerMas" runat="server" CssClass="auto-style8" ForeColor="#CC0066">Ver mas...</asp:HyperLink>
                        <br />
            <asp:ListView ID="lvLibrosMasVendidos" runat="server" DataSourceID="ConexionParaDataListYListView" GroupItemCount="5">
                <EditItemTemplate>
                    <td runat="server" style="">ImagenURL:
                        <asp:TextBox ID="ImagenURLTextBox" runat="server" Text='<%# Bind("ImagenURL") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">ImagenURL:
                        <asp:TextBox ID="ImagenURLTextBox0" runat="server" Text='<%# Bind("ImagenURL") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">
                        &nbsp;<br />
                        <asp:ImageButton ID="ImagenLibro" runat="server" ImageUrl='<%# Eval("ImagenURL_Lb") %>' Height="223px" Width="143px" CommandArgument='<%# Eval("Cod_Libro_Lb") %>' CommandName="SeleccionarLibro" OnCommand="ImagenLibro_Command" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">ImagenURL:
                        <asp:Label ID="ImagenURLLabel" runat="server" Text='<%# Eval("ImagenURL") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
                    </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="ConexionParaDataListYListView" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Cod_Libro_Lb], [ImagenURL_Lb] FROM [Libros]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_Ca] FROM [Categorias]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsEditoriales" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_E] FROM [Editoriales]"></asp:SqlDataSource>
            <br />
        </div>
        <div style="background-color: darkgray; width: 15%; height: 1200px; float: left">
            <div style="background-color: rgb(67,117,199); " class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hlInicioSesion" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White" NavigateUrl="InicioSesion1.aspx">Iniciar Sesion</asp:HyperLink>
                &nbsp; &nbsp;<span class="auto-style2">|</span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hlRegistrarse" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White" NavigateUrl="RegistroUsuario1.aspx">Registrarse</asp:HyperLink>
            </div>
            <br />
            <br />
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label style="text-align: center" ID="UsuarioConectado" runat="server" BackColor="White" BorderColor="#993333" BorderWidth="5px" CssClass="auto-style13" Font-Italic="True" Text="No esta logueado" Height="24px" Width="151px"></asp:Label>
            &nbsp;</strong><asp:LinkButton ID="lbSalir" runat="server" CssClass="auto-style3" Font-Names="Tahoma" ForeColor="Black" OnClick="lbSalir_Click"></asp:LinkButton>
            <strong>
            <br />
            <br />
            </strong>
            </div>
    </form>
</body>
</html>
