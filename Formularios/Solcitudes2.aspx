<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solcitudes2.aspx.cs" Inherits="reciclemos_v2.Formularios.Solcitudes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Solicitudes de Retiro</title>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <style>
        .colorNav {
            background-color: #28b5b5;
        }
        .colorFoot {
            background-color: #8fd9a8;
            align-items: center;
            
            letter-spacing: 7px;
            color:white;
            font-size: 17px;
        }
        .opacidad{
            opacity:0.3;
        }
        .padd{
            padding-top: 16px; 
        }
        .align{
            padding-left: 640px;
        }
        .titulo{
            font-weight: bold;
        }
        .borde{
            border-radius: 1em;
            box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
        }
        .b{
            border-top-left-radius: 1em;
            border-top-right-radius: 1em;
        }
        .auto-style1 {
            margin-bottom: 1px;
        }
    </style>
        <nav class="auto-style1">
        <div class="container-fluid">
            <a class="navbar-brand pl-2" href="#"><img src="../Imagenes/RE3.png" width="50" height="50"/> Re-Ciclemos</a>
            <a class="navbar-brand" href="#">Solicitar Retiros</a>
            <a class="navbar-brand" href="#">Reportes</a>
            <a class="navbar-brand" href="#">Logros</a>
            <a class="navbar-brand" href="#">Mensajes</a>
            <a class="navbar-brand pr-5" href="#">Mis Solicitudes</a>
            <a class="navbar-brand pr-5" href="#"><i class="fas fa-sign-out-alt"><asp:ImageButton ID="ImgBtnLogout" runat="server" OnClick="ImgBtnLogout_Click" /> </i></a>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container-fluid px-5 pt-2 pb-2">
            <h4 class="text-center py-5">Formulario de retiro de materiales</h4>
            <div class="row">
                <div class="col-sm-3 p-5">
                    <div class="card borde" style="width: 14rem;">
                        <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                            <img src="../Imagenes/00botella.png" width="100" height="100"/>
                        </div>
                        <div class="card-body">
                        <h5 class="card-title">Plástico N°1 PET</h5>
                        <p class="card-text">Botellas de bebida, botella de agua mineral y botellas de aceite</p>
                        <asp:Label ID="Label5" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TextBox1" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-sm-3 p-5">
                   
                </div>
                <div class="col-sm-3 p-5">
                    
                </div>
                <div class="col-sm-3 p-5">

                </div>
            </div>
        </div>
        <div class="text-center pt-0 pb-5">
            <asp:Button ID="Button1" runat="server" Text="Solicitar Retiro" CssClass="btn btn-primary"/>
        </div>
    </form>
</body>
</html>
