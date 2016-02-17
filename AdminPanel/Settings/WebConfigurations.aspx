<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.master" AutoEventWireup="true" CodeFile="WebConfigurations.aspx.cs" Inherits="AdminPanel_Settings_WebConfigurations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Website Configuration</h3>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Settings</strong>
                        <button type="button" class="btn-link pull-right" data-toggle="modal" data-target="#subCatModal" title="Add">
                            <span class="fa fa-plus fa-fw"></span>
                        </button>
                        <button type="button" class="btn-link pull-right" title="Refresh">
                            <span class="fa fa-refresh fa-fw"></span>
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="config_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="config_id" Visible="false" HeaderText="config_id" InsertVisible="False" ReadOnly="True" SortExpression="config_id" />
                                    <asp:TemplateField HeaderText="Config Name" SortExpression="config_name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" Enabled="false" runat="server" Text='<%# Bind("config_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("config_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Config Val" SortExpression="config_val">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" Style="width: 100%;" runat="server" Text='<%# Bind("config_val") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("config_val") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Action" ShowEditButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dubizzleConnectionString %>" DeleteCommand="DELETE FROM [web_config] WHERE [config_id] = @config_id" InsertCommand="INSERT INTO [web_config] ([config_name], [config_val]) VALUES (@config_name, @config_val)" SelectCommand="SELECT * FROM [web_config]" UpdateCommand="UPDATE [web_config] SET [config_name] = @config_name, [config_val] = @config_val WHERE [config_id] = @config_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="config_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="config_name" Type="String" />
                                    <asp:Parameter Name="config_val" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="config_name" Type="String" />
                                    <asp:Parameter Name="config_val" Type="String" />
                                    <asp:Parameter Name="config_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

