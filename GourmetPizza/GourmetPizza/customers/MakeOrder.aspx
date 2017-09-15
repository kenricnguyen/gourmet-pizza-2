<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeOrder.aspx.cs" Inherits="GourmetPizza.customers.MakeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">

        <%--Order Details View--%>
        <asp:View ID="OrderDetails" runat="server">
            <div class="form-horizontal">
                <br />
                <h4>Order Details</h4>
                <hr />
                <div class="form-group">

                    <asp:Label ID="Label11" runat="server" Text="Pizza Type:" CssClass="  col-xs-2" />
                    <div class="col-xs-10">
                        <asp:DropDownList ID="ddlPizzaType" runat="server" DataSourceID="SqlDataSource1" DataTextField="pizzatype" DataValueField="pizzatype" AppendDataBoundItems="true" CssClass="form-control" Width="280">
                            <asp:ListItem Text="Please Select" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlPizzaType" ErrorMessage="Pizza Type required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--end of div Order Details group--%>

                <div class="form-group">

                    <asp:Label ID="Label12" runat="server" Text="Sizes:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:DropDownList ID="ddlPizzaSize" runat="server" CssClass="form-control" Width="280">
                            <asp:ListItem>Please Select</asp:ListItem>
                            <asp:ListItem Text="9 inches" Value="9" />
                            <asp:ListItem Text="11 inches" Value="11" />
                            <asp:ListItem Text="13 inches" Value="13" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlPizzaSize" ErrorMessage="Pizza Size required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--end of group pizza size--%>

                <div class="form-group">

                    <asp:Label ID="Label13" runat="server" Text="Quantity:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must be greater than 0" ForeColor="#CC0000" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    </div>
                </div>
                <%--end of div group quantity--%>

                <div class="form-group">
                    <div class="col-md-offset-2 col-xs-10">

                        <asp:Button ID="btnNextPaymentDetails" runat="server" Text="Next" OnClick="btnNextPaymentDetails_Click" CssClass="btn btn-default" />
                    </div>
                </div>

                <%--<asp:Button ID="btnNextPaymentDetails" runat="server" Text="Next" OnClick="btnNextPaymentDetails_Click" CssClass="button" />--%>
            </div>
            <%--end of div 1--%>
        </asp:View>


        <%--Payment Details View--%>
        <asp:View ID="PaymentDetails" runat="server">
            <div class="form-horizontal">
                <br />
                <h4>Payment Details</h4>
                <hr />
                <asp:FormView ID="TotalCostFormView" runat="server" DataSourceID="SqlDataSource4" CssClass="table">
                    <ItemTemplate>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Total Cost ($):" CssClass="col-xs-2" />
                            <asp:TextBox ID="txtTotalCost" runat="server" Enabled="false" Text='<%# Bind("totalCost") %>' CssClass="form-control" />
                            <asp:Label ID="lblPizzaID" runat="server" Width="150" Text='<%# Bind("pizzaID") %>' Visible="false" />
                        </div>
                        <%--end of div group Total Cost--%>
                    </ItemTemplate>
                </asp:FormView>

                <asp:FormView ID="PaymentDetailsFormView" runat="server" DataSourceID="SqlDataSource2" CssClass="table">
                    <ItemTemplate>
                        <div class=" form-group">

                            <asp:Label ID="Label15" runat="server" Text="Name on Card:" CssClass="col-xs-2" />
                            <asp:TextBox ID="txtFullName" runat="server" Text='<%# Eval("fullName") %>' Enabled="false" CssClass="form-control"></asp:TextBox>
                        </div>

                    </ItemTemplate>
                </asp:FormView>
                <%--end of div group fullname--%>

                <div class="form-group">
                    <asp:Label ID="Label14" runat="server" Text="Credit Card Type:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:DropDownList ID="ddlCCT" runat="server" Style="font-family: Arial" CssClass="form-control" Width="280">
                            <asp:ListItem>Please Select</asp:ListItem>
                            <asp:ListItem Text="Visa" />
                            <asp:ListItem Text="MasterCard" />
                            <asp:ListItem Text="Discover" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlCCT" ErrorMessage="Credit Card Type required" CssClass="text-danger" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--end of div credit card type--%>

                <div class="form-group">
                    <asp:Label ID="Label16" runat="server" Text="Card Number:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card Number required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Must contain 16 digits" CssClass="text-danger" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <%--end of div group card number--%>

                <div class="form-group">
                    <asp:Label ID="Label17" runat="server" Text="Card Expiry Month:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:DropDownList ID="ddlExpiryMonth" runat="server" CssClass="form-control" Width="280">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlExpiryMonth" ErrorMessage="Expiry Month required" CssClass="text-danger" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--end of div group expiry month--%>

                <div class="form-group">
                    <asp:Label ID="Label18" runat="server" Text="Card Expiry Year:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtExpiryYear" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Expiry Year required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Must be a number" ValidationExpression="^[0-9]*$" CssClass="text-danger"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <%--end of div group card expiry year--%>

                <div class="form-group">
                    <asp:Label ID="Label19" runat="server" Text="Card Security Code:" CssClass="col-xs-2" />
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtSecurityCode" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Security Code required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Must contain 3 digits" CssClass="text-danger" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <%--end of div group card security code--%>

                <div class="form-group">
                    <div class="col-md-offset-2 col-xs-10">
                        <asp:Button ID="btnBackPaymentDetails" runat="server" OnClick="btnBackPaymentDetails_Click" Text="Back" CausesValidation="false" CssClass="btn btn-default" />
                        <asp:Button ID="btnNextSummary" runat="server" Text="Next" OnClick="btnNextSummary_Click" CssClass="btn btn-default" />
                    </div>
                </div>
                <%--<asp:Button ID="btnBackPaymentDetails" runat="server" Text="Back" OnClick="btnBackPaymentDetails_Click" CausesValidation="False" CssClass="button" />--%>
            </div>
            <%--end of div form horizontal--%>
        </asp:View>



        <%--Summary of Order View--%>
        <asp:View ID="SummaryOfOrder" runat="server">
            <div class="form-horizontal">
                <br />
                <h3>Summary of Order</h3>
                <hr />
                <br />
                <h4>Order Details</h4>
                <hr />
                <div class="form-group">
                    <asp:Label runat="server" Text="Pizza Types:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtPizzaType" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Pizza Sizes (inch):" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtSize" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Quantity:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtQuantitySummary" runat="server" CssClass="form-control" />
                </div>

                <br />
                <h4>Payment Details</h4>
                <hr />

                <div class="form-group">
                    <asp:Label runat="server" Text="Total Cost ($):" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtTotalCostSummary" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Card Type:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtCardTypeSummary" runat="server" CssClass="form-control" />
                </div>


                <div class="form-group">
                    <asp:Label runat="server" Text="Name on Card:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtNameOnCard1" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Card Number:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtCardNumberSummary" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Expiry Month:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtExpiryMonthSummary" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Card Expiry Year:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtExpiryYearSummary" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <asp:Label runat="server" Text="Security Code:" CssClass="col-xs-2" />
                    <asp:TextBox Enabled="false" ID="txtSecurityCodeSummary" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <div class="col-md-offset-2 col-xs-10">
                        <asp:Button ID="btnBack2" runat="server" Text="Back" OnClick="btnBack2_Click" CssClass="btn btn-default" CausesValidation="false" />
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" CssClass="btn btn-default" />
                    </div>
                </div>
                <asp:Label ID="lblResult" runat="server" />
            </div>
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
