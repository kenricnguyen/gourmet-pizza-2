<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="GourmetPizza.customers.PersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="FormView1" runat="server" CssClass="table" DataKeyNames="username" DataSourceID="SqlDataSource1">
        <EditItemTemplate>

            <div class="form-horizontal">
                <h4>Your Personal Details</h4>
                <hr />


                <%--Title label and dropdownlist--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ddlTitle" CssClass="  col-xs-2">Title</asp:Label>
                    <div class="col-xs-10">

                       <%-- <asp:TextBox ID="txtTitleEdit" runat="server" CssClass="form-control" Visible="false" Text='<%# Bind("title") %>'></asp:TextBox>--%>

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

                <%--First name label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="  col-xs-2" AssociatedControlID="txtFirstName">First Name</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text='<%# Bind("gname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="First Name required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="English letters, apostrophe and hyphen only" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <%--Last name label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtLastName" CssClass="  col-xs-2">Last Name</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text='<%# Bind("sname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="Last Name required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="English letters, apostrophe and hyphen only" ValidationExpression="[a-zA-Z-']+"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <%--DOB label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtDOB" CssClass="  col-xs-2">Date of Birth</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"  Text='<%# Bind("dob", "{0:d}") %>' ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOB"
                            CssClass="text-danger" ErrorMessage="DOB required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToValidate="txtDOB"
                            CssClass="text-danger" ErrorMessage="DOB must be before 1st July 2000" Operator="LessThan" Type="Date" ValueToCompare="01/07/2000"></asp:CompareValidator>
                    </div>
                </div>

                <%--Address label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtAddress" CssClass="  col-xs-2">Address</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Text='<%# Bind("address") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                            CssClass="text-danger" ErrorMessage="Address required"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--Suburb label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtSuburb" CssClass="  col-xs-2">Suburb</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtSuburb" CssClass="form-control" runat="server" Text='<%# Bind("suburb") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSuburb"
                            CssClass="text-danger" ErrorMessage="Suburb required"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--State label and dropdownlist--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ddlState" CssClass="  col-xs-2">State</asp:Label>
                    <div class="col-xs-10">
                        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" Width="280" >
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
                        <%--<asp:TextBox ID="txtState" CssClass="form-control" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>--%>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlState"
                            CssClass="text-danger" ErrorMessage="State required" InitialValue="Please Select"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--PostCode label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPostCode" CssClass="  col-xs-2">Post Code</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtPostCode" CssClass="form-control" runat="server" Text='<%# Bind("postcode") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPostCode"
                            CssClass="text-danger" ErrorMessage="Postcode required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPostCode"
                            CssClass="text-danger" ErrorMessage="4 digit number only" ValidationExpression="\d{4}">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>

                <%--mobile phone label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtMobilePhone" CssClass="  col-xs-2">Mobile Phone</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtMobilePhone" CssClass="form-control" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobilePhone"
                            CssClass="text-danger" ErrorMessage="Mobile Phone required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobilePhone" ErrorMessage="Must be in the format of 04dddddddd, where 'd' is a digit" CssClass="text-danger" ValidationExpression="(04)\d{8}"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="  col-xs-2">Email</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" Text='<%# Eval("username") %>' TextMode="Email" Enabled="false" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="Must be in email format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </div>
                </div>



                <%--Below is the old code ****************************--%>
                <%--Username:
            <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
                <br />
                Given Name:
            <asp:TextBox ID="gnameTextBox" runat="server" Text='<%# Bind("gname") %>' />
                <br />
                Surname:
            <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                <br />
                Title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                Dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                <br />
                Address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                Suburb:
            <asp:TextBox ID="suburbTextBox" runat="server" Text='<%# Bind("suburb") %>' />
                <br />
                State:
            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                Postcode:
            <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                Mobile:
            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />--%>
                <asp:ValidationSummary runat="server" CssClass="text-danger" />

                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClick="UpdateButton_Click" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />

        <ItemTemplate>
            <div class="form-horizontal">
                <h4>Your Personal Details</h4>
                <hr />
                <%--Title label and dropdownlist--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtTitle" CssClass="  col-xs-2">Title</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" Text='<%# Bind("title") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--First name label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="  col-xs-2" AssociatedControlID="txtFirstName">First Name</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text='<%# Bind("gname") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--Last name label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtLastName" CssClass="  col-xs-2">Last Name</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text='<%# Bind("sname") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--DOB label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtDOB" CssClass="  col-xs-2">Date of Birth</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" Text='<%# Bind("dob", "{0:d}") %>' Enabled="false" ></asp:TextBox>

                    </div>
                </div>

                <%--Address label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtAddress" CssClass="  col-xs-2">Address</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Text='<%# Bind("address") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--Suburb label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtSuburb" CssClass="  col-xs-2">Suburb</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtSuburb" CssClass="form-control" runat="server" Text='<%# Bind("suburb") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--State label and dropdownlist--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtState" CssClass="  col-xs-2">State</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtState" CssClass="form-control" runat="server" Text='<%# Bind("state") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--PostCode label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPostCode" CssClass="  col-xs-2">Post Code</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtPostCode" CssClass="form-control" runat="server" Text='<%# Bind("postcode") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <%--mobile phone label and textbox--%>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtMobilePhone" CssClass="  col-xs-2">Mobile Phone</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox ID="txtMobilePhone" CssClass="form-control" runat="server" Text='<%# Bind("mobile") %>' Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="  col-xs-2">Email</asp:Label>
                    <div class="col-xs-10">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" Text='<%# Eval("username") %>' TextMode="Email" Enabled="false" />

                    </div>
                </div>
                
                <br />
            </div>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" OnClick="EditButton_Click" Text="Edit" />
        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:FormView>
    <asp:Label ID="lblResult" runat="server" Visible="false" ForeColor="Green"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaOrdersConnection %>" SelectCommand="SELECT * FROM [customers] WHERE ([username] = @username)" UpdateCommand="UPDATE [customers] SET [gname] = @gname, [sname] = @sname, [title] = @title, [dob] = @dob, [address] = @address, [suburb] = @suburb, [state] = @state, [postcode] = @postcode, [mobile] = @mobile WHERE [username] = @username">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gname" Type="String" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:ControlParameter ControlID="FormView1$ddlTitle" Name="title" Type="String"  />
            <%--<asp:Parameter Name="title" Type="String" />--%>
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="suburb" Type="String" />
            <asp:ControlParameter ControlID="FormView1$ddlState" Name="state" Type="String"  />
            <%--<asp:Parameter Name="state" Type="String" />--%>
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
