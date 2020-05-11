<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="miniProject.Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<!--#include file ="Header.htm"-->
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
        <br />
        <strong>Order Details :</strong><br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Enter Order ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="46px" onclick="Button1_Click" 
            Text="Delivered" Width="136px" />
        <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Oid" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Oid" HeaderText="Order ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Oid" />
                <asp:BoundField DataField="Pid" HeaderText="Product ID" SortExpression="Pid" />
                <asp:BoundField DataField="BuyerName" HeaderText="BuyerName" 
                    SortExpression="BuyerName" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="No" HeaderText="Contact No" SortExpression="No" />
                <asp:BoundField DataField="Paid" HeaderText="Deposite Paid" SortExpression="Paid" />
                <asp:BoundField DataField="Total" HeaderText="Total Amount" SortExpression="Total" />
                <asp:BoundField DataField="Rem" HeaderText="Remaning Amount" SortExpression="Rem" />
                <asp:BoundField DataField="Delivered" HeaderText="Delivered" SortExpression="Delivered" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="DelDate" HeaderText="Delivered Date" SortExpression="DelDate" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                  
    </div>
    </form>
</body>
</html>
