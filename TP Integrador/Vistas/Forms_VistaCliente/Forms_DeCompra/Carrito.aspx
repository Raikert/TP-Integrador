<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="vistas.vista2_carrito_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=1, initial-scale=1.0"/>
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
            width: 585px;
        }
        .auto-style3 {
            width: 585px;
        }
        .auto-style6 {
            width: 369px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 1022px;
        }
        .auto-style16 {
            width: 812px;
            font-size: xx-large;
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
         


        .auto-style24 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            width: 120px;
            text-align: center;
        }
        .auto-style25 {
            width: 120px;
        }

        .auto-style27 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            width: 92px;
            text-align: center;
        }
        .auto-style28 {
            width: 92px;
        }

        .auto-style29 {
            height: 45px;
        }

        .auto-style30 {
            width: 62px;
        }
        .auto-style31 {
            height: 45px;
            width: 62px;
        }
        .auto-style33 {
            height: 45px;
            width: 343px;
        }
        .auto-style35 {
            width: 33px;
        }
        .auto-style36 {
            height: 45px;
            width: 33px;
        }
        .auto-style38 {
            width: 343px;
        }
    
        
        .auto-style43 {
            text-align: center;
        }
        
         #top{
           background-color:#FBD88C;
            width: 100%;
            height: 117px;
            border-style:groove;
            border-color:black;
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

           /*Metodos de pago*/
        .auto-style34 {
            width: 369px;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style37 {
            width: 121px;
            height: 79px;
        }
        .auto-style38 {
            color: #00CC00;
        }
        .auto-style39 {
            color: #FF6600;
        }
        .auto-style40 {
            color: #FF0000;
        }
        .auto-style41 {
            color: #000000;
        }
         .auto-style46 {
            color: #3333FF;
            font-size: large;
        }
        /*----------------------*/

           /*footer*/
         .auto-style42 {
            width: 556px;
        }
        .auto-style43 {
            width: 163px;
        }
        .auto-style44 {
            width: 248px;
        }

        /**/

        .auto-style52 {
            width: 97%;
            margin-left: 7px;
        }           
        
                                
        .auto-style56 {
            text-align: right;
        }

                        
        .auto-style57 {
            width: 564px;
        }
        
        .auto-style58 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            text-align: center;
        }
        
                                
        .auto-style59 {
            justify-content: center;
            align-items: center;
            border: 2px groove gray;
            text-align: center;
        }

                        
        </style>
</head>
<body class="centrado">
   
    <form class="centrado" id="form1" runat="server">
        <div id="top" >
            <table class="auto-style1">
                <tr id="hl1">
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style59">
                        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx" ForeColor="Blue">HOME</asp:HyperLink>
                    </td>
                    <td class="auto-style59">
                        <asp:HyperLink ID="hlContacto" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaContacto.aspx" ForeColor="Blue">Contacto</asp:HyperLink>
                    </td>
                    <td class="auto-style59">
                        <asp:LinkButton ID="lbMiCuenta" runat="server" OnClick="lbMiCuenta_Click">Mi Cuenta</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image6" runat="server" Height="84px" ImageUrl="~/Imagenes/Biblioteca Libra logo.png" Width="104px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style57">&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style56">
            <strong>&nbsp;
                <asp:Label ID="CantidadProductosCarrito" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                &nbsp;</strong><asp:Label ID="lblTexto" runat="server" CssClass="auto-style3" Text="producto  AR$"></asp:Label>
            &nbsp;<strong><asp:Label ID="MontoCarrito" runat="server" ForeColor="#CC3300" Text="0,00"></asp:Label>
            </strong>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/Imagenes/carrito logo.png" Width="49px" PostBackUrl="~/Forms_VistaCliente/Forms_DeCompra/Carrito.aspx" />
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
      
                    <br />
      
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
       
        <br />
       
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">Mi carrito</td>
                <td>
                    <asp:Button ID="btnIniciarCompra1" runat="server" BorderStyle="Double" CssClass="auto-style11" ForeColor="Red" Text="Iniciar proceso de compra" Height="27px" Width="170px" OnClick="btnIniciarCompra1_Click" />
                    <br />
                    <br />
                <asp:Label ID="lblErrorCompra" runat="server" CssClass="auto-style3" Font-Names="Bahnschrift" Font-Size="10.5pt" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style30">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style35">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("ImagenURL_Lb") %>' />
                        </td>
                        <td class="auto-style33">&nbsp;&nbsp;<span class="auto-style39">Datos del libro</span><br />
                            <br />
                            &nbsp; Codigo:
                            <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("Cod_Libro_Lb") %>'></asp:Label>
                            <br />
                            <br />
                            &nbsp; Titulo:
                            <asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("NombreLibro_Lb") %>'></asp:Label>
                            <br />
                            <br />
                            &nbsp; Editorial:
                            <asp:Label ID="lblEditorial" runat="server" Text='<%# Eval("Editorial_Lb") %>'></asp:Label>
                            <br />
                            <br />
                            &nbsp; AR$:
                            <asp:Label ID="lblPrecio" runat="server" Text='<%# Eval("Precio_Lb") %>'></asp:Label>
                        </td>
                        <td class="auto-style31">
                            <asp:DropDownList ID="ddlCantidad" runat="server" Height="16px" Width="62px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:LinkButton ID="lbEliminar" runat="server" CommandName="EliminarLibro" OnCommand="lbEliminar_Command" CommandArgument='<%# Eval("id_carrito") %>'>Eliminar</asp:LinkButton>
                        </td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style36"></td>
                    </tr>
                </table>
                <div class="auto-style43">
                    ----- o -----</div>
            </ItemTemplate>
        </asp:DataList>
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

        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Button ID="btnIniciarCompra0" runat="server" BorderStyle="Double" CssClass="auto-style11" ForeColor="Red" Text="Iniciar proceso de compra" Height="27px" Width="170px" OnClick="btnIniciarCompra0_Click" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
