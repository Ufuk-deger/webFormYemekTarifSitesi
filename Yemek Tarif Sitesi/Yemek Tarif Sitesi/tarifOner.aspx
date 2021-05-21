<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="tarifOner.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="textBoxTarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzemeler:</td>
            <td>
                <asp:TextBox ID="textBoxMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yapılış:</td>
            <td>
                <asp:TextBox ID="textBoxYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tarifi Öneren:</td>
            <td>
                <asp:TextBox ID="textBoxTarifSahibi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail:</td>
            <td>
                <asp:TextBox ID="textBoxMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="buttonTarifOner" runat="server" Height="44px" style="font-weight: 700; margin-left: 48px" Text="Gönder" Width="149px" OnClick="buttonTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
