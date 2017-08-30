<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GourmetPizza._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LoginView runat="server" ViewStateMode="Disabled">
        <AnonymousTemplate>
            <h2>Our Pizzas</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" GridLines="Vertical"  DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"  >

                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pizzatype" HeaderText="pizzatype" SortExpression="pizzatype" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="inch9price" HeaderText="inch9price" SortExpression="inch9price" />
                    <asp:BoundField DataField="inch11price" HeaderText="inch11price" SortExpression="inch11price" />
                    <asp:BoundField DataField="inch13price" HeaderText="inch13price" SortExpression="inch13price" />
                </Columns>
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle CssClass="cursor-pointer" BackColor="#F7F7DE" />
                 

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT [pizzatype], [description], [inch9price], [inch11price], [inch13price] FROM [pizzas]"></asp:SqlDataSource>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
            </asp:EntityDataSource>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <div class="jumbotron">
                <h1>ASP.NET</h1>
                <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
                <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <h2>Getting started</h2>
                    <p>
                        ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                    </p>
                    <p>
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                    </p>
                </div>
                <div class="col-md-4">
                    <h2>Get more libraries</h2>
                    <p>
                        NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                    </p>
                    <p>
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                    </p>
                </div>
                <div class="col-md-4">
                    <h2>Web Hosting</h2>
                    <p>
                        You can easily find a web hosting company that offers the right mix of features and price for your applications.
                    </p>
                    <p>
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                    </p>
                </div>
            </div>
        </LoggedInTemplate>
    </asp:LoginView>


</asp:Content>
