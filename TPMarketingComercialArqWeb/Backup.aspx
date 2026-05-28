<%@ Page Title="Backup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Backup.aspx.cs" Inherits="TPMarketingComercialArqWeb.Backup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<main>
    <div>
        <div>

            <div class="backup-logo">🖨️</div>
            <h2>3D Shop</h2>
            <p class="">Realizar backup de la base o restauración.</p>

            <asp:Button ID="btnBackup" runat="server" CssClass="btn btn-sm btn-primary me-1" 
                Text="Backup" OnClick="btnBackup_Click"/>

            <asp:FileUpload ID="fuRestore" runat="server" CssClass="form-control mt-2" />

            <asp:Button ID="btnRestore" runat="server" CssClass="btn btn-sm btn-primary me-1 mt-2" 
                Text="Restore" OnClick="btnRestore_Click" />

            <asp:Label ID="lblStatus" runat="server" CssClass="mt-3 text-info"></asp:Label>

        </div>
    </div>
</main>
</asp:Content>