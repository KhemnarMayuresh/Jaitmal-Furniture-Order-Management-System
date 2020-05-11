<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="miniProject.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</head>
<body style="background-image: url('Images/background .jpg');">
<!--#include file ="Header.htm"-->
    <form id="form1" runat="server">
        <div style="float:right">
            <asp:Button ID="Logout" runat="server" onclick="Logout_Click" Text="LOG-OUT" 
                BackColor="#666666" BorderColor="#666666" 
                style="font-style: italic; font-size: 30px; 
                text-align: center; font-family: 'Times New Roman', Times, serif; font-weight: 700;" 
                Width="300px" Height="45px" ForeColor="White" />
        </div>
        <br />
        <br />
    <div style="text-align: left" backgro>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
        Font-Names="Comic Sans MS" Font-Size="Medium" Font-Underline="True" 
        ForeColor="#3399FF" Text="Steps to use :"></asp:Label>    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            ForeColor="#66FF33" Text="1.Add your product using Add Products module."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            ForeColor="#66FF33" Text="2.Add any order using Place New Order module."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
            ForeColor="#66FF33" 
            Text="3.You can view and complete the order using Orders module."></asp:Label>
            <br />
            </div>
    </form>
    </body>
</html>
