<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="SolicitudesUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormMasterPage.Inicio" %>

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
        <h4 class="text-center py-3">Solicitud de retiro de materiales</h4>

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
                        <asp:TextBox ID="PET" TabIndex="1" Text="0" runat="server" Width="60" placeholder="0" min="0" max="500" TextMode="Number"></asp:TextBox>
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
                        <asp:TextBox ID="PEBD" TabIndex="2" Text="0" TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="PEAD" TabIndex="3" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="PP" TabIndex="4" Text="0" TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="PS" TabIndex="5" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Vidrio" TabIndex="6" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Lata" TabIndex="7" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Papel" TabIndex="8" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Aluminio" TabIndex="9" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Tetra" TabIndex="10" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0" ></asp:TextBox>
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
                        <asp:TextBox ID="Carton" TabIndex="10" Text="0"  TextMode="Number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="py-5 px-5 d-flex">
            <div class="text-center flex-wrap">
                <asp:TextBox ID="TxtFecha" runat="server" TextMode="Date" CssClass="form-control" Width="250px" CausesValidation="True"></asp:TextBox>
            </div>
            <div class="flex-wrap pl-4">
                <asp:DropDownList ID="DdlHorario" runat="server" CssClass="form-control" Width="100px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <asp:Label ID="LblPrueba" runat="server" Text="Label"></asp:Label>
    <div class="text-center pb-5">
        <asp:Button ID="BtnSolicitud" runat="server" Text="Solicitar Retiro" CssClass="btn btn-primary" OnClick="BtnSolicitud_Click" />
    </div>

</asp:Content>
