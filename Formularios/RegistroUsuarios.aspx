<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="reciclemos_v2.Formularios.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
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
                    <asp:TextBox ID="TxtDirección" runat="server" CssClass="form-control" placeholder="Av. Los Plátanos"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd">
                    <asp:Label ID="LblNumero" runat="server" Text="Número" CssClass="col-sm-6"></asp:Label>
                </div>
                <div class="col-sm-8 py-1">
                    <asp:TextBox ID="TxtNumero" runat="server" CssClass="form-control" placeholder="99"></asp:TextBox>
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
                    <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" placeholder="Letras ° Números ° mínimo 8 caracteres"></asp:TextBox>
                </div>
                <div class="col-8 form-control padd text-center pt-5">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-success" Width="300"/>
                </div>
           </div>
        </form>
    </div>
</body>
</html>
