<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="gununYemegi.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td style="font-weight: 700; font-size: x-large">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("gununYemegiAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><span class="auto-style4"><strong>Malzemeler:</strong></span><asp:Label ID="Label9" runat="server" Text='<%# Eval("gununYemegiMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><span class="auto-style4"><strong>Tarif:</strong></span><asp:Label ID="Label10" runat="server" Text='<%# Eval("gununYemegiTarif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image2" runat="server" Height="175px" ImageUrl="~/Resimler/depositphotos_88408056-stock-photo-adana-kebab-turkish-food.jpg" style="text-align: center" Width="364px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><span class="auto-style4"><strong>Puan:</strong></span><asp:Label ID="Label11" runat="server" Text='<%# Eval("gununYemegiPuan") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><span class="auto-style4"><strong>Tarih:</strong></span><asp:Label ID="Label12" runat="server" Text='<%# Eval("gununYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
