<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GourmetPizza.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>My contact page.</h3>
    <address>
        Chapel Road<br />
        Bankstown, NSW 2200<br />
        <abbr title="Mobile">P:</abbr>
        0404 190 181
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:kenric.nguyen13@gmail.com">kenric.nguyen13@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:kenric.nguyen13@gmail.com">kenric.nguyen13@gmail.com</a>
    </address>
</asp:Content>
