<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="Sitem.makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .auto-style5 {
            width: 12px;
            height: 12px;
        }
         .auto-style6 {
             height: 63px;
         }
         .auto-style7 {
             height: 200px;
         }
         .auto-style8 {
             width: 100%;
             height: 40px;
             float: left;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:690px;height:auto;margin:0 auto;">
        <asp:DataList ID="dl_mkale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px;margin:0 auto;height:auto;">

                    <div style="width: 690px; height: 40px; float: left">
                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; line-height: 40px; background-image: none; background-repeat: repeat-x; background-color: #E6E6E6;">
                            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makaleBaslik") %>' ForeColor="#202020"></asp:Label>
                        </div>
                    </div>
                    <div style="float:left;height:auto;width:690px; background-image: none; background-repeat: repeat; padding-bottom: 10px; background-color: #FFFFFF;">

                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>' ForeColor="#333333"></asp:Label>

                    </div>
                    <div style="width:690px;float:left; height:20px;line-height:20px;font-size:12px; background-color: #999966;">

                        <div style="width:auto;height:20px;float:left;margin-right:15px; background-color: #999966;">
                            <img alt="" class="auto-style4" src="tema/tarih.png" height="12" width="12" />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                        </div>
                         <div style="width:auto;height:20px;float:left;margin-right:15px; background-color: #999966;">
                             <img alt="" class="auto-style4" src="tema/göz.png" height="12" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>
                        </div>
                         <div style="margin-right:15px; background-color: #999966;" class="auto-style6">
                             <img alt="" class="auto-style5" src="tema/yorum.png" />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>
                        </div>


                    </div>
                    <div style="background-color: #FFFFFF;" class="auto-style8"></div>

                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>

    <div style="height:30px;width:100%;"></div>
    <div style="background-color:#658A8D; color:#fff;height:30px;width:100%; text-align:center;font-size:24px;font-weight:bolder;">Makaleye Yapılan Yorumlar</div>
    <div style="height:10px;width:100%;"></div>
    <div style="width:690px;height:auto;margin:0 auto;">



        <asp:DataList ID="dl_yorumGetr" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width: 690px; height: auto; float: left; ">
                    <div style="border-color:#658A8D; float: left; width: 50px; height: 60px; border-style: dotted; border-width: 1px;">
                        <asp:Image ID="Image4" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="50px" />
                    </div>
                    <div style="float: left; height: auto; width: 630px">
                        <div style="float: left; width: 630px; height: 25px">
                              &nbsp;&nbsp;
                              <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorumAdSoyad") %>' Font-Size="18px" ForeColor="Black"></asp:Label>  &nbsp; -&nbsp;
                              <asp:Label ID="Label7" runat="server" Font-Size="12px" ForeColor="#333333" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>'></asp:Label>


                        </div>

                        <div style="float:left;width:630px;height:auto;">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="Gray"></asp:Label>

                        </div>
                    </div>
                </div>
                <div style="float: left; width: 690px; height: 20px">
                </div>
            </ItemTemplate>
        </asp:DataList>



    </div>



    <div style="height:30px;width:100%;"></div>
    <div style="background-color:#658A8D; color:#fff;height:30px;width:100%; text-align:center;font-size:24px;font-weight:bolder;">Yorum Yap</div>
    <div style="height:10px;width:100%;"></div>
    <div class="auto-style7">


        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #658A8D; margin-left:5px;">
            <asp:TextBox ID="txt_yorum" placeHolder="Buraya Yorumunuzu Yazınız" runat="server" Height="200px" TextMode="MultiLine" Width="331px"></asp:TextBox>
        </div>

        <div style="float: right; width: 330px; height: 200px; border: 1px dotted #658A8D;margin-right:5px;">


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
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="butonGorsel" Text="Gönder" OnClick="btn_yorumEkle_Click" />
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
