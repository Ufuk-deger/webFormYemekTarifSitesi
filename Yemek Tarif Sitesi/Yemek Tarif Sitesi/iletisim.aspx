<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 26px;
        font-size: large;
        text-align: center;
    }
    .auto-style6 {
        height: 26px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style5" colspan="2"><strong>Mesaj Gönder</strong></td>
    </tr>
    <tr>
        <td class="auto-style6">Ad Soyad:</td>
        <td class="auto-style4">
            <asp:TextBox ID="textBoxAdSoyad" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresi:</td>
        <td class="auto-style4">
            <asp:TextBox ID="textBoxMail" runat="server" TextMode="Email" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Konu:</td>
        <td class="auto-style4">
            <asp:TextBox ID="textBoxMesajBaslik" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mesaj:</td>
        <td class="auto-style4">
            <asp:TextBox ID="textBoxMesaj" runat="server" Height="200px" TextMode="MultiLine" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="buttonMesajGonder" runat="server" OnClick="buttonMesajGonder_Click" Text="Mesajı Gönder" Width="220px" />
        </td>
    </tr>
</table>
</asp:Content>
