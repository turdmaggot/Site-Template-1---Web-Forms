<%@ Page Title="" Language="C#" MasterPageFile="~/master/main.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Site_Template_1___Web_Forms.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="index, follow" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="banner" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- Content -->
    <div id="content-wrapper">
        <div id="content">
            <div class="container">
               
                <div class="row">

                    <div class="4u 12u(mobile)">
                        <section>
                            <h2>Existing user?</h2>
                            <div class="container">
                                
                                <div class="row">
                                    <div class="4u 4u(mobile)">
                                        Username:<br />
                                        <asp:TextBox ID="txtUsername" runat="server" MaxLength="150" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="login" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter your username!"></asp:RequiredFieldValidator>
                                    </div>
                                </div>    
                                
                                <div class="row">
                                    <div class="4u 4u(mobile)">
                                        Password:<br />
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="login" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter your password!"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="3u 4u(mobile)">
                                        <center>
                                            <asp:CheckBox ID="cbxRememberMe" runat="server" Text="Remember Me" />
                                        </center>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="3u 4u(mobile)">
                                        <center>
                                            <asp:Button ID="btnLogin" Width="30%" ValidationGroup="login" runat="server" Text="Login" OnClick="LoginButton_Click" />
                                        </center>
                                    </div>
                                </div>   
                                
                                <div class="row">
                                    <div class="4u 4u(mobile)">
                                        <asp:Label ID="lblLoginAlert" runat="server" ForeColor="Red" Text="Your username or password is invalid. Please try again." Visible="False"></asp:Label>
                                    </div>
                                </div>   
                               
                            </div>    
                        </section>
                    </div>
                
                    <div class="8u 12u(mobile)">
                        <section>
                            <h2>New user?</h2>
                            <div class="container">
                                <div class="row">
                                    <div class="4u 8u(mobile)">
                                        Pick a Username:<br />
                                        <asp:TextBox ID="txtNewUser" runat="server" MaxLength="150" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtNewUser" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter a username!"></asp:RequiredFieldValidator>
                                    </div>
                                     <div class="4u 8u(mobile)">
                                        Email Address:<br />
                                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="255" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter your email address!"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ControlToValidate="txtEmail" ValidationGroup="reg" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Enter a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>       
                                
                                <div class="row">
                                    <div class="4u 8u(mobile)">
                                        First Name:<br />
                                        <asp:TextBox ID="txtFN" runat="server" MaxLength="150" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtFN" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter your first name!"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                        Last Name:<br />
                                        <asp:TextBox ID="txtLN" runat="server" MaxLength="150" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtLN" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Enter your last name!"></asp:RequiredFieldValidator>
                                     </div>
                                </div>     
                                
                                <div class="row">
                                    <div class="4u 8u(mobile)">
                                        Choose a Password:<br />
                                        <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtNewPwd" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Choose a password!"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                        Repeat Password:<br />
                                        <asp:TextBox ID="txtRptPwd" runat="server" TextMode="Password" Width="80%"></asp:TextBox>
                                        <br><asp:RequiredFieldValidator ValidationGroup="reg" ControlToValidate="txtRptPwd" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Re-enter your chosen password!"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ControlToValidate="txtRptPwd" ControlToCompare="txtNewPwd" ValidationGroup="reg" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Passwords don't match!"></asp:CompareValidator>
                                    </div>
                                </div>   
                                <br />
                                <div class="row">
                                    <div class="7u 8u(mobile)">
                                        <center>
                                            <asp:Button ID="btnSignup" Width="30%" runat="server" Text="Sign Up" ValidationGroup="reg" />
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="8u 8u(mobile)">
                                        <asp:Label ID="lblRegAlert" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                    </div>
                                </div>   

                            </div>
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
