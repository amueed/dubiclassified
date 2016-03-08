<%@ Page Title="Ad Details" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Details1.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="clearfix"></div>
    <div class="gap"></div>
    <div class="cls_service_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="firstbox">
                        <div class="bdr">
                            <h4>Quick Links</h4>
                            <ul>
                                <li><a href="#">Sell / Place an Ad</a></li>
                                <li><a href="SignUp.aspx">Register</a></li>
                                <li><a href="#">How to</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="jobs">
                        <img src="images/slider/jobs.jpg" alt="image" />
                    </div>
                    <div class="jobs">
                        <img src="images/slider/looking.jpg" alt="image" />
                    </div>
                </div>
                <div class="col-sm-9 main">
                    <div class="row">
                        <div>
                            <div class="col-md-12">
                                <h4 style="margin-top: 0; padding-bottom: 10px">
                                    <asp:Label ID="adTitle" runat="server" Text="Label"></asp:Label>
                                </h4>
                                <div class="sp">
                                    <span class="fa fa-money"></span>
                                    <asp:Label ID="adPrice" runat="server" Text="Label"></asp:Label>
                                    <!--AED 255,000-->
                                </div>
                                <div class="l">
                                    <asp:Label ID="adLoc" runat="server" Text="Label"></asp:Label>
                                    <!--Abu Dhabi > Motors > Used Cars for Sale > Porsche > Carrera / 911 > Details-->
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <img src="images/slider/car1.jpg" />
                            </div>
                            <div class="col-sm-4">
                                <div class="send">
                                    <a href="#"><i class="fa fa-envelope-o"></i>Send Reply</a>
                                    <a href="#"><i class="fa fa-phone"></i>Show Phone Number</a>
                                    <asp:Label ID="adContact" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-md-12">
                            <h2>Details</h2>
                            <div class="model">
                                <ul>
                                    <li><span class="fa fa-calendar"></span>&nbsp;<strong>Posted On:&nbsp;</strong><asp:Label ID="adPostedDate" runat="server" Text="Label"></asp:Label></li>
                                    <li>&nbsp;</li>
                                    <li><span class="glyphicon glyphicon-user"></span>&nbsp;<strong>Posted By:&nbsp;</strong><asp:Label ID="adPostedBy" runat="server" Text="Label"></asp:Label></li>
                                    <li>&nbsp;</li>
                                    <li><span class="fa fa-comments"></span>&nbsp;<strong>Condition:&nbsp;</strong><asp:Label ID="adCondition" runat="server" Text="Label"></asp:Label></li>
                                    <li>&nbsp;</li>
                                    <li><strong>Views:&nbsp;</strong><asp:Label ID="adViews" runat="server" Text="Label"></asp:Label></li>
                                    <li>&nbsp;</li>
                                    <li><strong>Decscription:&nbsp;</strong></li>
                                    <li>&nbsp;</li>
                                    <li>
                                        <asp:Label ID="adDesc" runat="server" Text="Label"></asp:Label>
                                        <%--<textarea id="adDesc" runat="server" style="width:600px; height:400px;resize:none" readonly="readonly"></textarea>--%>
                                    </li>
                                </ul>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>