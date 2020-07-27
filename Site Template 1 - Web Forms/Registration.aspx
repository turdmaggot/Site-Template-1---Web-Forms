<%@ Page Title="" Language="C#" MasterPageFile="~/master/main.master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Site_Template_1___Web_Forms.Registration" %>

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
                            <h2>Sign up for an account:</h2>
                            <br />
                            <p>
                                Username:<br />
                                <asp:TextBox ID="txtUn" runat="server" MaxLength="150"></asp:TextBox>
                            </p>
                            <p>
                                First Name:<br />
                                <asp:TextBox ID="txtFN" runat="server" MaxLength="150"></asp:TextBox>
                            </p>
                            <p>
                                Last Name:<br />
                                <asp:TextBox ID="txtLN" runat="server" MaxLength="150"></asp:TextBox>
                            </p>
                            <p>
                                Email Address:<br />
                                <asp:TextBox ID="txtEmail" runat="server" MaxLength="255"></asp:TextBox>
                            </p>
                            <p>
                                Password:<br />
                                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                            </p>
                            <p>
                                Repeat Password:<br />
                                <asp:TextBox ID="txtRptPwd" runat="server" TextMode="Password"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
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
