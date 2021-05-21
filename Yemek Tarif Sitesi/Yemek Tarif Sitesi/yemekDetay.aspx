<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="yemekDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    .auto-style4 {
        text-align: right;
    }
    .auto-style5 {
        font-size: large;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: xx-large" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" style="font-size: x-small" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div style="background-color: #999999" class="auto-style5">
        Yorum Yap
    </div>
     <div style="text-align: left; background-color: #CCCCCC">
         <table class="auto-style3">
             <tr>
                 <td class="auto-style4">Ad-Soyad:</td>
                 <td>
                     <asp:TextBox ID="textBoxYorumAdSoyad" runat="server" Width="220px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">Mail:</td>
                 <td>
                     <asp:TextBox ID="textBoxYorumMail" runat="server" TextMode="Email" Width="220px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">Yorumunuz:</td>
                 <td>
                     <asp:TextBox ID="textBoxYorum" runat="server" Height="150px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td>
                     <asp:Button ID="butonYorumYap" runat="server" OnClick="butonYorumYap_Click" Text="Yorumu Gönder" Width="220px" />
                 </td>
             </tr>
         </table>
    </div>
</asp:Content>
