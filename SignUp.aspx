<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="gap"></div>
    <div class="contact_page">
        <div class="container">
            <div class="row">
                <div class="contact_content">
                    <div class="cls_heading">
                        <h2>User Sign Up</h2>
                    </div>
                    <div class="login">
                        <div class="form-group">
                            <input type="text" id="txtFName" placeholder="First Name" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="text" id="txtLName" placeholder="Last Name" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="text" id="txtEmail" placeholder="Email (e.g: name@company.com)" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="text" id="txtContact" placeholder="Contact No. (e.g: 03326041449)" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="text" id="txtUsername" placeholder="User Name" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="password" id="txtPassword" placeholder="Password" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="password" id="txtCPassword" placeholder="Confirm Password" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="button" value="Submit" id="btnSubmit" class="btn btn-primary coolthing_submit" runat="server"/>
                        </div>
                        <div class="form-group">
                            <a class="btn-link pull-right" href="UserLogin.aspx">Already Have an Account? Login Here!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

