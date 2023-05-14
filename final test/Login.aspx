<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="final_test.log_in_folder.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Login.css" /> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            <div class="form-group">
                <input type="text" id="usernamess" runat="server" class="form-control" placeholder="Username" />
            </div>
            <div class="form-group">
                <input type="password" id="passwords" runat="server" class="form-control" placeholder="Password" />
            </div>
            <div class="form-group">
                <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="LoginButton_Click" CssClass="btn btn-primary" />
            </div>
            <div class="form-group">
                <span runat="server" id="errorMessages" class="error-message"></span>
            </div>
            <div class="form-group">
                <asp:Button ID="signupButton" runat="server" Text="Sign Up" OnClick="SignupButton_Click" CssClass="btn btn-secondary" />
            </div>
        </div>
    </form>
</body>
</html>


