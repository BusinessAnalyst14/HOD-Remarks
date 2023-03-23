<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HodAssesmentF.Login" %>

<!DOCTYPE html>
<script runat="server">

    protected void Pd1_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .auto-style1 {
            color: #0033CC;
            font-size: xx-large;
            position: absolute;
            top: 15%;
            left: 45%;
        }
        .auto-style2 {
            position :absolute;
            left: 35%;
        }
        .auto-style3 {
            color: #FF0000;
            font-size: xx-large;
            position: absolute;
            top: 30%;
            left: 40%;
        }
        .auto-style4 {
            color: #FF0000;
            font-size: xx-large;
            position: absolute;
            top: 40%;
            left: 45%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="auto-style2">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo.png" /> 
        </div>
        <div class="auto-style1">
                 <br /> 
            <strong>Login Page</strong>
        
        <br />
        <br />
        </div>
        <div class="auto-style3">
        <strong>Enter Id</strong>
        <asp:TextBox ID="Id1" runat="server" Height="25px"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:TextBox ID="Pd1" runat="server" CssClass="auto-style4" TextMode="Password" OnTextChanged="Pd1_TextChanged" Visible="False" Height="30px"></asp:TextBox>
        <br />
        <br />
        </div>
        <div class="auto-style4">
        <asp:Button ID="Submit" runat="server" Text="Login" OnClick="Submit_Click" BorderWidth="1" BorderColor="Black" Font-Bold="True" Width="100px" Height="50px" />
            <asp:HiddenField ID="emp" runat="server" Value="" />
        </div>

    </form>
</body>           
</html>
