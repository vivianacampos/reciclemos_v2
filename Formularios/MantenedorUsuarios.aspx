<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenedorUsuarios.aspx.cs" Inherits="reciclemos_v2.Formularios.MantenedorUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenedor de Usuarios</title>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet"/>
</head>
<body>
        <style>
        .colorNav {
            background-color: #8fd9a8;
        }

        .colorFoot {
            background-color: #28b5b5;
            align-items: center;
            letter-spacing: 7px;
            color: white;
            font-size: 17px;
        }

        .opacidad {
            opacity: 0.3;
        }
        .padd2{
            padding-top: 0.8rem;
            padding-bottom: 0.8rem;
            border: none;
            text-align: end;
            }

        .padd {
            padding-top: 16px;
        }

        .align {
            padding-left: 640px;
        }
        .auto-style3 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
    <nav class="navbar navbar-expand-lg navbar-dark colorNav p-1">
        <div class="container-fluid">
            <a class="navbar-brand pl-2" href="#"><img src="../Imagenes/RE3.png" width="50" height="50" /> Re-Ciclemos</a>
            <a class="navbar-brand" href="../Formularios/MantenedorUsuarios.aspx">Clientes</a>
            <a class="navbar-brand" href="#">Solicitudes</a>
            <a class="navbar-brand" href="#">Mensajes</a>
            <a class="navbar-brand" href="#">Reportes</a>
            <a class="navbar-brand pr-5" href="#"><i class="fas fa-sign-out-alt"></i></a>
        </div>
    </nav>
   
    <form id="form1" runat="server">
        <div class="container pt-5">
            <h1 class="display-4 text-center" style="font-size: 2.5rem; padding-bottom: 2rem;">Mantenedor de Usuarios</h1>
            <div class="row">
                <div class="col-2 pr-4" style="text-align:center;">
                    <asp:TextBox ID="TxtBusqueda" runat="server" placeholder="Ingrese Rut" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <div class="col-2 pl-5">
                    <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" CssClass="btn btn-primary"/>
                </div>
            </div>
            <div class="px-2 py-4">
                <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>
            </div>
            <br />
      
            <asp:Panel ID="Panel1" runat="server" Visible="true" Height="243px">
                <div class="container">
                    <div class="row ">
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblRut" runat="server" Text="Rut"></asp:Label>
                        </div> 
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtRut" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label>
                        </div>
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
                        </div>   
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblCorreo" runat="server" Text="Correo"></asp:Label>
                        </div>   
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblTelefono" runat="server" Text="Teléfono"></asp:Label>
                        </div>
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblDireccion" runat="server" Text="Dirección"></asp:Label>
                        </div>
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblComuna" runat="server" Text="Comuna"></asp:Label>
                        </div>
                        <div class="col-sm-5 py-1">
                            <asp:DropDownList ID="DdlComunas" runat="server" CssClass="form-control"> 
                                <asp:ListItem Selected="True">San Ramon</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-4 form-control padd2">
                            <asp:Label ID="LblContrasena" runat="server" Text="Contraseña"></asp:Label>
                        </div>
                        <div class="col-sm-5 py-1">
                            <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </asp:Panel> 
        </div>
    </form>
    
   <%-- <div class="padd">
        <footer class="colorFoot p-1">
            <div class="d-flex flex-wrap justify-content-around align">
                <div class="d-flex flex-wrap justify-content-center pt-1">
                    <p class="px-2 pt-2"><img src="../Imagenes/RE2.png" width="50" height="50" />  Re-Ciclemos  &copy;</p>
                </div>
                <div class="d-flex flex-wrap justify-content-end pl-5 pt-4">
                    <p class="px-2"><i class="fab fa-youtube"></i></p>
                    <p class="px-2"><i class="fab fa-twitter-square"></i></p>
                    <p class="px-2"><i class="fab fa-instagram-square"></i></p>
                    <p class="px-2"><i class="fab fa-facebook-square"></i></p>
                </div>
            </div>
        </footer>
    </div>--%>
</body>
</html>
