<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewHistory.aspx.cs" Inherits="final_test.ViewHistory" %>

<!DOCTYPE html>
<html>
<head>
    <title>Pharmacy System - View Medicine History</title>
    <link rel="stylesheet" href="ViewHistory.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <img src="path/to/logo.png" alt="Pharmacy Logo" class="logo">
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
            <h2>View Medicine History</h2>
            <div class="search-form">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Search for medicine..." OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="search-button" />
            </div>
            <table class="medicine-history-table">
                <tr>
                    <th>Medicine Name</th>
                    <th>Price</th>
                    <th>Purchase Date</th>
                    <th>Quantity</th>
                </tr>
                <asp:Repeater ID="rptMedicineHistory" runat="server" OnItemCommand="rptMedicineHistory_ItemCommand1">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("MedicineName") %></td>
                            <td><%# Eval("Price") %></td>
                            <td><%# Eval("PurchaseDate", "{0:MM/dd/yyyy}") %></td>
                            <td><%# Eval("Quantity") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </section>
        <footer>
            <img src="path/to/footer-logo.png" alt="Pharmacy System Logo" class="footer-logo">
            <p>&copy; 2023 Pharmacy System. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>

