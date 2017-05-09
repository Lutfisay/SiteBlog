<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumGuncelle.aspx.cs" Inherits="Sitem.admin.yorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #669999">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Gönderen Kişi</td>
            <td style="text-align: left">
                <asp:TextBox ID="tb_Gnderen" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum</td>
            <td style="text-align: left">
                <asp:TextBox ID="tb_Yorum" runat="server" CssClass="txt" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Onay</td>
            <td style="text-align: left">
                <asp:CheckBox ID="cb_Onayla" runat="server" Text="Onayla" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnGuncelle" runat="server" CssClass="butonGorsel" OnClick="btnGuncelle_Click" Text="Güncelle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
