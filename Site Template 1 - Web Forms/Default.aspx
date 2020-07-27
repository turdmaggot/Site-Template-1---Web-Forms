<%@ Page Title="" Language="C#" MasterPageFile="~/master/main.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site_Template_1___Web_Forms.Default" %>

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
    <!-- Features -->
    <div id="features-wrapper">
        <div id="features">
            <div class="container">
                <h2>Sample Posts:</h2>

                <div class="row">
                    <div class="3u 12u(mobile)">
                        <section>
                            <a href="#" class="bordered-feature-image">
                                <asp:Image ID="imgArticle" ImageUrl="~/img/sample/sample.jpg" runat="server" />
                            </a>
                            <h2>Sample Article</h2>
                            <p>
                                <%= DateTime.Now.ToShortDateString() %>
                            </p>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Content -->
    <div id="content-wrapper">
        <div id="content">
            <div class="container">

                <div class="row">

                    <div class="12u 12u(mobile)">
                        <section>
                            <h2>Sample Section</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
                                labore et dolore magna aliqua. Ultricies lacus sed turpis tincidunt id aliquet risus. Ridiculus mus mauris vitae 
                                ultricies leo integer malesuada nunc. Mauris a diam maecenas sed. Mattis aliquam faucibus purus in. 
                                Sagittis purus sit amet volutpat consequat. Malesuada fames ac turpis egestas maecenas pharetra convallis. 
                                Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Mauris pellentesque pulvinar 
                                pellentesque habitant morbi tristique. Sed turpis tincidunt id aliquet risus.
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
            <div class="row">
                <div class="12u 12u(mobile)">
                    <!-- Links -->
                    <section>
                        <div>
                            <div class="row">
                                <div class="12u 12u(mobile)">
                                    <h2>Sample Links:</h2>
                                    <ul class="link-list last-child">
                                        <li><a href="https://www.google.com" target="_blank">Google</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </footer>
    </div>
</asp:Content>
