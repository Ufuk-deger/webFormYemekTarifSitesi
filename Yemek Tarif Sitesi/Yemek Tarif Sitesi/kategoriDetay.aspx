<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            font-size: small;
            color: #000000;
        }
        .auto-style4 {
            font-size: small;
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="444px">
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td><a href="yemekDetay.aspx?yemekId=<%#Eval("yemekId")%>">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" style="text-align: center" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tarif:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong><em><span class="auto-style5">Tarih: </span>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text='<%# Eval("yemekEklemeTarih") %>'></asp:Label>
                    <span class="auto-style5">-Puan: </span>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style4" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
