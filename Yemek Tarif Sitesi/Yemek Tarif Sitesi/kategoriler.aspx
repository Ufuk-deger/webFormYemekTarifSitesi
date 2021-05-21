<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: right;
    }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            width: 36px;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style8 {
            width: 180px;
        }
        .auto-style9 {
            width: 180px;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
        }
        .auto-style11 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="panelListeAc" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="panelListeAc_Click" />
                </td>
                <td>
                    <asp:Button ID="buttonListeKapat" runat="server" CssClass="auto-style5" Height="30px"  Text="-" Width="30px" OnClick="buttonListeKapat_Click1" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Kategori Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("kategoriAd") %>' style="text-align: left"></asp:Label></td>
                        <td class="auto-style2">
                           <a href="kategoriler.aspx?kategoriId=<%#Eval("kategoriId") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/icons8-waste-100.png" Width="59px" style="text-align: right" /></td></a>
                        <td class="auto-style2">
                            <a href="kategoriGuncelleme.aspx?kategoriId=<%# Eval("kategoriId") %>"><asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/icons/icons8-update-100.png" Width="53px" /></td></a>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Button ID="btnKategroiEklemeAc" runat="server" CssClass="auto-style5" Height="30px" OnClick="btnKategroiEklemeAc_Click" Text="+" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="btnKategoriEklemeKapat" runat="server" CssClass="auto-style5" Height="30px" OnClick="btnKategoriEklemeKapat_Click" Text="-" Width="30px" />
                    </strong>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Kategori Ekleme"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9" style="margin-left: 80px">
                    <asp:Label ID="Label4" runat="server" Text="Kategori Ad:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="textBoxKategoriAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="margin-left: 160px">
                    <asp:Label ID="Label5" runat="server" Text="Kategori İkon:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="margin-left: 160px">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonKategoriyiEkle" runat="server" OnClick="buttonKategoriyiEkle_Click" Text="Kategoriyi Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
