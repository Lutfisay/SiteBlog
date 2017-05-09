<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyuruguncelle.aspx.cs" Inherits="Sitem.admin.duyuruguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Başlık</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="dbaslik" runat="server" CssClass="txt" Width="440px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">İçerik</td>
            <td style="background-color: #669999"><CKEditor:CKEditorControl ID="dİcerk" BasePath="/ckeditor/" runat="server" Width="440px" ></CKEditor:CKEditorControl> </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="dGncelle" runat="server" CssClass="butonGorsel" Text="GÜNCELLE" OnClick="dGncelle_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
