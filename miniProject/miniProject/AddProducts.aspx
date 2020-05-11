<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="miniProject.AddProducts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<!--#include file ="Header.htm"-->
    <form id="form1" runat="server">
    <div>
    
        <br /><b>ADD PRODUCT DETAILS:</b><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Select Image File:"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />

<br />
<asp:Label ID="lblMessage" runat="server" Text=""
Font-Names = "Arial"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="45px" 
            Text="Add Products" Width="165px" onclick="Button1_Click" />
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
