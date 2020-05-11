<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewOrder.aspx.cs" Inherits="miniProject.NewOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<!--#include file ="Header.htm"-->
    <form id="form1" runat="server">
    <div style="float:left">
    <br /><b>Place New Order:<br />
        <br />
        </b>
        <asp:Label ID="Label1" runat="server" Text="Select Product Name :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            Height="35px" Width="300px" AutoPostBack="true" EnableViewState="true"
             OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />Price for 1 Unit :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Quantity :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox4" runat="server" 
            TextMode="Number" OnTextChanged="TextBox4_TextChanged" AutoPostBack="True"></asp:TextBox>
<br /><br />
        <asp:Label ID="messagequan" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Total Amount :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="225px" Height="35px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Deposite Amount :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="225px"
            ></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
            ErrorMessage="Deposite should be less than Total Amount" ForeColor="Red" 
            Operator="LessThanEqual"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server">Buyer Name :</asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Con. No.  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Length must be 10 digits" 
            ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
<br /><br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="57px" Text="Place Order" 
                Width="274px" onclick="Button1_Click" />
        <br />
        <br />
    </div>
    </form>
    <asp:Image ID="Image1" runat="server" Height="290px" Width="200px" 
        ImageUrl="Images/1.jpg" />
    <br />
    <asp:Label ID="Productid" runat="server" Visible="False"></asp:Label>
    
</body>
</html>
