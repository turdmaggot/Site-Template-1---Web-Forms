<%@ Page Title="" Language="C#" MasterPageFile="~/master/main.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Site_Template_1___Web_Forms.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="index, follow" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="banner" runat="server">
    <div class="container">
        <div class="row">
            <div class="12u 12u(mobile)">
                <p>Welcome!</p>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- Content -->
    <div id="content-wrapper">
        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="12u 12u(mobile)">
                        <section>
                            <h2>Login</h2>
                            <p>
                                Username:
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                Password:
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            </p>
                            <p>
                                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" />
                            </p>
                            <p>
                                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                            </p>
                            <p>
                                <asp:Label ID="InvalidCredentialsMessage" runat="server" ForeColor="Red" Text="Your username or password is invalid. Please try again."
                                    Visible="False"></asp:Label>
                            </p>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div id="footer-wrapper">
        <footer id="footer" class="container">
        </footer>
    </div>
</asp:Content>
