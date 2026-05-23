<%@ Page Title="Bitacora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bitacora.aspx.cs" Inherits="TPMarketingComercialArqWeb.Bitacora" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
    .bitacora-header {
        background: linear-gradient(135deg, #1a1a2e 0%, #0f3460 100%);
        color: white;
        padding: 30px 40px;
        border-radius: 10px;
        margin-bottom: 28px;
    }
    .bitacora-header h1 {
        margin: 0 0 6px 0;
        font-size: 2rem;
        letter-spacing: 1px;
    }
    .bitacora-header p {
        margin: 0;
        color: #a0c4ff;
    }
    .table thead {
        background-color: #0f3460;
        color: white;
    }
    .table thead th {
        border: none;
        padding: 12px 16px;
    }
    .table tbody tr:hover {
        background-color: #f0f4ff;
    }
    .table tbody td {
        padding: 10px 16px;
        vertical-align: middle;
    }
</style>

<main>
    <section class="row" aria-labelledby="aspnetTitle">

        <div class="bitacora-header">
            <h1 id="aspnetTitle">📋 Bitácora</h1>
            <p>Registro de eventos del sistema ordenados por fecha descendente.</p>
        </div>

        <div class="col-md-12">
            <asp:GridView ID="gvBitacora" runat="server" CssClass="table table-striped table-bordered"
                AutoGenerateColumns="False" DataKeyNames="Id"
                AllowPaging="True" PageSize="20"
                OnPageIndexChanging="gvBitacora_PageIndexChanging"
                OnSelectedIndexChanged="gvBitacora_SelectedIndexChanged">
                <PagerSettings Mode="Numeric" PageButtonCount="5" />
                <PagerStyle CssClass="pagination-row" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="#" ReadOnly="True" ItemStyle-Width="50px" />
                    <asp:TemplateField HeaderText="Usuario">
                        <ItemTemplate><%# Eval("Usuario.NombreDeUsuario") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo">
                        <ItemTemplate><%# Eval("Usuario.Correo") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" />
                    <asp:BoundField DataField="Accion" HeaderText="Acción" />
                </Columns>
            </asp:GridView>
        </div>

    </section>
</main>
</asp:Content>