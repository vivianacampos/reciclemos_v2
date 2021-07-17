<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactoProspecto.aspx.cs" Inherits="reciclemos_v2.Formularios.ContactoProspecto" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/Font-awesome/css/all.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Contacto</title>
</head>
<body>
    <style>
        .padd {
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

        #fd {
            position: fixed;
            top: 0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            padding: 0px;
            margin: 0px;
            background: rgba(0, 0, 0, 0.5);
            overflow: hidden;
            z-index: 1;
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
    <div class="container">
        <p class="display-4 p-5">¿Tienes consultas?</p>
        <h3 class="pl-5">Habla con nosotros</h3>

        <form id="form3" runat="server">
            <div class="row form-control padd">
                <div class="col-sm-8 padd">
                    <asp:Label ID="LblNom" runat="server" Text="Nombre Completo"></asp:Label>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TxtNom" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtNom" runat="server" ErrorMessage="Debe indicar un nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-8 padd">
                    <asp:Label ID="LblCorr" runat="server" Text="Correo"></asp:Label>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TxtCorr" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCorr" ErrorMessage="Debe indicar un correo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" ForeColor="Red" runat="server" ControlToValidate="TxtCorr" ErrorMessage="Debe indicar correo en formato válido ej: contacto@dominio.cl" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-8 padd">
                    <asp:Label ID="LblTel" runat="server" Text="Teléfono"></asp:Label>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TxtTel" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtTel" runat="server" ErrorMessage="Debe indicar un número telefónico" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-8 pt-5">
                    <asp:TextBox ID="TxtArea" TextMode="multiline" Columns="95" Rows="5" runat="server" CssClass="pl-2" placeholder="Cuéntanos tus dudas..."></asp:TextBox>
                </div>
                <div class="col-sm-8 pt-5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtArea" ErrorMessage="Debe expresar sus consultas o dudas" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-sm-8 pt-4 text-center">
                            <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" CssClass="btn btn-success" Width="250" OnClick="BtnEnviar_Click" />
                            <ajaxToolkit:ModalPopupExtender ID="BtnEnviar_ModalPopupExtender" runat="server" BehaviorID="BtnEnviar_ModalPopupExtender" PopupControlID="UpdateProgress1" TargetControlID="BtnEnviar">
                            </ajaxToolkit:ModalPopupExtender>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div id="fd">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Confirmación</h5>
                                        <asp:ImageButton ID="ImageButton1" runat="server" data-bs-dismiss="modal" ImageUrl="~/resources/bootstrap-icons-1.5.0/x-lg.svg" />
                                    </div>
                                    <div class="modal-body text-center">
                                        <asp:Label ID="Label2" runat="server" Text="Mensaje enviado" ForeColor="Green"></asp:Label>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="Button2" runat="server" Text="Cerrar" class="btn btn-primary" data-bs-dismiss="modal" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <div class="col-sm-8 pt-5">
                    <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
