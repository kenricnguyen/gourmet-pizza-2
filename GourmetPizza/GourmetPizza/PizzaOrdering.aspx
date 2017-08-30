<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PizzaOrdering.aspx.cs" Inherits="GourmetPizza.PizzaOrdering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<form id="form1" runat="server">--%>
        <div>
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="CustomerDetails" runat="server">

                    <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Customer Details" Width="150px"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Title:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlTitle" runat="server">
                        <asp:ListItem Value="Please Select">Please Select</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Dr</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTitle" ErrorMessage="Title required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="First Name:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="English letters, apostrophe and hyphen only" ForeColor="#CC0000" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Last Name:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="English letters, apostrophe and hyphen only" ForeColor="#CC0000" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
                    <br /> 
                    <asp:Label ID="Label4" runat="server" Text="Date of Birth" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOB" ErrorMessage="DOB required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDOB" ErrorMessage="DOB must be before 1st July 2000" ForeColor="#CC0000" Operator="LessThan" Type="Date" ValueToCompare="01/07/2000"></asp:CompareValidator>
                    <br /> 
                    <asp:Label ID="Label5" runat="server" Text="Address:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br /> 
                    <asp:Label ID="Label6" runat="server" Text="Suburb:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtSuburb" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSuburb" ErrorMessage="Suburb required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />  
                    <asp:Label ID="Label7" runat="server" Text="State:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>New South Wales</asp:ListItem>
                        <asp:ListItem>Queensland</asp:ListItem>
                        <asp:ListItem>South Australia</asp:ListItem>
                        <asp:ListItem>Tasmania</asp:ListItem>
                        <asp:ListItem>Victoria</asp:ListItem>
                        <asp:ListItem>Western Australia</asp:ListItem>
                        <asp:ListItem>Northern Territory</asp:ListItem>
                        <asp:ListItem>Australian Capital Territory</asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlState" ErrorMessage="State required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    <br /> 
                    <asp:Label ID="Label8" runat="server" Text="Postcode:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Postcode required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPostCode" ErrorMessage="4 digit number only" ForeColor="#CC0000" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                    <br /> 
                    <asp:Label ID="Label9" runat="server" Text="Mobile Phone:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtMobilePhone" ErrorMessage="Mobile Phone required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobilePhone" ErrorMessage="Must be in the format of 04dddddddd, where 'd' is a digit" ForeColor="#CC0000" ValidationExpression="(04)\d{8}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Email Address:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Email Address required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Must be in email format" ForeColor="#CC0000" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="btnNextOrderDetails" runat="server" Text="Next" OnClick="btnNextOrderDetails_Click" />

                </asp:View>

                <asp:View ID="OrderDetails" runat="server">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Order Details" Width="150px"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Pizza Type:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlPizzaType" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Big Cheese</asp:ListItem>
                        <asp:ListItem>BBQ Beef</asp:ListItem>
                        <asp:ListItem>Chicken and Pineapple</asp:ListItem>
                        <asp:ListItem>Pepperoni Feast</asp:ListItem>
                        <asp:ListItem>Victoria</asp:ListItem>
                        <asp:ListItem>Vegetarian Australia</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlPizzaType" ErrorMessage="Pizza Type required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Sizes:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlPizzaSize" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem Text="9 inches" />
                        <asp:ListItem Text="11 inches" />
                        <asp:ListItem Text="13 inches" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlPizzaSize" ErrorMessage="Pizza Size required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Quantity:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtQuantity" runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must be greater than 0" ForeColor="#CC0000" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    <br />
                    <asp:Button ID="btnBackCustomerDetails" runat="server" OnClick="btnBackCustomerDetails_Click" CausesValidation="false" Text="Back" />
                    <asp:Button ID="btnNextPaymentDetails" runat="server" Text="Next" OnClick="btnNextPaymentDetails_Click" />
                </asp:View>

                <asp:View ID="PaymentDetails" runat="server">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Payment Details" Width="150px"></asp:Label>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Credit Card Type:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlCCT" runat="server">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem Text="Visa" />
                        <asp:ListItem Text="MasterCard" />
                        <asp:ListItem Text="Discover" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlCCT" ErrorMessage="Credit Card Type required" ForeColor="#CC0000" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="Name on Card:" Width="150px"></asp:Label>
                    <asp:Label ID="lblNameOnCard" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="Card Number:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card Number required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Must contain 16 digits" ForeColor="#CC0000" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="Card Expiry Month:" Width="150px"></asp:Label>
                    <asp:DropDownList ID="ddlExpiryMonth" runat="server">
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
                    <asp:Label ID="Label18" runat="server" Text="Card Expiry Year:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtExpiryYear" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Expiry Year required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtExpiryYear" ErrorMessage="Must be a number" ForeColor="#CC0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="Card Security Code:" Width="150px"></asp:Label>
                    <asp:TextBox ID="txtSecurityCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Security Code required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtSecurityCode" ErrorMessage="Must contain 3 digits" ForeColor="#CC0000" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="btnBackOrderDetails" runat="server" OnClick="btnBackOrderDetails_Click" CausesValidation="false" Text="Back" />
                    <asp:Button ID="btnNextSummary" runat="server" OnClick="btnNextSummary_Click" Text="Next" />
                </asp:View>

                <asp:View ID="SummaryOfOrder" runat="server">
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Customer Details" Width="150px"></asp:Label>
                    <br /> 
                    <asp:Label ID="Label26" runat="server" Text="Title" Width="150px"></asp:Label>
                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label27" runat="server" Text="First Name:" Width="150px"></asp:Label>
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label28" runat="server" Text="Last Name:" Width="150px"></asp:Label>
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label29" runat="server" Text="Date of Birth:" Width="150px"></asp:Label>
                    <asp:Label ID="lblDOB" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label30" runat="server" Text="Address:" Width="150px"></asp:Label>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label31" runat="server" Text="Suburb:" Width="150px"></asp:Label>
                    <asp:Label ID="lblSuburb" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label32" runat="server" Text="State:" Width="150px"></asp:Label>
                    <asp:Label ID="lblState" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label33" runat="server" Text="Post Code:" Width="150px"></asp:Label>
                    <asp:Label ID="lblPostCode" runat="server"></asp:Label>
    &nbsp;<br /> 
                    <asp:Label ID="Label34" runat="server" Text="Mobile Phone:" Width="150px"></asp:Label>
                    <asp:Label ID="lblMobilePhone" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label35" runat="server" Text="Email Address:" Width="150px"></asp:Label>
                    <asp:Label ID="lblEmailAddress" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Order Details" Width="150px"></asp:Label>
                    <br /> 
                    <asp:Label ID="Label36" runat="server" Text="Pizza Types:" Width="150px"></asp:Label>
                    <asp:Label ID="lblPizzaType" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label37" runat="server" Text="Pizza Sizes:" Width="150px"></asp:Label>
                    <asp:Label ID="lblSize" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label38" runat="server" Text="Quantity:" Width="150px"></asp:Label>
                    <asp:Label ID="lblQuantity" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Payment Details" Width="150px"></asp:Label>
                    <br />
                    <asp:Label ID="Label39" runat="server" Text="Card Type:" Width="150px"></asp:Label>
                    <asp:Label ID="lblCardType" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label40" runat="server" Text="Name on Card:" Width="150px"></asp:Label>
                    <asp:Label ID="lblNameOnCard1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label41" runat="server" Text="Card Number:" Width="150px"></asp:Label>
                    <asp:Label ID="lblCardNumber" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label42" runat="server" Text="Expiry Month:" Width="150px"></asp:Label>
                    <asp:Label ID="lblExpiryMonth" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label43" runat="server" Text="Card Expiry Year:" Width="150px"></asp:Label>
                    <asp:Label ID="lblExpiryYear" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label44" runat="server" Text="Security Code:" Width="150px"></asp:Label>
                    <asp:Label ID="lblSecurityCode" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnViewCustomerDetails" runat="server" OnClick="btnViewCustomerDetails_Click" CausesValidation="false" Text="View Customer Details" />
                    <asp:Button ID="btnViewOrderDetails" runat="server" OnClick="btnViewOrderDetails_Click" CausesValidation="false" Text="View Order Details" />
                    <asp:Button ID="btnViewPaymentDetails" runat="server" OnClick="btnViewPaymentDetails_Click" CausesValidation="false" Text="View Payment Details" />
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    <br />
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                    <br />
                </asp:View>

            </asp:MultiView>
        </div>
   <%--</form>--%>
</asp:Content>
