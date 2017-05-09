<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="Sitem.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 290px;
        }
        .auto-style3 {
            width: 402px;
        }
        .auto-style4 {
            width: 417px;
        }
        .auto-style5 {
            width: 141px;
        }
        .auto-style7 {
            width: 64px;
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="btn_arti" runat="server" Height="25px" OnClick="btn_arti_Click" Text="+" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_eksi" runat="server" Height="25px" OnClick="btn_eksi_Click" Text="-" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ EKLEME PANELİ</div>
    <asp:Panel ID="pnl_kategori" runat="server" BackColor="#669999" ForeColor="White">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Kategori Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_adi" runat="server" CssClass="txt" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Sıra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_sira" runat="server" CssClass="txt" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Resim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="file_yukle" runat="server" CssClass="txt" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btn_ekle" runat="server" CssClass="butonGorsel" OnClick="btn_ekle_Click" Text="EKLE" />
                </td>
            </tr>
        </table>




    </asp:Panel>
        <div style="height:30px;"></div>
         <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="btnArti" runat="server" Height="25px" Text ="+" Width="25px" OnClick="btnArti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnEksi" runat="server" Height="25px" Text ="-" Width="25px" OnClick="btnEksi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ DÜZENLEME PANELİ</div>
    <asp:Panel ID="pnl_duzenle" runat="server" BackColor="#669999" ForeColor="White">
        <asp:DataList ID="dl_getir" runat="server" Width="700px">
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">KATEGORİ ADI</td>
                        <td class="auto-style5">GÜNCELLE</td>
                        <td>SİL</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                        </td>
                        <td class="auto-style5">
                            <a href="kategoriguncelle.aspx?kategoriID=<%# Eval("kategoriID")%>"><img alt="" class="auto-style7" src="../tema/duzenle.png" /></a>
                        </td>
                        <td>
                            <a href="kategoriler.aspx?kategoriID=<%# Eval("kategoriID")%>&islem=sil"><img alt="" class="auto-style7" src="../tema/sil.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
         </asp:Panel>
        <div style="height:30px;"></div>
    </div>
    </asp:Content>