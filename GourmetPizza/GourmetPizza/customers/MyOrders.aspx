<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="GourmetPizza.customers.MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>My Orders</h4>
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" CssClass="table" GridLines="Vertical" DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <EmptyDataTemplate>You haven't ordered yet! No worries, <a runat="server" href="MakeOrder.aspx">make an order</a> now.</EmptyDataTemplate>
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="orderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />

            <asp:BoundField DataField="pizzatype" HeaderText="Pizza Type" InsertVisible="False" ReadOnly="True" />

            <asp:BoundField DataField="ordertime" HeaderText="Order Time" InsertVisible="False" ReadOnly="True" />

        </Columns>
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle CssClass="cursor-pointer" BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="ControlDark" Font-Bold="True" ForeColor="White" />

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="
        SELECT o.[orderID], p.[pizzatype], o.[ordertime], p.[pizzaID]  , o.pizzasize,
                o.quantity, o.totalcost
        FROM 
        [customers] c 
            INNER JOIN 
        [orders] o 
            ON c.username=o.username  
            INNER JOIN 
        [pizzas] p 
            ON p.pizzaID=o.pizzaID
        WHERE c.username=@username">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--detail view needs changes to connect with selected order and display all details: orderID, pizzaID, pizzatype, pizzasize, quantity, totalcost and ordertime--%>
    <asp:DetailsView  ID="DetailsView1" runat="server" DataSourceID="SqlDataSource2"  DataKeyNames="orderID" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Fields>
            <asp:BoundField DataField="orderID" HeaderText="Order ID" ReadOnly="True" SortExpression="orderID" InsertVisible="False" />
            <asp:BoundField DataField="pizzaID" HeaderText="Pizza ID" SortExpression="pizzaID" />
            <asp:BoundField DataField="pizzatype" HeaderText="Pizza Type" SortExpression="pizzaID" />
            <asp:BoundField DataField="pizzasize" HeaderText="Pizza Size (inch)" SortExpression="pizzasize" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="totalCost" HeaderText="Total Cost" SortExpression="totalCost" />
            <asp:BoundField DataField="ordertime" HeaderText="Order Time" SortExpression="ordertime" />
        </Fields>

        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT o.[orderID], o.[pizzaID],p.[pizzatype], o.[pizzasize], o.[quantity], o.[totalCost], o.[ordertime] FROM [orders] o INNER JOIN [pizzas] p ON o.pizzaID=p.pizzaID WHERE ([orderID] = @orderID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="orderID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
