<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Newproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" ">
    <link href="style.css" rel="stylesheet" />
    <title>Hello, world!</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"></head>
<body>
    <form id="form1" runat="server">
         <section class="login py-5 bg-light" >
        <div class="container">
            <div class="row g-0">
                <div class="col-lg-5">
                    <img src="images/login3.jpg" class="img-fluid" alt="Loginpage" />
                </div>
                <div class="col-lg-7  text-center py-5">
                    <h1>sign up now</h1>
                    <div class="form-row py-3 pt-5">
                            <div class="offset-1 col-lg-10">
                                <asp:Label ID="Label1" runat="server" Text="Username"  Font-Bold="True"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="inp" Width="280px" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logConnectionString %>" SelectCommand="SELECT * FROM [log]"></asp:SqlDataSource>
                            </div>
                        </div>
                         <div class="form-row py-3 pt-5">
                            <div class="offset-1 col-lg-10">
                                <asp:Label ID="Label2" runat="server" Text="Password"  Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="Textpass" runat="server"  CssClass="inp" Width="267px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row py-3 pt-5">
                            <div class="offset-1 col-lg-10">
                                <asp:Button ID="Button1" runat="server" CssClass="imp" Text="LOG IN" BackColor="#FFCC66" BorderColor="White" OnClick="Button1_Click" />
                            </div>
                        </div>              
                      </div>
                    </div>
                 </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>  
</form>
</body>
</html>
