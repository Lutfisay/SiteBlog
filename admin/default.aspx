<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Sitem.admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <style>
        .ort
        {
            margin:0;
            padding:0;
            border:0;


        }
        .txt
        {
            width:120px;
            height:25px;



        }
        .btn {

            width:80px;
            height:25px;
            background-color:#ceca33;
            color:#0d0b0b;

        }


    </style>
</head>
<body style="background-color:#e1e1e1">
    <form id="form1" runat="server">
    <div style="width:500px; height:200px; margin: 0 auto; margin-top:150px;background-color:#15616f">
        <div style="width:500px;height:30px;margin-top:20px;float:left; text-align:center;">

            <asp:TextBox ID="txt_kadi" placeholder="Kullanıcı Adı" runat="server" CssClass="txt"></asp:TextBox>
        </div>
        <div style="width:500px;height:30px;margin-top:20px;float:left; text-align:center">

            <asp:TextBox ID="txt_ksifre" placeholder="Şifre" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
        </div>
        <div style="width:500px;height:30px;margin-top:20px;float:left; text-align:center">

            <asp:Button ID="btn_grs" runat="server" Text="GİRİŞ" CssClass="btn" OnClick="btn_grs_Click" />
        </div>
    </div>
    </form>
</body>
</html>
