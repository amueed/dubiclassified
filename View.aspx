<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

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
                                <li><a href="#">Register</a></li>
                                <li><a href="#">How to</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="jobs">
                        <img src="images/slider/jobs.jpg" />
                    </div>
                    <div class="jobs">
                        <img src="images/slider/looking.jpg" />
                    </div>
                </div>
                <!--Ads View Section-->
                <div class="col-sm-9 main">
                    <div class="row">
                        <!--Dynamic Load of Ads-->
                        <asp:Repeater ID="rptAdsView" runat="server">
                            <ItemTemplate>
                                <div>
                                    <div class="col-md-12">
                                        <%--<h5 style="margin-top: 0; padding-bottom: 10px">BWM Car for sale</h5>--%>
                                        <h5 style="margin-top: 0; padding-bottom: 10px"><%#Eval("CATEGORY")%></h5>
                                    </div>
                                    <div class="col-sm-4">
                                        <img src="images/slider/car1.jpg" />
                                        <%--<img src="<%#Eval("IMG_URL")%>" />--%>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="box-small-txt">
                                            <%--<b>Used Cars for Sale ‪>‪ Porsche ‪>‪ Carrera / 911</b>--%>
                                            <b><%#Eval("TITLE")%></b>
                                            <%--<span>30 November 2015</span>--%>
                                            <span><%#Eval("POSTED_DATE")%></span>
                                            <ul>
                                                <li>Year: <b>2013</b></li>
                                                <li>Kilometers: <b>95000</b></li>
                                                <li>Color: <b>White</b></li>
                                                <li>Doors: <b>2 door</b></li>
                                                <li>Views: <b><%#Eval("VISITOR")%></b></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="cost">
                                            <%--<span>AED 255,000</span>--%>
                                            <span>AED <%#Eval("PRICE")%></span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-md-12">
                                        <%--<div class="text-2">Located : UAE ‪>‪ Abu Dhabi ‪>‪ Al Shawamekh ‪>‪ Motor World</div>--%>
                                        <div class="text-2">Location: <%#Eval("LOCATION")%><label class="pull-right"><a href="Details.aspx?ad=<%#Eval("ID")%>">View</a></label></div>
                                        
                                        <%--<div class="text-2 pull-right"><label>Views: </label><label><%#Eval("VISITOR")%></label></div>--%>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <%--<div>
                            <div class="col-md-12">
                                <h5 style="margin-top: 0; padding-bottom: 10px">BMW X5 4.8 first owner well maintain no accid...</h5>
                            </div>
                            <div class="col-sm-4">
                                <img src="images/slider/car1.jpg">
                            </div>
                            <div class="col-sm-5">
                                <div class="box-small-txt">
                                    <b>Used Cars for Sale ‪>‪ Porsche ‪>‪ Carrera / 911</b>

                                    <span>30 November 2015</span>
                                    <ul>
                                        <li>Year: <b>2013</b></li>
                                        <li>Kilometers: <b>95000</b></li>
                                        <li>Color: <b>White</b></li>
                                        <li>Doors: <b>2 door</b></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="cost">
                                    <span>AED 255,000</span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-12">
                                <div class="text-2">Located : UAE ‪>‪ Abu Dhabi ‪>‪ Al Shawamekh ‪>‪ Motor World</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <div class="col-md-12">
                                <h5 style="margin-top: 0; padding-bottom: 10px">BMW X5 4.8 first owner well maintain no accid...</h5>
                            </div>
                            <div class="col-sm-4">
                                <img src="images/slider/car1.jpg">
                            </div>
                            <div class="col-sm-5">
                                <div class="box-small-txt">
                                    <b>Used Cars for Sale ‪>‪ Porsche ‪>‪ Carrera / 911</b>

                                    <span>30 November 2015</span>
                                    <ul>
                                        <li>Year: <b>2013</b></li>
                                        <li>Kilometers: <b>95000</b></li>
                                        <li>Color: <b>White</b></li>
                                        <li>Doors: <b>2 door</b></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="cost">
                                    <span>AED 255,000</span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-12">
                                <div class="text-2">Located : UAE ‪>‪ Abu Dhabi ‪>‪ Al Shawamekh ‪>‪ Motor World</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <div class="col-md-12">
                                <h5 style="margin-top: 0; padding-bottom: 10px">BMW X5 4.8 first owner well maintain no accid...</h5>
                            </div>
                            <div class="col-sm-4">
                                <img src="images/slider/car1.jpg">
                            </div>
                            <div class="col-sm-5">
                                <div class="box-small-txt">
                                    <b>Used Cars for Sale ‪>‪ Porsche ‪>‪ Carrera / 911</b>

                                    <span>30 November 2015</span>
                                    <ul>
                                        <li>Year: <b>2013</b></li>
                                        <li>Kilometers: <b>95000</b></li>
                                        <li>Color: <b>White</b></li>
                                        <li>Doors: <b>2 door</b></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="cost">
                                    <span>AED 255,000</span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-12">
                                <div class="text-2">Located : UAE ‪>‪ Abu Dhabi ‪>‪ Al Shawamekh ‪>‪ Motor World</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

