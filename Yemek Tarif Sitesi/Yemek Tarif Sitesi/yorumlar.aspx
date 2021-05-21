<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="Yemek_Tarif_Sitesi.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="buttonYorumAc" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="buttonYorumAc_Click" />
                </td>
                <td>
                    <asp:Button ID="buttonYorumKapat" runat="server" CssClass="auto-style5" Height="30px"  Text="-" Width="30px" OnClick="buttonYorumKapat_Click"  />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Onaylı Yorum Listesi"></asp:Label>
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
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumAdSoyad") %>' style="text-align: left"></asp:Label></td>
                        <td class="auto-style2">
                           <asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/icons8-waste-100.png" Width="59px" style="text-align: right" /></td>
                        <td class="auto-style2">
                       <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/icons/icons8-update-100.png" Width="53px" /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="buttonOnaysizYorumAc" runat="server" CssClass="auto-style5" Height="30px" Text="+" Width="30px" OnClick="buttonOnaysizYorumAc_Click" />
                </td>
                <td>
                    <asp:Button ID="buttonOnaysizYorumKapat" runat="server" CssClass="auto-style5" Height="30px"  Text="-" Width="30px" OnClick="buttonOnaysizYorumKapat_Click"  />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Onaysız Yorum Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumAdSoyad") %>' style="text-align: left"></asp:Label></td>
                        <td class="auto-style2">
                           <asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/icons8-waste-100.png" Width="59px" style="text-align: right" /></td>
                        <td class="auto-style2">
                          <a href="yorumDetay.aspx?yorumId=<%# Eval("yorumId")%>"><asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/icons/icons8-update-100.png" Width="53px" /></td></a>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
