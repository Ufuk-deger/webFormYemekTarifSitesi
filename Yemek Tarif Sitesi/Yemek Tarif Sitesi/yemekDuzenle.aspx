<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yemekDuzenle.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 150px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Yemek Adı:</strong></td>
            <td>
                <asp:TextBox ID="textBoxYemekAdi" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="textBoxMalzemeler" runat="server" Height="150px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="textBoxTarif" runat="server" Height="200px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="dropDownListKategori" runat="server" Width="280px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Button ID="buttonYemegiGuncelle" runat="server" CssClass="auto-style5" OnClick="buttonYemegiGuncelle_Click" Text="Yemeği Güncelle" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
