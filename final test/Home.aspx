<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="final_test.Home" %>

<!DOCTYPE html>
<html>
<head>
    <title>Pharmacy System</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        /* Header Styles */
        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }
        
        .logo {
            width: 70px;
            height: 70px;
            margin: 10px;
        }
        
        .title {
            font-size: 24px;
            margin: 10px;
        }
        
        /* Navigation Styles */
        nav {
            background-color: #f4f4f4;
            padding: 10px;
            text-align: center;
        }
        
        nav a {
            margin: 0 10px;
            color: #333;
            text-decoration: none;
            font-size: 18px;
        }
        
        nav a:hover {
            color: #666;
        }
        
        /* Content Styles */
        section {
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        section h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        
        /* Footer Styles */
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        
        footer p {
            margin: 0;
        }
        
        .footer-logo {
            width: 30px;
            height: 30px;
            vertical-align: middle;
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <header>
        <img src="Pharmacy logo_@3x.png" alt="Pharmacy Logo" class="logo">
        <h1 class="title">Welcome to the Pharmacy System</h1>
        <img src="path/to/slogan.png" alt="Pharmacy Slogan" class="logo">
    </header>
    <nav>
        <a href="BuyMedicine.aspx">Buy Medicine</a>
        <a href="#">View Cart</a>
        <a href="ViewHistory.aspx">Buying History</a>
        <a href="Profile.aspx">View Profile</a>
        <a href="LogiN.aspx">Logout</a>
    </nav>
    <section>
        <h2>Home Page Content</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit varius est, non ultricies nunc facilisis ac. Nulla ut elit et arcu iaculis lobortis. Vestibulum eu metus sit amet magna fringilla efficitur.</p>
        <p>Curabitur semper tellus lectus, vitae feugiat ex cursus sed. Nunc vestibulum mi at purus convallis tempus. Sed auctor dapibus feugiat. Nullam dapibus orci nunc, at ultrices enim tincidunt eu. Vivamus id justo et sapien commodo blandit. Donec elementum tristique ligula, id efficitur nisl vulputate in. Proin sollicitudin sem eu doloret vulputate, id congue est lobortis. Fusce quis lorem in leo vehicula consequat et id elit.</p>
        <p>Phasellus eleifend dapibus mi. Sed pulvinar leo at ex rhoncus pulvinar. Nunc auctor euismod ipsum, non fermentum velit posuere eu. Nullam sit amet lacus ligula. Sed laoreet maximus ipsum, id rutrum arcu porta eu. Nulla ut aliquet quam. Nam ultrices orci in dolor suscipit, et bibendum ligula dignissim. Fusce id nisl tristique, iaculis erat eget, consectetur elit.</p>
    </section>
    <footer>
        <img src="path/to/footer-logo.png" alt="Pharmacy System Logo" class="footer-logo">
        <p>&copy; 2023 Pharmacy System. All rights reserved.</p>
    </footer>
</body>
</html>


