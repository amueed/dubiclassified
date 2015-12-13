<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <!--Slider-->
    <div class="cls_slider_wrapper bottom_shadow duct_tape">
        <div id="layerslider" style="width: 100%; height: 181px;">
            <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                <img src="images/slider/img1.jpg" class="ls-bg" alt="Slide background" />
                <img class="ls-l" style="bottom: 0; top: auto; margin-bottom: 0; left: 0; white-space: nowrap;" data-ls="offsetxin:0;offsetyin:250;durationin:950;delayin:500;offsetxout:0;durationout:1000;">
                <a class="ls-l ls-linkto-2 slider_prev_btn" data-ls="offsetxin:-50;delayin:1000;offsetxout:-50;">
                    <i class="fa fa-angle-left"></i></a>
                <a class="ls-l ls-linkto-2 slider_next_btn" data-ls="offsetxin:50;delayin:1000;offsetxout:50;">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
            <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                <img src="images/slider/img1.jpg" class="ls-bg" alt="Slide background" />
                <img class="ls-l" style="bottom: 0; top: auto; margin-bottom: 0; left: 450px; white-space: nowrap;" data-ls="offsetxin:0;offsetyin:250;durationin:950;delayin:500;offsetxout:0;durationout:1000;" />
                <a class="ls-l ls-linkto-1 slider_next_btn" data-ls="offsetxin:50;delayin:1000;offsetxout:50;">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
    </div>
    <!--Category View-->
    <div class="cls_service_wrapper">
        <div class="container">
            <div class="row">

                <div class="col-sm-9 main">

                    <!--Block:Start-->
                    <!--Categories-->
                    <asp:Repeater ID="rptCat" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <div class="feature_icon">
                                    <span><i class="fa fa-car"></i></span>
                                    <a href="View.aspx?cat=<%#Eval("ID")%>">
                                        <h3><%#Eval("NAME")%></h3>
                                    </a>
                                </div>
                                <ul>
                                    <!--Sub Categories-->
                                    <asp:Repeater ID="rptSubCat" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href="View.aspx?cat=<%#Eval("ID")%>&subcat=<%#Eval("ID")%>"><%#Eval("NAME")%></a>
                                                <span><%#Eval("COUNT")%></span>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <!--Place Ad Button-->
                                <div class="place">
                                    <a href="#">Place an Ad</a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <!--Block:End-->

                    <%--<div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-car"></i></span>
                            <h3>Moters</h3>
                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-home"></i></span>
                            <h3>Property for Sale</h3>

                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-home"></i></span>
                            <h3>Property for Rent</h3>

                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-car"></i></span>
                            <h3>Moters</h3>

                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-home"></i></span>
                            <h3>Property for Sale</h3>

                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature_icon">
                            <span><i class="fa fa-home"></i></span>
                            <h3>Property for Rent</h3>

                        </div>
                        <ul>

                            <li><a href="/motors/used-cars/">Used Cars for Sale</a> <span>7420 </span></li>

                            <li><a href="/motors/auto-accessories-parts/">Auto Accessories &amp; Parts</a> <span>1275 </span></li>

                            <li><a href="/motors/boats/">Boats</a> <span>496 </span></li>

                            <li><a href="/motors/heavy-vehicles/">Heavy Vehicles</a> <span>353 </span></li>

                            <li><a href="/motors/motorcycles/">Motorcycles</a> <span>472 </span></li>

                        </ul>
                        <div class="place"><a href="#">Place an Ad</a></div>
                    </div>--%>
                </div>

                <div class="col-md-3">
                    <div class="firstbox">
                        <div class="bdr">
                            <h4>Quick Links</h4>
                            <ul>
                                <li><a href="#">Sell / Place an Ad</a></li>
                                <li><a href="#">Register</a></li>
                                <li><a href="#">How to</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="jobs">
                        <img src="images/slider/jobs.jpg">
                    </div>
                    <div class="jobs">
                        <img src="images/slider/looking.jpg">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

