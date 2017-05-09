<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleguncelle.aspx.cs" Inherits="Sitem.admin.makaleguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">&nbsp;</td>
            <td style="background-color: #0099CC; text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">Başlık</td>
            <td style="background-color: #0099CC; text-align: left">
                <asp:TextBox ID="mkl_baslk" runat="server" CssClass="txt" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">Özet</td>
            <td style="background-color: #0099CC; text-align: left">
                <asp:TextBox ID="mkl_ozt" runat="server" CssClass="txt" Height="100px" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">İçerik</td>
            <td style="background-color: #0099CC; text-align: left"><CKEditor:CKEditorControl ID="mkl_icerik" BasePath="/ckeditor/" runat="server" Width="450px" ></CKEditor:CKEditorControl> </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">Slider</td>
            <td style="background-color: #0099CC; text-align: left">
                <asp:FileUpload ID="mkl_slider" runat="server" CssClass="txt" Width="450px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">Yorum Sayısı</td>
            <td style="background-color: #0099CC; text-align: left">
                <asp:TextBox ID="mkl_yrmsyisi" runat="server" CssClass="txt" Width="100px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">&nbsp;</td>
            <td style="background-color: #0099CC; text-align: left">
                <asp:Button ID="mkl_gncelle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="mkl_gncelle_Click1"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #0099CC; text-align: right">&nbsp;</td>
            <td style="background-color: #0099CC; text-align: left">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
