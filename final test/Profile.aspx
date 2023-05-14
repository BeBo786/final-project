<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="final_test.Profile" %>

<!DOCTYPE html>
<html>
<head>
  <title>Profile Page</title>
  <link rel="stylesheet" href="Profile.css">
</head>
<body>
  <form id="form1" runat="server">
        <header>
            <img src="Pharmacy logo_@3x.png" alt="Pharmacy Logo" class="logo">
            <h1 class="title">Welcome to the Pharmacy System</h1>
        </header>
        <nav>
            <a href="#">Buy Medicine</a>
            <a href="#">View Cart</a>
            <a href="ViewHistory.aspx">Buying History</a>
            <a href="Profile.aspx">View Profile</a>
            <a href="Login.aspx">Logout</a>
        </nav>
       <section>
 
    <h1>Profile Page</h1>

    
      <div class="form-group">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstNamee"  runat="server" class="input-field" />
      </div>

      <div class="form-group">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastNamee" runat="server" class="input-field" />
      </div>

      <div class="form-group">
        <label for="address">Address:</label>
        <input type="text" id="address" runat="server" class="input-field" />
      <div class="form-group">
        <label for="Password">Password:</label>
          
          <input type="text" id="Passwordr" runat="server" class="input-field" />
      </div>

      <div class="form-group">
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" runat="server" class="input-field" />
      </div>
      <div class="form-group">
          <span runat="server" id="errorMessages" class="error-message"></span>
        <asp:Button runat="server" Text="Update" OnClick="Unnamed1_Click" CssClass="updateButton" />                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;               <asp:Button runat="server" Text="Show Data" OnClick="Show_Click" CssClass="updateButton" />
      </div>
        
    </section>
        <footer>
            <img src="path/to/footer-logo.png" alt="Pharmacy System Logo" class="footer-logo">
            <p>&copy; 2023 Pharmacy System. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>

