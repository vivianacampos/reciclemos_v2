<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="reciclemos_v2.Formularios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../resources/css/estilos.css" rel="stylesheet" />
    <title>Login</title>

</head>

<body>
    <style>
        .padd {
            padding-top: 1rem;
            padding-bottom: 1rem;
            border: none;
        }

        .largo {
            height: auto;
        }
    </style>
    <div>
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="d-flex justify-content-start">
                <a class="navbar-brand" href="index.html">
                    <img src="../Imagenes/reciclemos sin bordes.png" width="180" height="41" /></a>
            </div>
            <div class="navbar-collapse d-flex justify-content-start">
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link active" href="../Vistas/index.html">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Vistas/Nosotros.html">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Vistas/Enlaces.html">Enlaces</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Vistas/Materiales.html">Materiales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Vistas/Talleres.html">Talleres</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="ContactoProspecto.aspx">Contacto</a>
                    </li>
                </ul>
            </div>
            <div class="navbar-collapse d-flex justify-content-end">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="../Formularios/Login.aspx"><i class="fas fa-user"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Formularios/Login.aspx">Ingresar</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <div class="container well contenedor align-content-center">
        <div class="row">
            <div class="col-xs-12">
                <h2>Inicio de Sesión</h2>
            </div>
        </div>
        <form id="form1" runat="server" class="form-horizontal">

            <%--Cuenta--%>
            <div class="form-floating padd">
                <asp:Label ID="LblCorreo" runat="server" Text="Correo: " CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-12">
                    <asp:TextBox ID="TxtCorreo" runat="server" CssClass="form-control" placeholder="correo@dominio.cl"></asp:TextBox>
                </div>
            </div>
            <%--Contraseña--%>
            <div class="form-floating padd">
                <asp:Label ID="LblContrasena" runat="server" Text="Contraseña: " CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-12">
                    <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" type="password" placeholder="**********"></asp:TextBox>
                </div>
            </div>
            <div class="text-center">
                <asp:Label ID="LblMensaje" runat="server" ForeColor="Red" CssClass="fs-1"></asp:Label>
            </div>
            <%--Boton--%>
            <div class="form-floating padd">
                <div class="col padd largo text-center" style="text-align: left">
                    <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" CssClass="form-control btn btn-primary" OnClick="BtnIngresar_Click" Style="margin-left: 42" Width="242px" />
                </div>
            </div>
            <div class="text-center">
                <asp:HyperLink ID="HlRegistrar" runat="server" href="RegistroUsuarios.aspx">Registrarse</asp:HyperLink>
            </div>

        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>

</body>
</html>
