<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriguncelle.aspx.cs" Inherits="Sitem.admin.kategoriguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Kategori Adı</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_adi" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Sırası</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_sira" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Adet</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_Adet" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Resim</td>
            <td style="background-color: #669999">
                <asp:FileUpload ID="fu_kresim" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="btn_gncelle" runat="server" CssClass="butonGorsel" OnClick="btn_gncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
