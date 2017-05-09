<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="Sitem.admin.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 405px;
        }
        .auto-style5 {
            width: 590px;
            height: 25px;
            float: left;
        }
        .auto-style6 {
            width: 45px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;line-height:25px;">&nbsp;&nbsp;
            <asp:Button ID="btn_Onayarti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_Onayarti_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Onayeksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_Onayeksi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYSIZ YORUM PANELİ</div>

    <asp:Panel ID="pnl_onaysızYorum" runat="server"  ForeColor="White">
        <asp:DataList ID="dl_yorum" runat="server">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #669999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;&nbsp; -&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp; -&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:25px;float:left; color: #666666; background-color: #8AB0B0; font-weight: bold;">Makale:&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #83CCCC;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="Black"></asp:Label>
                        </div>
                        <div class="auto-style5">
                            <table class="auto-style1" style="text-align: right">
                                <tr>
                                    <td class="auto-style2">
                                       <a href="yorumGuncelle.aspx?yorumID=<%#Eval("yorumID")%>&makaleID=<%# Eval("makaleID") %>"><img alt="" class="auto-style6" src="../tema/duzenle.png"/></a>
                                    </td>
                                    <td>
                                        <a href="yorumlar.aspx?yorumID=<%#Eval ("yorumID") %>&islem=sil"><img alt="" class="auto-style6" src="../tema/sil.png" /></a>
                                    </td>
                                    <td>
                                        <a href="yorumCevapla.aspx?makaleID=<%# Eval("makaleID") %>"><img alt="" class="auto-style6" src="../tema/cevap.png" /></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="width:690px;height:30px;"></div>
                </div>
                
                
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        


    </div>

    <div style="height:30px;"></div>
     <div style="height:25px;background-color:#2a595a;color:#fff;font-weight:bolder;line-height:25px;">&nbsp;&nbsp;
            <asp:Button ID="btn_ooArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_ooArti_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_ooEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_ooEksi_Click"  />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYLANAN YORUM PANELİ</div>

    <asp:Panel ID="pnl_yorumOnayli" runat="server"  ForeColor="White">
        <asp:DataList ID="dl_yorumOnayli" runat="server">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #669999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;&nbsp; -&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp; -&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:25px;float:left; color: #666666; background-color: #8AB0B0; font-weight: bold;">Makale:&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #83CCCC;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="Black"></asp:Label>
                        </div>
                        <div class="auto-style5">
                            <table class="auto-style1" style="text-align: right">
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td>
                                        <a href="yorumGuncelle.aspx?yorumID=<%# Eval ("yorumID") %>&makaleID=<%# Eval("makaleID") %>"><img alt="" class="auto-style6" src="../tema/sil.png" /></a>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="width:690px;height:30px;"></div>
                </div>
                
                
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
    <div style="height:30px;"></div>


    </asp:Content>