<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaEditoriales.aspx.cs" Inherits="vistas.VistaEditoriales" %>

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
        .auto-style11 {
            margin-left: 0px;
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
           border: 2px groove black;
           background-color:antiquewhite;
          
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
            text-align: center;
            width: 237px;
            height: 7px;
            background-color: #5B230B;
            text-decoration: underline;
            color: white;
            text-shadow:1px 1px #fff;
        }
        .auto-style27 {
            width: 237px;
        }
        .auto-style28 {
            font-size: xx-large;
        }
        .auto-style29 {
            width: 291px;
        }


         #top{
           background-color:#FBD88C;
           width: 100%;
           height: 117px;
           border:groove;
           border-color:red;
           }



        
        .auto-style34 {
            width: 369px;
            font-size: x-large;
            text-decoration: underline;
   
        }
        .auto-style37 {
            width: 121px;
        }
        .auto-style38 {
            color: #00CC00;
        }
        .auto-style39 {
            color: #FF6600;
            font-size: large;
        }
        .auto-style40 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style41 {
            color: #000000;
            font-size: large;
        }

        .Editorial{
            font-size:90px;         
            text-align:center;
            color:red;
        }



        .auto-style42 {
            width: 556px;
        }
        .auto-style43 {
            width: 163px;
        }
        .auto-style44 {
            width: 248px;
        }



        .auto-style45 {
            width: 699px;
        }

          
 
        .auto-style46 {
            color: #3333FF;
            font-size: large;
        }
        .auto-style47 {
            font-size: large;
        }

          
 
        .auto-style56 {
            width: 570px;
            height: 56px;
        }
        
        .auto-style4 {
            font-size: large;
            font-weight: bold;
        }

         .auto-style57 {
            height: 56px;
            text-align: right;
        }

         /*tabla de libros categorias y editoriales*/
        .auto-style52 {
            width: 97%;
            margin-left: 7px;
        }           
        .auto-style53 {
            text-align: center;
            width:32%;
        }
        .auto-style54 {
            text-align: center;
            width:32%;
        }
        .auto-style55 {
            text-align: center;
            width:32%;
        }
        /*-------------------------*/
 
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
                        <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style56">&nbsp;&nbsp;
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
                <td class="auto-style57">
                    <strong>
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp; </strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto | AR$"></asp:Label>
            &nbsp;<strong><asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong><asp:ImageButton ID="ImageButton1" runat="server" Height="48px" ImageUrl="~/Imagenes/carrito logo.png" Width="48px" PostBackUrl="~/Forms_VistaCliente/Forms_DeCompra/Carrito.aspx" />
                    &nbsp;
                </td>
            </tr>
        </table>
      
                    <table class="auto-style52">
                        <tr class="hl2" >
                            <td class="auto-style54" style="justify-content: center; align-items: center;">
                                <asp:HyperLink ID="hlLibros" runat="server" Font-Names="Constantia" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/vistaLibros.aspx">Libros</asp:HyperLink>
                            </td>
                            <td class="auto-style55">
                                <asp:HyperLink ID="hlCategorias" runat="server" Font-Names="Constantia" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaCategorias.aspx">Categorias</asp:HyperLink>
                            </td>
                            <td class="auto-style53">
                                <asp:HyperLink ID="hlEditoriales" runat="server" Font-Names="Constantia" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaEditoriales.aspx">Editoriales</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
       
        <br />
        <table class="auto-style1">
            <tr>
                <td class="Editorial">Editoriales</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style25">Listado de las distintas editoriales a disposicion</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style27">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Imagenes/Decoracion de vistas/librorojo.png" Width="237px" />
                    <br />
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Imagenes/Decoracion de vistas/librotransparente.png" Width="237px" />
                </td>
                <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style11" DataKeyField="Nombre_E" DataSourceID="dsEditorialesE" Width="324px">
                        <ItemTemplate>
                            <em>
                            <asp:Label ID="lblEditoriales" runat="server" CssClass="auto-style28" Text='<%# Eval("Nombre_E") %>'></asp:Label>
                            </em>
                        </ItemTemplate>
                    </asp:DataList>
&nbsp;&nbsp; </td>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Imagenes/Decoracion de vistas/librotransparente.png" Width="237px" />
                    <br />
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Imagenes/Decoracion de vistas/librorojo.png" Width="237px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="dsEditorialesE" runat="server" ConnectionString="<%$ ConnectionStrings:PFprogramacion3ConnectionString %>" SelectCommand="SELECT [Nombre_E] FROM [Editoriales] WHERE ([Activo_E] = @Activo_E2)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="Activo_E2" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <div style="background-color:gray" class="auto-style21">       </div>
       <table class="auto-style1">
            <tr>
                <td class="auto-style34">MEDIOS DE PAGO</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><span class="auto-style38">
                    <br />
                    <span class="auto-style47">Efectivo</span></span><span class="auto-style46">-Tarjeta Visa </span> <span class="auto-style41">o</span> <span class="auto-style39">Master Card</span><span class="auto-style47">- </span> <span class="auto-style40">Rapi Pago</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style37">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/Medios de pago/billetes.png" Width="75px" />
                </td>
                <td class="auto-style37">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagenes/Medios de pago/logovisa.png" Width="75px" />
                </td>
                <td class="auto-style37">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Imagenes/Medios de pago/logomastercard.png" Width="75px" />
                </td>
                <td class="auto-style45">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Imagenes/Medios de pago/rapipago.png" Width="150px" />
                </td>
            </tr>
        </table>
&nbsp;
        <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
    <br />
    
     <footer class="centrado">  <table>
            <tr>
                <td class="auto-style42"><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Copyright © 2019-2020<span>&nbsp;</span></span><span class="auto-style8" style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Libra</span><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>S.A.</span></td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44"><strong><em>Email: Libros.Libra@gmail.com</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style42"><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">TODOS LOS DERECHOS RESERVADOS.</span></td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42">Av. Hipólito Yrigoyen 288, B1617 Gral. Pacheco, Provincia de Buenos Aires</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
            </tr>
        </table></footer>
</body>
</html>
