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

        .padd {
            padding-top: 16px;
        }

        .align {
            padding-left: 640px;
        }
            .auto-style1 {
                width: 119px;
            }
            .auto-style2 {
                width: 40%;
                height: 233px;
            }
    </style>
    <%--<nav class="navbar navbar-expand-lg navbar-dark colorNav p-1">
        <div class="container-fluid">
            <a class="navbar-brand pl-2" href="#"><img src="../Imagenes/RE3.png" width="50" height="50" /> Re-Ciclemos</a>
            <a class="navbar-brand" href="../Formularios/MantenedorUsuarios.aspx">Clientes</a>
            <a class="navbar-brand" href="#">Solicitudes</a>
            <a class="navbar-brand" href="#">Mensajes</a>
            <a class="navbar-brand" href="#">Reportes</a>
            <a class="navbar-brand pr-5" href="#"><i class="fas fa-sign-out-alt"></i></a>
        </div>
    </nav>--%>
   
    <form id="form1" runat="server">
        <h2>Mantenedor de Usuarios</h2>
        <asp:TextBox ID="TxtBusqueda" runat="server" placeholder="Ingrese Rut"></asp:TextBox>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" />
        <br />
        <div class="text-left">
            <asp:Panel ID="Panel1" runat="server" Visible="true" Height="243px">
                <table class="auto-style2" align="center">
                    <tr>
                        <td class="auto-style1">Rut</td>
                        <td>
                            <asp:TextBox ID="TxtRut" runat="server"></asp:TextBox>
                        </td>
                
                    </tr>
                    <tr>
                        <td class="auto-style1">Nombre</td>
                        <td>
                            <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                        </td>
                
                    </tr>
                    <tr>
                        <td class="auto-style1">Apellido</td>
                        <td>
                            <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
                        </td>
                
                    </tr>
                    <tr>
                        <td class="auto-style1">Correo</td>
                        <td>
                            <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
                        </td>
                
                    </tr>
                    <tr>
                        <td class="auto-style1">Teléfono</td>
                        <td>
                            <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
                        </td>
                
                    </tr>
                    <tr>
                        <td class="auto-style1">Dirección</td>
                        <td>
                            <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Comuna</td>
                        <td>
                            <asp:DropDownList ID="DdlComunas" runat="server" Width="181px" Height="27px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Contraseña</td>
                        <td>
                            <asp:TextBox ID="TxtContrasena" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
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
