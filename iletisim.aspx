<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 45px;
    }
    .auto-style3 {
        width: 24px;
        height: 24px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto;width:100%;float:left; color: #666666;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;
                    <img alt="" class="auto-style3" src="tema/face.png" /></td>
                <td>
                    <asp:LinkButton ID="lnk_adres" runat="server" OnClick="LinkButton1_Click" PostBackUrl="https://www.facebook.com/profile.php?id=100001583985995">Buraya Tıklayınız..</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

    <div style="height:40px;width:100%;float:left; color: #666666; font-weight: bolder;">&nbsp;&nbsp;&nbsp; Bana buradan mesaj gönderebilirsiniz .</div>

     <div class="auto-style7">


        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #2a595c; margin-left:5px;">
            <asp:TextBox ID="txt_mesaj" placeHolder="Buraya Mesajınızı Yazınız" runat="server" Height="200px" TextMode="MultiLine" Width="331px"></asp:TextBox>
        </div>

        <div style="float: right; width: 330px; height: 200px; border: 1px dotted #2a595c;margin-right:5px;">


            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_adSoyad" runat="server" placeHolder="Adınız Soyadınız" CssClass="txt" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_Email" runat="server" CssClass="txt" placeHolder="E-mail Adresiniz" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="butonGorsel" Text="Gönder" OnClick="btn_yorumEkle_Click"  />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>


        </div>

    </div>
    <div style="height:10px;width:100%;"></div>



</asp:Content>
