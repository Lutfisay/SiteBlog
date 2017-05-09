<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumCevapla.aspx.cs" Inherits="Sitem.admin.yorumCevapla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 211px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #669999">
    <tr>
        <td class="auto-style2" style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Admin</td>
        <td>
            <asp:TextBox ID="txt_Admin" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Yorum</td>
        <td>
            <asp:TextBox ID="txt_Yorum" runat="server" CssClass="txt" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="btn_yorumCevap" runat="server" CssClass="butonGorsel" OnClick="btn_yorumCevap_Click" Text="Cevap Yaz" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
