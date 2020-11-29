<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vistas.Home"  EnableEventValidation="false"%>

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
            border-left-style:groove;
            border-bottom-style:groove;
            border-left-color:saddlebrown;
            border-bottom-color:saddlebrown;
        }
        .auto-style13 {
            color: #800000;
            font-size: large;
        }
                
        .auto-style1 {
            width: 100%;
        }
        
        .hl2 td{
           justify-content: center;
           align-items: center;
           border: 2px groove black;
           background-color:antiquewhite;
          
         }

        .auto-style28 {
            width: 15%;
            float: left;
        }
        .auto-style11 {
            color: #3366FF;
            font-size: x-large;
            text-align: center;
            background-color: #FFD67B;
        }
        .auto-style12 {
            text-align: center;
            color: #000000;
            background-color: #FFC300;
            border-style:double;
        }
        .auto-style14 {
            font-size: medium;
        }
        
        
         .auto-style29 {
            text-align: center;

        }

        .auto-style32 {
            float: left;
            width: 27%;
        }

        .auto-style33 {
            width: 702px;
            text-align: center;
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

        .auto-style38 {
            font-size: x-large;
            color: #3366FF;
            border-bottom-style: groove;
            border-bottom-color:crimson;
        }
        .auto-style39 {
            float: left;
        }

        .auto-style40 {
            font-size: medium;
            color: #000000;
        }
        .auto-style42 {
            font-size: large;
            color: #000000;
        }
        .auto-style43 {
            background-color:#FAE8BF;
            width: 70%;
            float: left;
        }

        .auto-style44 {
            color: #CCCCCC;
            background-color: #000000;
        }
        .auto-style45 {
            color: #C0C0C0;
        }
        .auto-style46 {
            color: #FFCC00;
            background-color: #000000;
        }

        .auto-style47 {
            color: #C0C0C0;
            font-size: x-large;
        }

        .auto-style48 {
            font-size: large;
            color: #FF9900;
            text-decoration: none;
            background-color: #000000;
        }

         body{
            background-image: url("/Imagenes/libros.jpg");
           /*background-color:darkgray*/
         }

         #top {
            background-color:#FBD88C;
            width: 97.5%;
            height: 130px;
            margin-left:10px;
            /*margin-right:10px;*/
            margin-top:10px;
           border-style:groove;
           border-color:saddlebrown;
         }


        .auto-style49 {
            width: 99%;
            height: 89px;
            margin-right: 0px;
        }


        .auto-style50 {
            width: 98%;
            height: 89px;
        }


        .auto-style51 {
            float: left;
            width: 25%;
        }


        .auto-style52 {
            width: 97%;
            margin-left: 7px;
        }




        .auto-style54 {
            width: 32%;
            text-align: center;
        }

         .auto-style544 {
            width: 32%;
            text-align: center;
        }

        .auto-style545 {
            text-align: center;
            width:32%;
        }

        .auto-style546 {
            float:right;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style28">
            <asp:SqlDataSource ID="dsCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_Ca] FROM [Categorias]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsEditoriales" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_E] FROM [Editoriales]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="ListaLibros" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
&nbsp;</div>

        <div class="auto-style43">

            <div id="top" class="auto-style49">

            <div class="auto-style51"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Height="100px" />
                <br />
&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hlContacto" runat="server" CssClass="auto-style3" Font-Names="Ebrima" ForeColor="Black" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaContacto.aspx">Contacto</asp:HyperLink>
            </div>
            <div style="float:left;width:75%" class="auto-style35"> 
                <div style="background-color: rgb(153,217,234); " class="auto-style5">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style29">
                    <asp:HyperLink ID="hlMiCuenta" runat="server" CssClass="auto-style3" Font-Names="Constantia" ForeColor="Black" NavigateUrl="~/Forms_DatosUsuario/IngresoMiCuenta.aspx" Visible="False">Mi Cuenta</asp:HyperLink>
                    <asp:HyperLink ID="hlInicioSesion" runat="server" CssClass="auto-style3" Font-Names="Constantia" ForeColor="Black" NavigateUrl="~/Forms_DatosUsuario/InicioSesion1.aspx">Iniciar Sesion</asp:HyperLink>
                            </td>
                            <td class="auto-style29"> <asp:HyperLink ID="hlRegistrarse" runat="server" CssClass="auto-style3" Font-Names="Constantia" ForeColor="Black" NavigateUrl="~/Forms_DatosUsuario/RegistroUsuario1.aspx">Registrarse</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style36"><strong><asp:Label style="text-align: center" ID="UsuarioConectado" runat="server" BackColor="White" BorderColor="#0099FF" BorderWidth="5px" CssClass="auto-style13" Font-Italic="True" Text="No esta logueado" Width="151px" BorderStyle="Ridge" ForeColor="Black"></asp:Label>
                                </strong></td>
                            <td>&nbsp;<asp:LinkButton style="text-align:center" ID="lbSalir" runat="server" CssClass="auto-style3" Font-Names="Swis721 BlkCn BT" ForeColor="#F5ED41" OnClick="lbSalir_Click" Visible="False" BackColor="Black" Width="110px">Cerrar Sesion</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
            </div>
                <br />
                <br />
            </div>

                </div>

            &nbsp;<br />
            <table class="auto-style50">
                <tr>
                    <td class="auto-style33">
            <asp:TextBox ID="txtBuscar" runat="server" Font-Overline="False" TextMode="Search" Width="359px" placeholder="Titulo, Categoria, Editorial"></asp:TextBox>
            <asp:DropDownList ID="ddlFiltro" runat="server">
                <asp:ListItem Value="1-2-3">Todos</asp:ListItem>
                <asp:ListItem Value="1">Titulo</asp:ListItem>
                <asp:ListItem Value="2">Editorial</asp:ListItem>
                <asp:ListItem Value="3">Categoria</asp:ListItem>
            </asp:DropDownList>
            <strong>
                <asp:Button ID="btnBuscar" runat="server" BackColor="#4375C7" CssClass="auto-style4" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="White" Height="31px" Text="Buscar" Width="82px" OnClick="btnBuscar_Click" />
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server">Mostrar todos</asp:LinkButton>
                        </strong></td>
                    <td class="auto-style546">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style29"><strong>
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp;</strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto | AR$"></asp:Label>
                                    <strong>&nbsp;<asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style29"><asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Imagenes/carrito logo.png" Width="48px" PostBackUrl="~/Forms_VistaCliente/Forms_DeCompra/Carrito.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
                    <table  class="auto-style52">
                        <tr class="hl2">
                            <td class="auto-style54" style="justify-content: center; align-items: center;">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/vistaLibros.aspx" Font-Names="Constantia">Libros</asp:HyperLink>
                            </td>
                            <td class="auto-style545">
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx" Font-Names="Constantia">Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style544">
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaEditoriales.aspx" Font-Names="Constantia">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
            <br />
            <br />
            <br />
            <div class="auto-style32"> 
                        <div style="border:groove; border-color:cornflowerblue; width:250px;" class="auto-style11">
                            <div class="auto-style29">
                                <em>
                            <br />
                                <span class="auto-style46">&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="Explore por..."></asp:Label>
&nbsp;</span><br />
                                <br />
                            </em>
                                <asp:LinkButton ID="lbTopVentas" runat="server" CssClass="auto-style42" Font-Names="Bahnschrift Light" OnClick="lbTopVentas_Click">Los mas buscados</asp:LinkButton>
                                <span class="auto-style40">
                                <br />
                                <br />
                                <asp:LinkButton ID="lbMejoresOfertas" runat="server" CssClass="auto-style42" Font-Names="Bahnschrift Light" OnClick="lbMejoresOfertas_Click">Mejores ofertas</asp:LinkButton>
                                <br />
                                <br />
                                <asp:LinkButton ID="lbMasVentasHoy" runat="server" CssClass="auto-style42" Font-Names="Bahnschrift Light" OnClick="lbMasVentasHoy_Click">Top ventas hoy</asp:LinkButton>
                                <br />
                                &nbsp;<br />
                                </span>
                                <div class="auto-style12"> <strong><em><span class="auto-style44">
                                <asp:Label ID="Label5" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="auto-style47" Font-Bold="True" Font-Italic="False" Font-Names="Ink Free" Text="Precio" Width="85px" ForeColor="White"></asp:Label>
                                </span></em></strong></div>
                                <br />
                                <asp:TextBox style="text-align: center" ID="txtPrecioMinimo" runat="server" Height="25px" Width="75px" placeholder="Minimo" BorderStyle="Double"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox style="text-align: center" ID="txtPrecioMaximo" runat="server" Height="25px" Width="75px" placeholder="Máximo" BorderStyle="Double"></asp:TextBox>
                                    <br />
                                <strong>
                <asp:Label ID="lblErrorPrecios" runat="server" CssClass="auto-style3" Font-Names="Sitka Text" Font-Size="10.5pt" ForeColor="#CC0000"></asp:Label>
                                </strong>
                                <br />
                                    <br />
                                <asp:LinkButton ID="lbBuscaPrecio" runat="server" BorderStyle="Solid" CssClass="auto-style48" Font-Bold="True" Font-Italic="True" Font-Names="Microsoft JhengHei Light" Font-Overline="False" ForeColor="#33CC33" Width="104px" OnClick="lbBuscaPrecio_Click" ValidationGroup="0">Filtrar por precio</asp:LinkButton>
                                <br />
                                <br />
                            </div>
                            <div class="auto-style12"> <strong><em><span class="auto-style44">
                                <asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="auto-style45" Font-Bold="True" Font-Italic="False" Font-Names="Ink Free" Text="Categorias" Width="125px" ForeColor="White"></asp:Label>
                                </span></em></strong></div>
                            <div>
                                <strong>
                                <br />
                            <asp:DataList ID="dlCategorias" runat="server" Height="217px" DataKeyField="Nombre_Ca" DataSourceID="dsCategorias" CssClass="auto-style37" Width="247px" OnItemCommand="dlCategorias_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style14" Text='<%# Eval("Nombre_Ca") %>' Font-Names="Yu Gothic Medium" ForeColor="#CC0000" CommandName="FiltroCategoria"></asp:LinkButton>
<br />
                                </ItemTemplate>
                            </asp:DataList>
                                </strong>
                                <br />
                            </div>
                            <div class="auto-style12"> <strong><em><span class="auto-style44">
                                <asp:Label ID="Label3" runat="server" BackColor="Black" BorderStyle="Outset" CssClass="auto-style45" Font-Bold="True" Font-Italic="False" Font-Names="Ink Free" Text="Editoriales" Width="125px" ForeColor="White"></asp:Label>
                                </span></em></strong></div>
                            <div class="auto-style29">
                                <strong>
                                <br />
                            <asp:DataList ID="dlEditoriales" runat="server" DataKeyField="Nombre_E" DataSourceID="dsEditoriales" CssClass="auto-style37" Width="246px" OnItemCommand="dlEditoriales_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style3" Text='<%# Eval("Nombre_E") %>' Font-Bold="False" Font-Italic="False" Font-Names="Microsoft YaHei" ForeColor="#0000CC" CommandName="FiltroEditorial" CommandArgument='<%# Eval("Nombre_E") %>' Font-Size="Medium" Font-Underline="True"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:DataList>
                                </strong>
                                <br />
                            </div>
                        </div>
            </div>
            <div class="auto-style39"> 
                <div class="auto-style38">
                    <asp:Label style="float:left;text-align: center;" ID="MensajeListado" runat="server" Text="Libros disponibles" BackColor="#FF99CC" BorderColor="#FF99CC" Font-Overline="False" ForeColor="Black" Height="27px" BorderStyle="Ridge" BorderWidth="2px"></asp:Label>
        </div>
                <asp:ListView ID="lvLibrosMasVendidos" runat="server" GroupItemCount="4" DataKeyNames="Cod_Libro_Lb">
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
                                <td>No hay libros para esa seleccion.</td>
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
                            <asp:ImageButton ID="ImagenLibro" runat="server" CommandArgument='<%# Eval("Cod_Libro_Lb") %>' CommandName="SeleccionarLibro" Height="223px" ImageUrl='<%# Eval("ImagenURL_Lb") %>' OnCommand="ImagenLibro_Command" Width="143px" BorderColor="#FFFF99" BorderStyle="Groove" />
                            <br />
                        </td>
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
                            <br />
                                    ImagenURL_Lb:
                                    <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
            </div>
            <br />
            <br />
        </div>
        <div class="auto-style28">
            
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
