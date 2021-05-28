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
    <style>
    .padd{
    padding-top: 0.8rem;
    padding-bottom: 0.8rem;
    border: none;
    }
</style>
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="../Vistas/index.html">
                    <img src="../Imagenes/reciclemos_sin_bordes.png" width="180" height="41"/>
                </a>
                <div class="navbar-collapse">
                    <ul class="navbar-nav me-auto mb-lg-0 d-flex justify-content-center">
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
                            <a class="nav-link active" href="#">Contacto</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav d-flex justify-content-end align-content-end">
                        <li>
                            <a class="nav-link active" href="#"><i class="fas fa-user"></i></a>
                        </li>
                        <li>
                            <a class="nav-link active" href="#">Ingresar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="container">
        <div class="text-center padd">
            <h2 class="padd">Formulario de Registro</h2>
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
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
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
                    <asp:Label ID="Label1" runat="server" Text="Confirme contraseña" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtConfirma" runat="server" CssClass="form-control" placeholder="" type="password"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd text-center pt-5 pb-5">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-success" Width="300"/>
                </div>
           </div>
        </form>
    </div>
</body>
</html>
