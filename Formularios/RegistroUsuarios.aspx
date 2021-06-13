<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="reciclemos_v2.Formularios.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../resources/css/estilos.css"  rel="stylesheet"/>
    <title>Formulario de Registro</title>
</head>
<body>
<!--Estilos-->
    <style>
    .padd{
    padding-top: 0.8rem;
    padding-bottom: 0.8rem;
    border: none;
    }
    .colorNav {
        background-color: #4b778d;
    }

    .colorFooter {
        background-color: #8fd9a8;
    }

    .alignParr {
        align-items: center;
        font-weight: bold;
        letter-spacing: 4px;
    }
</style>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="d-flex justify-content-start">
            <a class="navbar-brand" href="index.html"><img src="../Imagenes/reciclemos sin bordes.png" width="180" height="41" /></a>
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

    <div class="container pb-5">
        <div class="text-center padd">
            <h3 class="padd">Formulario de Registro</h3>
        </div>
        <form id="form2" runat="server" class="form">

            <div class="row justify-content-center">
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblRut" runat="server" Text="Rut" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" placeholder="11.111.111-1"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblNombre" runat="server" Text="Nombre" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control" placeholder="Maria"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblApellido" runat="server" Text="Apellido" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control" placeholder="Gonzalez"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblCorreo" runat="server" Text="Correo" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtCorreo" runat="server" CssClass="form-control" placeholder="correo@dominio.cl"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblTelefono" runat="server" Text="Teléfono" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" placeholder="+569 12345678"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblDireccion" runat="server" Text="Dirección" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtDirección" runat="server" CssClass="form-control" placeholder="Av. Los Plátanos 99"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblComuna" runat="server" Text="Comuna" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:DropDownList ID="DdlComunas" runat="server" CssClass="form-control">
                        <asp:ListItem Selected="True" Value="SnRamon">San Ramón</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblContrasena" runat="server" Text="Contraseña" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" placeholder="Letras ° Números ° mínimo 8 caracteres" type="password"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblConfirma" runat="server" Text="Confirme contraseña" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtConfirma" runat="server" CssClass="form-control"  type="password"></asp:TextBox>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:CheckBox ID="ChbCondiciones" runat="server"/>
                    <asp:HyperLink ID="HlCondiciones" runat="server" href="../Vistas/Condiciones.html" target="_blank">Aceptar términos y condiciones</asp:HyperLink>
                </div>
                <div class="col-8 form-control padd text-center pt-5 pb-5">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-success" Width="300" OnClick="BtnRegistrar_Click" />
                </div>
                <div class="text-center pt-5 align-content-center" style="width: 200px; height: 30px; color: #198754;">
                <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>   
            </div>
           </div>

        </form>
    </div>

    <footer class="colorFooter p-2">
        <p class="text-center alignParr"><img src="../Imagenes/RE2.png" width="50" height="50" />  Re-Ciclemos  &copy;</p>
    </footer>
</body>
</html>
