<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GourmetPizza.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:Panel ID="Panel1" runat="server" CssClass="form-horizontal">
        <h4>Create a new account</h4>
        <hr />

        <asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label>
        <%--<a runat="server" href="~/Account/Login">Log in</a>--%>
        <br />
        <br />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddlTitle" CssClass="  col-xs-2">Title</asp:Label>
            <div class="col-xs-10">
                <asp:DropDownList ID="ddlTitle" runat="server" CssClass="form-control" Width="280">
                    <asp:ListItem Value="Please Select">Please Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlTitle" CssClass="text-danger" ErrorMessage="Title required" InitialValue="Please Select"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" CssClass="  col-xs-2" AssociatedControlID="txtFirstName">First Name</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="First Name required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="English letters, apostrophe and hyphen only" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtLastName" CssClass="  col-xs-2">Last Name</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="Last Name required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="English letters, apostrophe and hyphen only" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDOB" CssClass="  col-xs-2">Date of Birth</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOB"
                    CssClass="text-danger" ErrorMessage="DOB required"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ControlToValidate="txtDOB"
                    CssClass="text-danger" ErrorMessage="DOB must be before 1st July 2000" Operator="LessThan" Type="Date" ValueToCompare="01/07/2000"></asp:CompareValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtAddress" CssClass="  col-xs-2">Address</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                    CssClass="text-danger" ErrorMessage="Address required"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSuburb" CssClass="  col-xs-2">Suburb</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtSuburb" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSuburb"
                    CssClass="text-danger" ErrorMessage="Suburb required"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddlState" CssClass="  col-xs-2">State</asp:Label>
            <div class="col-xs-10">
                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" Width="280">
                    <asp:ListItem>Please Select</asp:ListItem>
                    <asp:ListItem>NSW</asp:ListItem>
                    <asp:ListItem>QLD</asp:ListItem>
                    <asp:ListItem>SA</asp:ListItem>
                    <asp:ListItem>TAS</asp:ListItem>
                    <asp:ListItem>VIC</asp:ListItem>
                    <asp:ListItem>WA</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>ACT</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlState"
                    CssClass="text-danger" ErrorMessage="State required" InitialValue="Please Select"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPostCode" CssClass="  col-xs-2">Post Code</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtPostCode" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPostCode"
                    CssClass="text-danger" ErrorMessage="Postcode required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPostCode"
                    CssClass="text-danger" ErrorMessage="4 digit number only" ValidationExpression="\d{4}">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtMobilePhone" CssClass="  col-xs-2">Mobile Phone</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox ID="txtMobilePhone" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobilePhone"
                    CssClass="text-danger" ErrorMessage="Mobile Phone required">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobilePhone" ErrorMessage="Must be in the format of 04dddddddd, where 'd' is a digit" CssClass="text-danger" ValidationExpression="(04)\d{8}"></asp:RegularExpressionValidator>
            </div>
        </div>

        <%--This is the template area--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="  col-xs-2">Email</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Must be in email format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="  col-xs-2">Password</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="  col-xs-2">Confirm password</asp:Label>
            <div class="col-xs-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-xs-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </asp:Panel>
</asp:Content>
