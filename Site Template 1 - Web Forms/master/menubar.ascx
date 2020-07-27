<%@ Control Language="C#" AutoEventWireup="true" Inherits="masterpages_menubar" Codebehind="menubar.ascx.cs" %>

<nav id="nav">
    <asp:HyperLink NavigateUrl="~/" runat="server">Home</asp:HyperLink>
    <asp:HyperLink NavigateUrl="~/pages/sample" runat="server">Sample Subpage</asp:HyperLink>
    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/home" />
</nav>
