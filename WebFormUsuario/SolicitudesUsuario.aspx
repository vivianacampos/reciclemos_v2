﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="SolicitudesUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormMasterPage.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .titulo {
            font-weight: bold;
        }

        .borde {
            border-radius: 1em;
            box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
        }

        .b {
            border-top-left-radius: 1em;
            border-top-right-radius: 1em;
        }
    </style>
    <div class="container px-5 py-2">
        <h4 class="text-center py-3">Formulario de retiro de materiales</h4>

        <div class="d-flex flex-wrap">
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00botella.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Plástico N°1 PET</h5>
                        <p class="card-text">Botellas de bebida, botella de agua mineral y botellas de aceite</p>
                        <asp:Label ID="Label5" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPet" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00bolsa.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Plástico N°2 PEAD</h5>
                        <p class="card-text">Bolsas de plástico, implementos de aseo y bolsas de supermercado</p>
                        <asp:Label ID="Label1" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPebd" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00shampoo.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Plástico N°4 PEBD</h5>
                        <p class="card-text">Envases de shampoo, envases de crema y bolsas para basura.</p>
                        <asp:Label ID="Label2" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPead" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00vaso.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Plástico N°5 PP </h5>
                        <p class="card-text">Mamaderas, tapas de botellas, contenedores de alimento.</p>
                        <asp:Label ID="Label3" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPp" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00pote.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Plástico N°6 PS</h5>
                        <p class="card-text">Vasos, platos y cubiertos desechables.</p>
                        <asp:Label ID="Label4" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPs" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00botellavidrio.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Vidrio</h5>
                        <p class="card-text">Botellas y frascos de vidrio.</p>
                        <asp:Label ID="Label6" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtVidrio" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00lata.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Latas</h5>
                        <p class="card-text">Latas de bebida y latas de conservas.</p>
                        <asp:Label ID="Label7" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtLata" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00papel.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Papel</h5>
                        <p class="card-text">Diarios, revistas, papeles en general.</p>
                        <asp:Label ID="Label8" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtPapel" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00aluminio.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Aluminio</h5>
                        <p class="card-text">Bandejas de aluminio, tapas de botellas.</p>
                        <asp:Label ID="Label9" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtAlum" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00tetraBrick.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Tetrapack</h5>
                        <p class="card-text">Envases Tetrapack de todo tipo.</p>
                        <asp:Label ID="Label10" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtTetra" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="d-flex wrap px-3 pt-4">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00caja.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center">Cartón</h5>
                        <p class="card-text">Cajas de Cartón, bandejas y otros.</p>
                        <asp:Label ID="Label11" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TxtCarton" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center pt-5 pb-5">
        <asp:Button ID="Button1" runat="server" Text="Solicitar Retiro" CssClass="btn btn-primary" />
    </div>
</asp:Content>