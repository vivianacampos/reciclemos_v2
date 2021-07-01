<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="reciclemos_v2.Formularios.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../resources/css/estilos.css" rel="stylesheet" />
    <title>Formulario de Registro</title>
</head>
<body>
    <!--Estilos-->
    <style>
        .padd {
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

    <div class="container pb-5">
        <div class="text-center padd">
            <h3 class="padd">Formulario de Registro</h3>
        </div>
        <form id="form2" runat="server" class="form">
            <div class="row justify-content-center">
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblRut" runat="server" Text="Rut" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" placeholder="12345678-9"></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtRut" ErrorMessage="Rut Obligatorio" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TxtRut" runat="server" ErrorMessage="Formato de rut inválido" ValidationExpression="^\d{1,2}\d{3}\d{3}[-][0-9kK]{1}$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblNombre" runat="server" Text="Nombre" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Nombre Obligatorio" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblApellido" runat="server" Text="Apellido" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtApellido" Display="Dynamic" ErrorMessage="Apellido Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblCorreo" runat="server" Text="Correo" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtCorreo" runat="server" CssClass="form-control" placeholder="correo@dominio.cl"></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Correo Obligatorio" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Formato de correo inválido" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblTelefono" runat="server" Text="Teléfono" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" placeholder="912345678"></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtTelefono" Display="Dynamic" ErrorMessage="Teléfono Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblDireccion" runat="server" Text="Dirección" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtDireccion" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ControlToValidate="TxtDireccion" ErrorMessage="Dirección Obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblComuna" runat="server" Text="Comuna" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:DropDownList ID="DdlComunas" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idComuna">
                                <asp:ListItem Selected="True">San Ramon</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:select %>" SelectCommand="SELECT [idComuna], [nombre] FROM [comuna]"></asp:SqlDataSource>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" runat="server" ControlToValidate="DdlComunas" ErrorMessage="Comuna Obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblContrasena" runat="server" Text="Contraseña" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" placeholder="Letras ° Números ° mínimo 8 caracteres" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="TxtContrasena" ErrorMessage="Contraseña Obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtContrasena" ErrorMessage="La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula." Display="Dynamic" ValidationExpression="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtContrasena" ErrorMessage="Contraseñas no coinciden" Display="Dynamic" ControlToCompare="TxtConfirma" ForeColor="Red"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
                <div class="col-10 form-control padd">
                    <asp:Label ID="LblConfirma" runat="server" Text="Confirme contraseña" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:TextBox ID="TxtConfirma" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-3">
                        </div>
                    </div>
                </div>
                <div class="col-sm-10 py-1">
                    <div class="row">
                        <div class="col-9">
                            <asp:CheckBox ID="ChbCondiciones" runat="server" CausesValidation="True" />
                             <asp:HyperLink ID="HlCondiciones" runat="server" href="../Vistas/Condiciones.html" Target="_blank">Aceptar términos y condiciones</asp:HyperLink>
                        </div>
                        <div class="col-3">
                            <!-- Validacion de checkbox-->
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Se requiere aceptar condiciones de uso"  ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
                        </div>
                    </div>
                  </div>
                <div class="col-10 form-control padd text-center pt-5 pb-5">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-success" Width="300" OnClick="BtnRegistrar_Click" />
                </div>
                <div class="text-center pt-5 align-content-center" style="width: 200px; height: 30px; color: #198754;">
                    <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </form>
    </div>

    <footer class="colorFooter p-2">
        <p class="text-center alignParr">
            <img src="../Imagenes/RE2.png" width="50" height="50" />
            Re-Ciclemos  &copy;
        </p>
    </footer>
</body>
</html>
