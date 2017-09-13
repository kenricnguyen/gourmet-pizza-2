<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeOrder.aspx.cs" Inherits="GourmetPizza.customers.MakeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">

        <%--Order Details View--%>

        <asp:View ID="OrderDetails" runat="server">

            <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Order Details" Width="150px" />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Pizza Type:" Width="150px" />
            <asp:DropDownList ID="ddlPizzaType" runat="server" DataSourceID="SqlDataSource1" DataTextField="pizzatype" DataValueField="pizzatype" AppendDataBoundItems="true">
                <asp:ListItem Text="Please Select" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlPizzaType" ErrorMessage="Pizza Type required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Sizes:" Width="150px" />
            <asp:DropDownList ID="ddlPizzaSize" runat="server">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem Text="9 inches" Value="9" />
                <asp:ListItem Text="11 inches" Value="11" />
                <asp:ListItem Text="13 inches" Value="13" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlPizzaSize" ErrorMessage="Pizza Size required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Quantity:" Width="150px" />
            <asp:TextBox ID="txtQuantity" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must be greater than 0" ForeColor="#CC0000" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
            <br />
            <asp:Button ID="btnNextPaymentDetails" runat="server" Text="Next" OnClick="btnNextPaymentDetails_Click" />
        </asp:View>


        <%--Payment Details View--%>


        <asp:View ID="PaymentDetails" runat="server">

            <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Payment Details" Width="150px" />
            <br />
            <asp:FormView ID="TotalCostFormView" runat="server" DataSourceID="SqlDataSource4">
                <ItemTemplate>
                    <asp:Label runat="server" Width="150" Text="Total Cost ($):" />
                    <asp:TextBox ID="txtTotalCost" runat="server" Enabled="false" Text='<%# Bind("totalCost") %>' />
                    <asp:Label ID="lblPizzaID" runat="server" Width="150" Text='<%# Bind("pizzaID") %>' Visible="false" />
                    
                    <br />
                </ItemTemplate>
            </asp:FormView>
            <asp:Label ID="Label14" runat="server" Text="Credit Card Type:" Width="150px" />
            <asp:DropDownList ID="ddlCCT" runat="server" Style="font-family: Arial">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem Text="Visa" />
                <asp:ListItem Text="MasterCard" />
                <asp:ListItem Text="Discover" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlCCT" ErrorMessage="Credit Card Type required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
            <br />
            <asp:FormView ID="PaymentDetailsFormView" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>

                    <asp:Label ID="Label15" runat="server" Text="Name on Card:" Width="150px" />
                    <asp:TextBox ID="txtFullName" runat="server" Text='<%# Eval("fullName") %>' Enabled="false"></asp:TextBox>
                    <br />
                </ItemTemplate>
            </asp:FormView>

            <asp:Label ID="Label16" runat="server" Text="Card Number:" Width="150px" />
            <asp:TextBox ID="txtCardNumber" runat="server" Style="font-family: Arial"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card Number required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Must contain 16 digits" ForeColor="#CC0000" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label17" runat="server" Text="Card Expiry Month:" Width="150px" />
            <asp:DropDownList ID="ddlExpiryMonth" runat="server" Style="font-family: Arial">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlExpiryMonth" ErrorMessage="Expiry Month required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label18" runat="server" Text="Card Expiry Year:" Width="150px" />
            <asp:TextBox ID="txtExpiryYear" runat="server" Style="font-family: Arial"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Expiry Year required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Must be a number" ForeColor="#CC0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label19" runat="server" Text="Card Security Code:" Width="150px" />
            <asp:TextBox ID="txtSecurityCode" runat="server" Style="font-family: Arial"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Security Code required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Must contain 3 digits" ForeColor="#CC0000" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnBackPaymentDetails" runat="server" Text="Back" OnClick="btnBackPaymentDetails_Click" CausesValidation="False" />
            <asp:Button ID="btnNextSummary" runat="server" Text="Next" OnClick="btnNextSummary_Click" />
        </asp:View>

        <asp:View ID="SummaryOfOrder" runat="server">
            <asp:Label runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Order Details" Width="150px" />
            <br />
            <asp:Label runat="server" Text="Pizza Types:" Width="150px" />
            <asp:Label ID="lblPizzaType" runat="server" />
            <br />
            <asp:Label runat="server" Text="Pizza Sizes (inch):" Width="150px" />
            <asp:Label ID="lblSize" runat="server" />
            <br />
            <asp:Label runat="server" Text="Quantity:" Width="150px" />
            <asp:Label ID="lblQuantity" runat="server" />
            <br />
            <br />
            <br />
            <asp:Label runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Payment Details" Width="150px" />
            <br />
            <asp:Label runat="server" Text="Total Cost ($):" Width="150px" />
            <asp:Label ID="lblTotalCost" runat="server" Width="150px" />
            <br />
            <asp:Label runat="server" Text="Card Type:" Width="150px" />
            <asp:Label ID="lblCardType" runat="server" />
            <br />
            <asp:Label runat="server" Text="Name on Card:" Width="150px" />
            <asp:Label ID="lblNameOnCard1" runat="server" />
            <br />
            <asp:Label runat="server" Text="Card Number:" Width="150px" />
            <asp:Label ID="lblCardNumber" runat="server" />
            <br />
            <asp:Label runat="server" Text="Expiry Month:" Width="150px" />
            <asp:Label ID="lblExpiryMonth" runat="server" />
            <br />
            <asp:Label runat="server" Text="Card Expiry Year:" Width="150px" />
            <asp:Label ID="lblExpiryYear" runat="server" />
            <br />
            <asp:Label runat="server" Text="Security Code:" Width="150px" />
            <asp:Label ID="lblSecurityCode" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
            <br />
            <asp:Label ID="lblResult" runat="server" />
            <br />
        </asp:View>

    </asp:MultiView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT [pizzatype] FROM [pizzas]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>"
        SelectCommand="
        SELECT [gname]+' '+[sname] as fullName
        FROM [customers] 
        WHERE ([username] = @username)
        ">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="
        select pizzaID,
            (case @pizzasize
                when '9' then inch9price
                when '11' then inch11price
                when '13' then inch13price
            else null end) *@quantity as totalCost
        from pizzas
        where pizzatype=@pizzatype
         ">

        <SelectParameters>
            <asp:ControlParameter Name="pizzasize" ControlID="ddlPizzaSize" PropertyName="selectedvalue" />
            <asp:ControlParameter Name="pizzatype" ControlID="ddlPizzaType" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="quantity" ControlID="txtQuantity" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
