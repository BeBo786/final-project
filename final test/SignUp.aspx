<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="final_test.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="SignUp.css" /> <!-- Add a link to your CSS file -->
</head>
<body>
    <form id="signupForm" runat="server">
        <div class="container">
            <h2>Sign Up</h2>
            <div class="form-group">
                <input type="text" id="firstNames" runat="server" class="form-control" placeholder="First Name"  />
            </div>
            <div class="form-group">
                <input type="text" id="lastNames" runat="server" class="form-control" placeholder="Last Name"  />
            </div>
            <div class="form-group">
                <input type="tel" id="phones" runat="server" class="form-control" placeholder="Phone Number" pattern="[0-9]{11}" />
                <small class="form-text text-muted">Please enter a 10-digit phone number.</small>
            </div>
            <div class="form-group">
                <input type="password" id="passwords" runat="server" class="form-control" placeholder="Password"   />
            </div>
            <div class="form-group">
                <textarea id="addres" runat="server" class="form-control" placeholder="Home Address" ></textarea>
            </div>
            <div class="form-group">
                <asp:Button ID="signupButton" runat="server" Text="Sign Up" OnClick="SignupButton_Click" CssClass="btn btn-primary" />
            </div>
            <div class="form-group">
                <asp:Button ID="backToLoginButton" runat="server" Text="Back to Login" OnClick="BackToLoginButton_Click" CssClass="btn btn-secondary" />
            </div>
        </div>
    </form>
</body>
</html>
