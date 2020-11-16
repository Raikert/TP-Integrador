<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vistas.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        
        .auto-style3 {
            font-size: large;
        }

        .auto-style4 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style5 {
            width: 350px;
            float: right;
            text-align: left;
        }
        .auto-style8 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style10 {
            color: #3366FF;
        }
        .auto-style13 {
            color: #800000;
            font-size: large;
        }
                
        .auto-style1 {
            width: 100%;
        }
        .auto-style27 {
            border: 2px groove black;
            background-color: gray;
            text-align: center;
        }

        .hl2 td{
           justify-content: center;
           align-items: center;
           border: 2px groove black;
           background-color:antiquewhite;
          
         }

        .auto-style28 {
            width: 15%;
            height: 1200px;
            float: left;
        }
        .auto-style11 {
            color: #3366FF;
            font-size: x-large;
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            color: #000000;
            background-color: deepskyblue;
        }
        .auto-style14 {
            font-size: medium;
        }
        
        .auto-style29 {
            text-align: center;
        }
        
        .auto-style32 {
            float: left;
            width: 25%;
        }

        .auto-style33 {
            width: 740px;
            text-align: center;
        }
        .auto-style34 {
            text-align: right;
        }

        .auto-style35 {
            text-align: left;
        }
        .auto-style36 {
            width: 178px;
            text-align: center;
        }

        .auto-style37 {
            margin-left: 0px;
        }

        </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div style="background-color: darkgray; " class="auto-style28">
            <asp:SqlDataSource ID="ConexionParaDataListYListView" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Cod_Libro_Lb], [ImagenURL_Lb] FROM [Libros]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="dsCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_Ca] FROM [Categorias]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="dsEditoriales" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_E] FROM [Editoriales]"></asp:SqlDataSource>
            </div>
        <div style="background-color:white;width: 70%; float: left; height:1000px">
            <div style="float:left;width:25%"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Height="100px" />
            </div>
            <div style="float:left;width:75%" class="auto-style35"> 
                <div style="background-color: rgb(67,117,199); " class="auto-style5">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style29">
                    <asp:HyperLink ID="hlInicioSesion" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White" NavigateUrl="InicioSesion1.aspx">Iniciar Sesion</asp:HyperLink>
                            </td>
                            <td class="auto-style29"> <asp:HyperLink ID="hlRegistrarse" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="White" NavigateUrl="RegistroUsuario1.aspx">Registrarse</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style36"><strong><asp:Label style="text-align: center" ID="UsuarioConectado" runat="server" BackColor="White" BorderColor="#993333" BorderWidth="5px" CssClass="auto-style13" Font-Italic="True" Text="No esta logueado" Height="24px" Width="151px"></asp:Label>
                                </strong></td>
                            <td>&nbsp;<asp:LinkButton ID="lbSalir" runat="server" CssClass="auto-style3" Font-Names="Swis721 BlkCn BT" ForeColor="#F5ED41" OnClick="lbSalir_Click" Visible="False">Cerrar Sesion</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
            </div>
                <br />
                <br />
            </div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style33">
            <asp:TextBox ID="txtBuscar" runat="server" Font-Overline="False" TextMode="Search" Width="359px" placeholder="Titulo, Autor, Categoria"></asp:TextBox>
            <asp:DropDownList ID="ddlFiltro" runat="server">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>Titulo</asp:ListItem>
                <asp:ListItem>Autor</asp:ListItem>
                <asp:ListItem>Categoria</asp:ListItem>
            </asp:DropDownList>
            <strong>
                <asp:Button ID="btnBuscar" runat="server" BackColor="#4375C7" CssClass="auto-style4" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="White" Height="31px" Text="Buscar" Width="82px" />
                        </strong></td>
                    <td class="auto-style34"><strong>
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp;</strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto | AR$"></asp:Label>
            &nbsp;<strong><asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/Imagenes/carrito logo.jpg" Width="49px" PostBackUrl="~/Carrito.aspx" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
            <br />
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style27" style="justify-content: center; align-items: center;">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/vistaLibros.aspx" Font-Names="Constantia">Libros</asp:HyperLink>
                            </td>
                            <td class="auto-style29">
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/VistaCategorias.aspx" Font-Names="Constantia">Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style29">
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/VistaEditoriales.aspx" Font-Names="Constantia">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
            <br />
            <div class="auto-style32"> 
                        <div style="border:groove; border-color:cornflowerblue; width:250px;" class="auto-style11">
                            <div class="auto-style29">
                                <em>
                            <br />
                            Filtrar por...<br />
                            <br />
                            </em>
                            </div>
                            <div class="auto-style12"> <strong><em>Categoria</em></strong></div>
                            <div>
                            <asp:DataList ID="dlCategorias" runat="server" Height="217px" DataKeyField="Nombre_Ca" DataSourceID="dsCategorias" CssClass="auto-style37" Width="247px">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style14" Text='<%# Eval("Nombre_Ca") %>' Font-Names="Arial" ForeColor="#CC0000"></asp:LinkButton>
<br />
                                </ItemTemplate>
                            </asp:DataList>
                                <br />
                            </div>
                            <div class="auto-style12"> <strong><em>Editorial</em></strong></div>
                            <div class="auto-style29">
                            <asp:DataList ID="dlEditoriales" runat="server" DataKeyField="Nombre_E" DataSourceID="dsEditoriales" CssClass="auto-style37" Width="246px">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style3" Text='<%# Eval("Nombre_E") %>' Font-Bold="False" Font-Italic="True" Font-Names="Calibri" ForeColor="#3333FF"></asp:LinkButton>
<br />
                                </ItemTemplate>
                            </asp:DataList>
                                <br />
                            </div>
                            <div class="auto-style12"> <strong><em>Precio</em></strong></div>
                            <div style="background-color:goldenrod"> 
                                <asp:TextBox style="text-align: center" ID="txtMinimo" runat="server" Height="25px" Width="75px" placeholder="Minimo"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox style="text-align: center" ID="txtMaximo" runat="server" Height="25px" Width="75px" placeholder="Máximo"></asp:TextBox>
                            </div>
                        </div>
            </div>
            <div style="float:left;width:75%"> 
                        <span class="auto-style8">
                        <span class="auto-style10">&nbsp;Mas Vendidos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span></span>
                        <br />
            <asp:ListView ID="lvLibrosMasVendidos" runat="server" DataSourceID="ConexionParaDataListYListView" GroupItemCount="5" DataKeyNames="Cod_Libro_Lb">
                <EditItemTemplate>
                    <td runat="server" style="">Cod_Libro_Lb:
                        <asp:Label ID="Cod_Libro_LbLabel1" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                        <br />
                        ImagenURL_Lb:
                        <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br />
                    </td>
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
                    <td runat="server" style="">Cod_Libro_Lb:
                        <asp:TextBox ID="Cod_Libro_LbTextBox" runat="server" Text='<%# Bind("Cod_Libro_Lb") %>' />
                        <br />
                        ImagenURL_Lb:
                        <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">
                        <asp:ImageButton ID="ImagenLibro" runat="server" CommandArgument='<%# Eval("Cod_Libro_Lb") %>' CommandName="SeleccionarLibro" Height="223px" ImageUrl='<%# Eval("ImagenURL_Lb") %>' OnCommand="ImagenLibro_Command" Width="143px" />
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
                            <td runat="server" style="" class="auto-style29">
                                <asp:DataPager ID="DataPager2" runat="server" PageSize="15">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">Cod_Libro_Lb:
                        <asp:Label ID="Cod_Libro_LbLabel" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>' />
                        <br />ImagenURL_Lb:
                        <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            </div>
            <br />
            <br />
        </div>
        <div style="background-color: darkgray; width: 15%; height: 1200px; float: left">
            
            <br />
            <br />
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong><br />
            <br />
            </strong>
            </div>
    </form>
</body>
</html>
