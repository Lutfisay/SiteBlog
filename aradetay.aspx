<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="aradetay.aspx.cs" Inherits="Sitem.aradetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div style="width:690px;height:auto;margin:0 auto;">
        <asp:DataList ID="dl_ara" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px;margin:0 auto;height:auto;">

                    <div style="width: 690px; height: 40px; float: left">
                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; line-height: 40px; background-image: none; background-repeat: repeat-x; background-color: #E6E6E6;">
                            <a href="makaledetay.aspx?makaleID=<%# Eval("makaleID") %>"><asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makaleBaslik") %>' ForeColor="#202020"></asp:Label></a>
                        </div>
                    </div>
                    <div style="float:left;height:auto;width:690px; background-image: none; background-repeat: repeat; padding-bottom: 10px; background-color: #FFFFFF;">

                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleOzet") %>' ForeColor="#333333"></asp:Label>

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
                    <div style="width:100%;height:40px;float:left; background-color: #FFFFFF;"></div>

                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>




</asp:Content>
