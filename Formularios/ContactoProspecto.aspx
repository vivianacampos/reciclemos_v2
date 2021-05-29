<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactoProspecto.aspx.cs" Inherits="reciclemos_v2.Formularios.ContactoProspecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
    <title>Contacto</title>
</head>
<body>
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
                    <a class="nav-link active"  href="../Vistas/index.html">Inicio</a>
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
<div class="container">
    <p class="display-4 p-5">¿Tienes consultas?</p>
    <h3 class="pl-5">Habla con nosotros</h3>

    <form id="form3" runat="server">
        <div class="row form-control padd">
            <div class="col-sm-8 padd">
                <asp:Label ID="LblNom" runat="server" Text="Nombre Completo" ></asp:Label>
            </div>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtNom" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-8 padd">
                <asp:Label ID="LblCorr" runat="server" Text="Correo"></asp:Label>
            </div>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtCorr" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-8 padd">
                <asp:Label ID="LblTel" runat="server" Text="Teléfono"></asp:Label>
            </div>
            <div class="col-sm-8">
                <asp:TextBox ID="TxtTel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-8 pt-5">
                <asp:TextBox ID="TxtArea" TextMode="multiline" Columns="95" Rows="5" runat="server" CssClass="pl-2" placeholder="Cuéntanos tus dudas..."></asp:TextBox>
            </div>
            <div class="col-sm-8 pt-4 text-center">
                <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" CssClass="btn btn-success" Width="250"/>
            </div>
        </div>
    </form>
</div>

</body>
</html>
