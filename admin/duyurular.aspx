<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="Sitem.admin.duyurular" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            width: 188px;
        }
        .auto-style4 {
            width: 392px;
        }
        .auto-style5 {
            width: 64px;
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="dyr_Arti" runat="server" Height="25px" Text="+" Width="25px" OnClick="dyr_Arti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="dyr_Eksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="dyr_Eksi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DUYURU EKLEME PANELİ</div>
    <asp:Panel ID="pnl_duyuru" runat="server" BackColor="#669999" ForeColor="White">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Başlık&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_dBaslik" runat="server" CssClass="txt" Height="25px" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">İçerik&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <CKEditor:CKEditorControl ID="txt_dİcerik" BasePath="/ckeditor/" runat="server" Width="450px" ></CKEditor:CKEditorControl> 
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_dEkle" runat="server" CssClass="butonGorsel" Text="EKLE" OnClick="btn_dEkle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
        <div style="height:30px;"></div>
        <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="dArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="dArti_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="dEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="dEksi_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DUYURU DÜZENLEME PANELİ</div>
    <asp:Panel ID="dGuncelle" runat="server" BackColor="#669999" ForeColor="White">
        <asp:DataList ID="dl_Gtr" runat="server" Width="700px" OnSelectedIndexChanged="dl_Gtr_SelectedIndexChanged">
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">DUYURU BAŞLIK</td>
                        <td class="auto-style3">GÜNCELLE</td>
                        <td>SİL</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                        </td>
                        <td class="auto-style3">
                            <a href="duyuruguncelle.aspx?duyurularID=<%# Eval("duyurularID") %>"><img alt="" class="auto-style5" src="../tema/duzenle.png" /></a>
                        </td>
                        <td>
                            <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil"><img alt="" class="auto-style5" src="../tema/sil.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <div style="height:30px;"></div>
    </div>
</asp:Content>
