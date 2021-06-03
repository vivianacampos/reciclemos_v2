<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solcitudes.aspx.cs" Inherits="reciclemos_v2.Formularios.Solcitudes" %>

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
    </style>
        <nav class="navbar navbar-expand-lg navbar-dark colorNav p-0">
        <div class="container-fluid">
            <a class="navbar-brand pl-2" href="#"><img src="../Imagenes/RE3.png" width="50" height="50"/> Re-Ciclemos</a>
            <a class="navbar-brand" href="#">Solicitar Retiros</a>
            <a class="navbar-brand" href="#">Reportes</a>
            <a class="navbar-brand" href="#">Logros</a>
            <a class="navbar-brand" href="#">Mensajes</a>
            <a class="navbar-brand pr-5" href="#">Mis Solicitudes</a>
            <a class="navbar-brand pr-5" href="#"><i class="fas fa-sign-out-alt"></i></a>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container-fluid p-5">
            <h4 class="text-center">Formulario de retiro de materiales</h4>
            <div class="row">
                <div class="col-sm-3 p-5">
                    <div class="text-justify">
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="LblPET" runat="server" Text="Plásticos PET N°1"></asp:Label>
                            <br />
                            <img src="../Imagenes/00botella.png" width="100" height="100"/>
                            <p class="pl-3 pt-3">Botellas de bebida - botellas de agua botellas de aceite</p>
                            <asp:Label ID="Label5" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TxtPet" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                    </div>
                    <div class="text-justify">
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label1" runat="server" Text="Plástico PEAD  N°2"></asp:Label>
                            <br />
                            <img src="../Imagenes/00bolsa.png" width="100" height="100"/>
                            <p class="pl-3 pt-3">Bolsas de plástico - implementos de aseo</p>
                            <asp:Label ID="Label2" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TxtPEAD" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                    </div>
                    <div class="text-justify">
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label3" runat="server" Text="Plástico PEDB N°4"></asp:Label>
                            <br />
                            <img src="../Imagenes/00shampoo.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Envases de shampoo - envases de crema</p>
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox2" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-sm-3 p-5">
                    <div class="text-justify">
                         <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label6" runat="server" Text="Plástico PP N°5"></asp:Label>
                            <br />
                            <img src="../Imagenes/00pote.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Mamaderas - tapas de botellas - contenedores de alimento</p>
                            <asp:Label ID="Label7" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox3" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label8" runat="server" Text="Plástico PS  N°6"></asp:Label>
                            <br />
                            <img src="../Imagenes/00vaso.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Vasos - platos - cubiertos desechables</p>
                            <asp:Label ID="Label9" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox4" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label10" runat="server" Text="Vidrio"></asp:Label>
                            <br />
                            <img src="../Imagenes/00botellavidrio.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Botellas - frascos de vidrio</p>
                            <asp:Label ID="Label11" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox5" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 p-5">
                    <div class="text-justify">
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label12" runat="server" Text="Latas"></asp:Label>
                            <br />
                            <img src="../Imagenes/00lata.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Latas de bebida - latas de conservas - latas jurel</p>
                            <asp:Label ID="Label13" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox6" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label14" runat="server" Text="Papel"></asp:Label>
                            <br />
                            <img src="../Imagenes/00papel.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Diarios - revistas - papeles en general</p>
                            <asp:Label ID="Label15" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox7" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label16" runat="server" Text="Aluminio"></asp:Label>
                            <br />
                            <img src="../Imagenes/00aluminio.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Bandejas de aluminio, tapas de botellas</p>
                            <asp:Label ID="Label17" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox8" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>                        

                    </div>
                </div>
                <div class="col-sm-3 p-5">
                    <div class="text-justify">
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label18" runat="server" Text="Tetrapack"></asp:Label>
                            <br />
                            <img src="../Imagenes/00tetraBrick.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Envases tetrapack - jugos - leches - salsas</p>
                            <asp:Label ID="Label19" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox9" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>
                        <div class="py-2 pr-5 text-center pb-4">
                            <asp:Label ID="Label20" runat="server" Text="Cartón"></asp:Label>
                            <br />
                            <img src="../Imagenes/00caja.png" width="100" height="100"/>
                            <p class="pl-3 pt-3 mx-1">Cajas de Cartón y bandejas de huevo</p>
                            <asp:Label ID="Label21" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="TextBox10" type="number" runat="server" width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
