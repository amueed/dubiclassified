<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="gap"></div>
    <div class="contact_page">
        <div class="container">
            <div class="row">
                <div class="contact_content">
                    <div class="cls_heading">
                        <h2>User Login</h2>
                    </div>
                    <div class="login">
                        <div class="form-group">
                            <input type="text" id="txtUsername" placeholder="User Name" class="form-control" />
                        </div>
                        <div class="form-group">
                            <input type="password" id="txtPassword" placeholder="Password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <input type="button" value="Login" id="btnLogin" class="btn btn-primary coolthing_submit" />

                        </div>
                        <div class="form-group">
                            <a class="btn-link pull-right" href="SignUp.aspx">Don't Have an Account? Sign Up Here!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

