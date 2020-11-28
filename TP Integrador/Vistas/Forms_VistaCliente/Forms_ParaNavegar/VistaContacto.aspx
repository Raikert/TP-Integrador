<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaContacto.aspx.cs" Inherits="vistas.VistaContacto" %>

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
        .auto-style8 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            color: rgb(230, 39, 65);
            letter-spacing: normal;
        }
        .auto-style10 {
            color: #00FF00;
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
         


        .auto-style30 {
            height: 23px;
        }
        .auto-style31 {
            text-decoration: underline;
            color: #800000;
        }
        .auto-style32 {
            color: #FF0000;
        }
        .auto-style33 {
            color: #33CC33;
            width: 356px;
        }
        .auto-style34 {
            color: #0066FF;
        }
        .auto-style35 {
            color: #000099;
        }
        .auto-style37 {
            height: 23px;
            width: 287px;
        }
        .auto-style38 {
            width: 287px;
        }
        .auto-style40 {
            color: #FF0000;
            width: 356px;
        }
        .auto-style41 {
            width: 356px;
        }
        .auto-style42 {
            text-decoration: underline;
        }

        #top{
           background-color:#FBD88C;
           width: 100%;
           height: 117px;
           border:groove;
           border-color:orangered;
            
         }



        .auto-style422 {
            width: 556px;
        }
        .auto-style433 {
            width: 163px;
        }
        .auto-style444 {
            width: 248px;
        }

        #tabladatos{
            background-color:rosybrown;
        }




        .auto-style52 {
            width: 97%;
            margin-left: 7px;
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


        .auto-style445 {
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
                    <td class="auto-style445">
                        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx" ForeColor="Blue">HOME</asp:HyperLink>
                    </td>
                    <td class="auto-style445">
                        <asp:HyperLink ID="hlContacto" runat="server" NavigateUrl="~/Forms_VistaCliente/Forms_ParaNavegar/VistaContacto.aspx" ForeColor="Blue">Contacto</asp:HyperLink>
                    </td>
                    <td class="auto-style445">
                        <asp:LinkButton ID="lbMiCuenta" runat="server" OnClick="lbMiCuenta_Click">Mi Cuenta</asp:LinkButton>
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
            <br />
            <br />
            <br />
        </div>
        <br />
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
        <br />
       
        <br />
        <span class="auto-style42"><strong>CONTACTO</strong></span><br />
        <br />
        <table id="tabladatos" class="auto-style1">
            <tr>
                <td class="auto-style38">Telefono:</td>
                <td>0008005233659841</td>
            </tr>
            <tr>
                <td class="auto-style37">Celular:</td>
                <td class="auto-style30">1154872366</td>
            </tr>
            <tr>
                <td class="auto-style38">Email:</td>
                <td><strong><em>Libros.Libra@gmail.com</em></strong></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="background-color:gray" class="auto-style21">       </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;TAMBIEN PUEDES SEGUIRNOS EN NUESTRAS REDES SOCIALES <span class="auto-style31">&quot;LIBRA POR UN FUTURO MEJOR&quot;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style41"><span class="auto-style34">Facebook:&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style35">&nbsp;<asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/Imagenes/facebook.png" Width="30px" />
&nbsp;NoteLIBRArasdeNosotros </td>
            </tr>
            <tr>
                <td class="auto-style33">Twitter:</td>
                <td class="auto-style10">&nbsp;<asp:Image ID="Image3" runat="server" Height="23px" ImageUrl="~/Imagenes/twitter.png" Width="28px" />
&nbsp;@NoteLIBRArasdeNosotros</td>
            </tr>
            <tr>
                <td class="auto-style40">Youtube:</td>
                <td class="auto-style32">&nbsp;<asp:Image ID="Image4" runat="server" Height="24px" ImageUrl="~/Imagenes/youtube.png" Width="27px" />
&nbsp;Note_LIBRA_rasdeNosotros</td>
            </tr>
        </table>
        <br />
        <br />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
    <br />
    
    <footer class="centrado">  <table>
            <tr>
                <td class="auto-style422"><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Copyright © 2019-2020<span>&nbsp;</span></span><span class="auto-style8" style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Libra</span><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>S.A.</span></td>
                <td class="auto-style433">&nbsp;</td>
                <td class="auto-style444"><strong><em>Email: Libros.Libra@gmail.com</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style422"><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">TODOS LOS DERECHOS RESERVADOS.</span></td>
                <td class="auto-style433">&nbsp;</td>
                <td class="auto-style444">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style422">Av. Hipólito Yrigoyen 288, B1617 Gral. Pacheco, Provincia de Buenos Aires</td>
                <td class="auto-style433">&nbsp;</td>
                <td class="auto-style444">&nbsp;</td>
            </tr>
        </table></footer>
</body>
</html>
