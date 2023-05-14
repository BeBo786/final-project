<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyMedicine.aspx.cs" Inherits="final_test.BuyMedicine" %>


<!DOCTYPE html>
<html>
<head>
    <title>Pharmacy System - Buy Medicine</title>
    <link rel="stylesheet" href="BuyMed.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <img src="path/to/logo.png" alt="Pharmacy Logo" class="logo" />
            <h1 class="title">Welcome to the Pharmacy System</h1>
        </header>
        <nav>
            <a href="BuyMedicine.aspx">Buy Medicine</a>
            <a href="#">View Cart</a>
            <a href="ViewHistory.aspx">Buying History</a>
            <a href="Profile.aspx">View Profile</a>
            <a href="Login.aspx">Logout</a>
        </nav>
        <section>
            <h2>Buy Medicine</h2>
            <div class="search-form">
                <input type="text" id="txtSearch" placeholder="Search for medicine..." runat="server" />
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="search-button" />
            </div>
            
            <asp:ListView ID="lvMedicineList" runat="server" OnSelectedIndexChanged="lvMedicineList_SelectedIndexChanged1">
    <ItemTemplate>
        <div class="medicine-item">
            <h3><%# Eval("mName") %></h3>
            <p>Price: <%# Eval("priceperUnit") %></p>
            <p>Description: <%# Eval("mNumber") %></p>
            <div>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="quantity-input" Text="1"></asp:TextBox>
                <div class="quantity-buttons">
                    <td>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("mName") %>' Visible="False" />
                    </td>
                    <asp:Button ID="btnDecrease" runat="server" Text="-" CssClass="quantity-button" OnClick="btnDecrease_Click" />
                    <asp:Button ID="btnIncrease" runat="server" Text="+" CssClass="quantity-button" OnClick="btnIncrease_Click" />
                </div>
                <asp:Button runat="server" Text="ADD to Cart " OnClick="GetValue"></asp:Button>
            </div>
        </div>
    </ItemTemplate>
</asp:ListView>



        </section>
        <footer>
            <img src="path/to/footer-logo.png" alt="Pharmacy System Logo" class="footer-logo" />
            <p>&copy; 2023 Pharmacy System. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>

