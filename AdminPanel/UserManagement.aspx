<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="AdminPanel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">User Management</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Create Users</strong>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <asp:FormView ID="FormView1" runat="server" Width="100%" DataKeyNames="user_id" DefaultMode="Insert" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    user_id:
                                    <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                                    <br />
                                    username:
                                    <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                                    <br />
                                    password:
                                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                                    <br />
                                    password_change_date:
                                    <asp:TextBox ID="password_change_dateTextBox" runat="server" Text='<%# Bind("password_change_date") %>' />
                                    <br />
                                    first_name:
                                    <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
                                    <br />
                                    last_name:
                                    <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
                                    <br />
                                    email:
                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                    <br />
                                    contact_no:
                                    <asp:TextBox ID="contact_noTextBox" runat="server" Text='<%# Bind("contact_no") %>' />
                                    <br />
                                    last_active_date:
                                    <asp:TextBox ID="last_active_dateTextBox" runat="server" Text='<%# Bind("last_active_date") %>' />
                                    <br />
                                    created_date:
                                    <asp:TextBox ID="created_dateTextBox" runat="server" Text='<%# Bind("created_date") %>' />
                                    <br />
                                    deleted:
                                    <asp:CheckBox ID="deletedCheckBox" runat="server" Checked='<%# Bind("deleted") %>' />
                                    <br />
                                    blocked:
                                    <asp:CheckBox ID="blockedCheckBox" runat="server" Checked='<%# Bind("blocked") %>' />
                                    <br />
                                    active:
                                    <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
                                    <br />
                                    activation_code:
                                    <asp:TextBox ID="activation_codeTextBox" runat="server" Text='<%# Bind("activation_code") %>' />
                                    <br />
                                    ads_limit:
                                    <asp:TextBox ID="ads_limitTextBox" runat="server" Text='<%# Bind("ads_limit") %>' />
                                    <br />
                                    comments:
                                    <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <table class="table" style="width: 100%">
                                        <tr>
                                            <td>User Name:</td>
                                            <td>
                                                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' /></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Requires!" ControlToValidate="usernameTextBox" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>Password:</td>
                                            <td>
                                                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' /></td>
                                            <td>Confirm Password</td>
                                            <td>
                                                <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <%-- <tr>
                                            <td>  password_change_date:</td>
                                            <td>  <asp:TextBox ID="password_change_dateTextBox" runat="server" Text='<%# Bind("password_change_date") %>' /></td>
                                              <td></td>
                                             <td></td><td></td>
                                             <td></td>
                                        </tr>--%>
                                        <tr>
                                            <td>First Name:</td>
                                            <td>
                                                <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' /></td>
                                            <td>Last Name:</td>
                                            <td>
                                                <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' /></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td>
                                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></td>
                                            <td>Contact No:</td>
                                            <td>
                                                <asp:TextBox ID="contact_noTextBox" runat="server" Text='<%# Bind("contact_no") %>' /></td>
                                            <td></td>
                                            <td></td>
                                        </tr>

                                        <%--   <tr>
                                            <td> Last Active Date:</td>
                                            <td><asp:TextBox ID="last_active_dateTextBox" runat="server" Text='<%# Bind("last_active_date") %>' /></td>
                                                <td>  created_date:</td>
                                            <td>  <asp:TextBox ID="created_dateTextBox" runat="server" Text='<%# Bind("created_date") %>' /></td>
                                              <td></td>
                                             <td></td>
                                        </tr>--%>
                                        <tr>

                                            <td>Deleted:</td>
                                            <td>
                                                <asp:CheckBox ID="deletedCheckBox" runat="server" Checked='<%# Bind("deleted") %>' /></td>
                                            <td>Blocked:</td>
                                            <td>
                                                <asp:CheckBox ID="blockedCheckBox" runat="server" Checked='<%# Bind("blocked") %>' /></td>
                                            <td>Active:</td>
                                            <td>
                                                <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td>Ads Limit:</td>
                                            <td>
                                                <asp:TextBox ID="ads_limitTextBox" runat="server" Text='<%# Bind("ads_limit") %>' /></td>
                                            <td>Comments:</td>
                                            <td>
                                                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' /></td>
                                            <%--<td>  activation_code:</td>--%>
                                            <td>
                                                <asp:TextBox ID="activation_codeTextBox" Visible="false" runat="server" Text='<%# Bind("activation_code") %>' /></td>

                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="InsertButton" ValidationGroup="InsertValidation" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
                                            <td>
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    user_id:
                                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                    <br />
                                    username:
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
                                    <br />
                                    password:
                                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                                    <br />
                                    password_change_date:
                                    <asp:Label ID="password_change_dateLabel" runat="server" Text='<%# Bind("password_change_date") %>' />
                                    <br />
                                    first_name:
                                    <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
                                    <br />
                                    last_name:
                                    <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
                                    <br />
                                    email:
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                    <br />
                                    contact_no:
                                    <asp:Label ID="contact_noLabel" runat="server" Text='<%# Bind("contact_no") %>' />
                                    <br />
                                    last_active_date:
                                    <asp:Label ID="last_active_dateLabel" runat="server" Text='<%# Bind("last_active_date") %>' />
                                    <br />
                                    created_date:
                                    <asp:Label ID="created_dateLabel" runat="server" Text='<%# Bind("created_date") %>' />
                                    <br />
                                    deleted:
                                    <asp:CheckBox ID="deletedCheckBox" runat="server" Checked='<%# Bind("deleted") %>' Enabled="false" />
                                    <br />
                                    blocked:
                                    <asp:CheckBox ID="blockedCheckBox" runat="server" Checked='<%# Bind("blocked") %>' Enabled="false" />
                                    <br />
                                    active:
                                    <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' Enabled="false" />
                                    <br />
                                    activation_code:
                                    <asp:Label ID="activation_codeLabel" runat="server" Text='<%# Bind("activation_code") %>' />
                                    <br />
                                    ads_limit:
                                    <asp:Label ID="ads_limitLabel" runat="server" Text='<%# Bind("ads_limit") %>' />
                                    <br />
                                    comments:
                                    <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                            </asp:FormView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dubizzleConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([username], [password], [password_change_date], [first_name], [last_name], [email], [contact_no], [last_active_date], [created_date], [deleted], [blocked], [active], [activation_code], [ads_limit], [comments]) VALUES (@username, @password,getdate(), @first_name, @last_name, @email, @contact_no,  getdate(),  getdate(), @deleted, @blocked, @active, @activation_code, @ads_limit, @comments)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [username] = @username, [password] = @password, [password_change_date] = @password_change_date, [first_name] = @first_name, [last_name] = @last_name, [email] = @email, [contact_no] = @contact_no, [last_active_date] = @last_active_date, [created_date] = @created_date, [deleted] = @deleted, [blocked] = @blocked, [active] = @active, [activation_code] = @activation_code, [ads_limit] = @ads_limit, [comments] = @comments WHERE [user_id] = @user_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="user_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="password" Type="String" />
                                    <asp:Parameter Name="password_change_date" Type="DateTime" />
                                    <asp:Parameter Name="first_name" Type="String" />
                                    <asp:Parameter Name="last_name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="contact_no" Type="String" />
                                    <asp:Parameter Name="last_active_date" Type="DateTime" />
                                    <asp:Parameter Name="created_date" Type="DateTime" />
                                    <asp:Parameter Name="deleted" Type="Boolean" />
                                    <asp:Parameter Name="blocked" Type="Boolean" />
                                    <asp:Parameter Name="active" Type="Boolean" />
                                    <asp:Parameter Name="activation_code" Type="String" />
                                    <asp:Parameter Name="ads_limit" Type="Int32" />
                                    <asp:Parameter Name="comments" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="password" Type="String" />
                                    <asp:Parameter Name="password_change_date" Type="DateTime" />
                                    <asp:Parameter Name="first_name" Type="String" />
                                    <asp:Parameter Name="last_name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="contact_no" Type="String" />
                                    <asp:Parameter Name="last_active_date" Type="DateTime" />
                                    <asp:Parameter Name="created_date" Type="DateTime" />
                                    <asp:Parameter Name="deleted" Type="Boolean" />
                                    <asp:Parameter Name="blocked" Type="Boolean" />
                                    <asp:Parameter Name="active" Type="Boolean" />
                                    <asp:Parameter Name="activation_code" Type="String" />
                                    <asp:Parameter Name="ads_limit" Type="Int32" />
                                    <asp:Parameter Name="comments" Type="String" />
                                    <asp:Parameter Name="user_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>