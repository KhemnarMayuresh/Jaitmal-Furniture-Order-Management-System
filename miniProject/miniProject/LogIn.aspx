<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="miniProject.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
    </style>  
</head>
<body>  
    <form id="form1" runat="server">  
        <div style="display: inline-block; position: fixed; top: 0; left: 0; padding-top:20px; right: 0; 
            width: 500px; height: 250px; margin: auto; background-color: #f3f3f3; text-align:center;">  
            <strong>Login Form<br />
            <br />
            <br />
            </strong>Username:&nbsp;&nbsp;&nbsp; 
                        <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>  
                        &nbsp;  
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                        <br />
                        <br />
                        Password:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                        &nbsp;&nbsp;
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your word"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Log In" 
                onclick="Button1_Click" Width="84px" />  
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>    
        </div>  
    </form>  
</body> 
</html>
