<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vistaLibros.aspx.cs" Inherits="vistas.vistaLibros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

   <%-- <meta name="viewport" content="width=1, initial-scale=1.0">--%>

    <title></title>
    <style type="text/css">

        .centrado{
            margin: 0 auto;
            padding: 0 1em;
            }

        @media screen and (min-width: 52em) {
            .centrado {
                max-width: 52em;
            }
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            width: 634px;
        }
        .auto-style3 {
            width: 634px;
        }
        .auto-style6 {
            width: 369px;
        }
        .auto-style8 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            color: rgb(230, 39, 65);
            letter-spacing: normal;
        }
        .auto-style9 {
            width: 371px;
        }
        .auto-style10 {
            color: #00FF00;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 689px;
        }
        .auto-style14 {
            width: 1022px;
        }
                

        #form1{
           /* margin-left: 150px;        
            margin-right: 150px;
            padding: 0 1em;*/
            background-color:#FAE8BF;
        }

        body{
            background-image: url("/Imagenes/libros.jpg");
        }


        .auto-style20 {
            width: 77px;
        }


        .auto-style21 {
            width: 100%;
            height: 10px;
            
        }

        .hl1{
           justify-content: center;
           align-items: center;
           border: 2px groove gray;
        }

         .hl2 td{
           justify-content: center;
           align-items: center;
           border: 2px groove green;
           background-color:gray;
          
         }

         footer{
            /*margin-left: 150px;        
            margin-right: 150px;*/
            padding: 0 1em;
            background-color: white;
         }
         


        .auto-style25 {
            text-align: center;
            text-decoration: underline;
            font-size:large;
        }
        
        .auto-style26 {
            color: #FF3300;
        }
        
        .auto-style27 {
            width: 291px;
        }
        
        .auto-style4 {
            font-size: large;
            font-weight: bold;
        }

         #top{
           background-color:#FBD88C;
           width: 100%;
           height: 117px;
            
          }

        
    </style>
</head>
<body class="centrado">
   
    <form class="centrado" id="form1" runat="server">
        <div id="top">
            <table class="auto-style1">
                <tr id="hl1">
                    <td class="auto-style3">&nbsp;</td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">HOME</asp:HyperLink>
                    </td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlContacto" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaContacto.aspx">Contacto</asp:HyperLink>
                    </td>
                    <td class="hl1">
                        <asp:HyperLink ID="hlMiCuenta" runat="server" NavigateUrl="~/Forms_DatosUsuario/MiCuenta.aspx">Mi Cuenta</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtBuscar" runat="server" Font-Overline="False" TextMode="Search" Width="359px" placeholder="Titulo, Autor, Categoria"></asp:TextBox>
            <asp:DropDownList ID="ddlFiltro" runat="server">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>Titulo</asp:ListItem>
                <asp:ListItem>Autor</asp:ListItem>
                <asp:ListItem>Categoria</asp:ListItem>
            </asp:DropDownList>
            <strong>
                <asp:Button ID="btnBuscar" runat="server" BackColor="#4375C7" CssClass="auto-style4" Font-Bold="True" Font-Names="Trebuchet MS" ForeColor="White" Height="31px" Text="Buscar" Width="82px" />
                    </strong> </td>
                <td>
                    <asp:Label ID="lblNumeroCarro" runat="server"></asp:Label>
&nbsp;productos <span class="auto-style10">AR$ </span>
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table  class="auto-style1">
                        <tr class="hl2">
                            <td class="auto-style27">
                                <asp:HyperLink ID="hlLibros" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/vistaLibros.aspx">Libros</asp:HyperLink>
                            &nbsp;
                            </td>
                            <td>
                                <asp:HyperLink ID="hlCategorias" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx">Categorias</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlEditoriales" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaEditoriales.aspx">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style25"><strong>LISTADO DE LOS LIBROS A DISPOSICION </strong></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListView ID="ListView1" runat="server" DataSourceID="dsLibrosL">
           <%-- <AlternatingItemTemplate>
                <span style="">NombreLibro_Lb:
                <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>' />
                <br />
                Descripcion_lb:
                <asp:Label ID="Descripcion_lbLabel" runat="server" Text='<%# Eval("Descripcion_lb") %>' />
                <br />
                Categoria_Lb:
                <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>' />
                <br />
                Editorial_Lb:
                <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>' />
                <br />
                Precio_Lb:
                <asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                <br />
                ImagenURL_Lb:
                <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>--%>
            <EditItemTemplate>
                <span style="">NombreLibro_Lb:
                <asp:TextBox ID="NombreLibro_LbTextBox" runat="server" Text='<%# Bind("NombreLibro_Lb") %>' />
                <br />
                Descripcion_lb:
                <asp:TextBox ID="Descripcion_lbTextBox" runat="server" Text='<%# Bind("Descripcion_lb") %>' />
                <br />
                Categoria_Lb:
                <asp:TextBox ID="Categoria_LbTextBox" runat="server" Text='<%# Bind("Categoria_Lb") %>' />
                <br />
                Editorial_Lb:
                <asp:TextBox ID="Editorial_LbTextBox" runat="server" Text='<%# Bind("Editorial_Lb") %>' />
                <br />
                Precio_Lb:
                <asp:TextBox ID="Precio_LbTextBox" runat="server" Text='<%# Bind("Precio_Lb") %>' />
                <br />
                ImagenURL_Lb:
                <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No se han devuelto datos.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">NombreLibro_Lb:
                <asp:TextBox ID="NombreLibro_LbTextBox" runat="server" Text='<%# Bind("NombreLibro_Lb") %>' />
                <br />Descripcion_lb:
                <asp:TextBox ID="Descripcion_lbTextBox" runat="server" Text='<%# Bind("Descripcion_lb") %>' />
                <br />Categoria_Lb:
                <asp:TextBox ID="Categoria_LbTextBox" runat="server" Text='<%# Bind("Categoria_Lb") %>' />
                <br />Editorial_Lb:
                <asp:TextBox ID="Editorial_LbTextBox" runat="server" Text='<%# Bind("Editorial_Lb") %>' />
                <br />Precio_Lb:
                <asp:TextBox ID="Precio_LbTextBox" runat="server" Text='<%# Bind("Precio_Lb") %>' />
                <br />ImagenURL_Lb:
                <asp:TextBox ID="ImagenURL_LbTextBox" runat="server" Text='<%# Bind("ImagenURL_Lb") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style=""><em>Nombre:</em>
                <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>'></asp:Label>
&nbsp;<br /><em>Descripcion: </em>
                <asp:Label ID="Descripcion_lbLabel" runat="server" Text='<%# Eval("Descripcion_lb") %>' />
                <br />
                <em>Categoria: </em>
                <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>'></asp:Label>
                <br />
                <em>Editorial:</em>
                <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>'></asp:Label>
                <br />
                <em>Precio: </em>&nbsp;AR$<asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagenURL_Lb") %>' />
                &nbsp;<br />
                <br />
                <span class="auto-style26">-----------------------------------------------</span><br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">NombreLibro_Lb:
                <asp:Label ID="NombreLibro_LbLabel" runat="server" Text='<%# Eval("NombreLibro_Lb") %>' />
                <br />
                Descripcion_lb:
                <asp:Label ID="Descripcion_lbLabel" runat="server" Text='<%# Eval("Descripcion_lb") %>' />
                <br />
                Categoria_Lb:
                <asp:Label ID="Categoria_LbLabel" runat="server" Text='<%# Eval("Categoria_Lb") %>' />
                <br />
                Editorial_Lb:
                <asp:Label ID="Editorial_LbLabel" runat="server" Text='<%# Eval("Editorial_Lb") %>' />
                <br />
                Precio_Lb:
                <asp:Label ID="Precio_LbLabel" runat="server" Text='<%# Eval("Precio_Lb") %>' />
                <br />
                ImagenURL_Lb:
                <asp:Label ID="ImagenURL_LbLabel" runat="server" Text='<%# Eval("ImagenURL_Lb") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="dsLibrosL" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [NombreLibro_Lb], [Descripcion_lb], [Categoria_Lb], [Editorial_Lb], [Precio_Lb], [ImagenURL_Lb] FROM [Libros] WHERE ([Activo_Lb] = @Activo_Lb)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="Activo_Lb" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <div style="background-color:gray" class="auto-style21">       </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">MEDIOS DE PAGO</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Efectivo-Tarjeta Visa o Master Card- Rapi Pago</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
    <br />
    
    <footer class="centrado">  <table>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Copyright © 2019-2020<span>&nbsp;</span></span><span class="auto-style8" style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Libra</span><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>S.A.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td><strong><em>Email: Libros.Libra@gmail.com</em></strong></td>
            </tr>
            <tr>
                <td><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">TODOS LOS DERECHOS RESERVADOS.</span></td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Av. Hipólito Yrigoyen 288, B1617 Gral. Pacheco, Provincia de Buenos Aires</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table></footer>
</body>
</html>
