<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleler.aspx.cs" Inherits="Sitem.admin.makaleler" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style5 {
            width: 399px;
        }
        .auto-style6 {
            width: 142px;
        }
        .auto-style7 {
            width: 64px;
            height: 64px;
        }
        .auto-style8 {
            width: 183px;
        }
        .auto-style9 {
        height: 20px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>        
        <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="mkl_arti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="mkl_arti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="mkl_eksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="mkl_eksi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAKALE EKLEME PANELİ</div>
    <asp:Panel ID="pnl_makale" runat="server" BackColor="#669999" ForeColor="White">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Kategori</td>
                <td>
                    <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Başlık</td>
                <td>
                    <asp:TextBox ID="txt_baslik" runat="server" CssClass="txt" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Özet</td>
                <td>
                    <asp:TextBox ID="txt_ozet" runat="server" CssClass="txt" Height="100px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">İçerik</td>
                <td>
                    <CKEditor:CKEditorControl ID="txt_icerik" BasePath="/ckeditor/" runat="server" Width="500px" ></CKEditor:CKEditorControl> 

               </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Slider</td>
                <td>
                    <asp:FileUpload ID="fu_slider" runat="server" CssClass="txt" Width="500px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_makale" runat="server" CssClass="butonGorsel" Text="EKLE" OnClick="btn_makale_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
        <div style="height:30px;"></div>
        <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="btn_mdArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_mdArti_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_mdEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_mdEksi_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAKALE DÜZENLEME PANELİ</div>
    <asp:Panel ID="pnl_makaleDuzenle" runat="server" BackColor="#669999" ForeColor="White">
        <asp:DataList ID="dl_makale" runat="server" Width="700px">
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">MAKALE ADI</td>
                        <td class="auto-style6">GÜNCELLE</td>
                        <td>SİL</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                        </td>
                        <td class="auto-style6">
                            <a href="makaleguncelle.aspx?makaleID=<%# Eval("makaleID") %>"><img alt="" class="auto-style7" src="../tema/duzenle.png" /></a>
                        </td>
                        <td>
                            <a href="makaleler.aspx?makaleID=<%# Eval("makaleID") %>&islem=sil"><img alt="" class="auto-style7" src="../tema/sil.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <div class="auto-style9"></div>
         <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="mklArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="mklArti_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="mklEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="mklEksi_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAKALE DOSYA EKLEME PANELİ</div>
    <asp:Panel ID="mkl_dosya" runat="server" BackColor="#669999" ForeColor="White">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: right">Dosya Seç</td>
                <td>
                    <asp:FileUpload ID="dsya_ekle" runat="server" CssClass="txt" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="mkl_dsyaekle" runat="server" CssClass="butonGorsel" OnClick="mkl_dsya_Click" Text="EKLE" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: right">Not&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>Ekleme işlemi /dosyalar/ eklenendosya.uzantı şeklinde kullanılacak</td>
            </tr>
        </table>
        </asp:Panel>
        <div style="height:30px;"></div>





    </div>
    </asp:Content>