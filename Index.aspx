<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Locations" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <%--<title>Market</title>--%>
    <title>
        <asp:Literal ID="TabTitle" runat="server"></asp:Literal>
    </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/colors/default.css" id="colors" />
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css'>
</head>
<body>
    <!--Data Source for Locations-->
    <asp:SqlDataSource ID="sdsLocations" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT UPPER([location_id]) [location_id],UPPER([location_name]) [location_name] FROM locations" SelectCommandType="Text"></asp:SqlDataSource>
    <!--main wrapper start-->
    <div class="section first">
        <div class="container">
            <div class="row">
                <div class="title1">
                    <%--<h1>Website Name</h1>--%>
                    <h1>
                        <asp:Literal ID="WebTitle" runat="server"></asp:Literal>
                    </h1>
                    <%--<h4>The best place to buy a house, sell a car or find a job in UAE</h4>--%>
                    <h4>
                        <asp:Literal ID="WebDesc" runat="server"></asp:Literal>
                    </h4>
                </div>
            </div>
        </div>
    </div>
    <section>
        <div class="banner">
            <div class="container">
                <div class="row">
                    <ul>
                        <%--<li><a href="#">Abu Dhabi</a></li>
                        <li><a href="#">Ajman </a></li>
                        <li><a href="#">Al Ain</a></li>
                        <li><a href="#">Dubai</a></li>
                        <li><a href="#">Fujairah</a></li>
                        <li><a href="#">Ras al Khaimah</a> </li>
                        <li><a href="#">Sharjah</a> </li>
                        <li><a href="#">Umm al Quwain</a></li>--%>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sdsLocations">
                            <ItemTemplate>
                                <li><a href="MainPage.aspx?loc=<%#Eval("location_id")%>"><%#Eval("location_name")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="banner2">
                <p>Looking for other countries? dubizzle is now OLX in the rest of the Middle East and North Africa</p>
                <div class="banner3">
                    <img src="images/olx-logo.png">
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="banner4">
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="sdsLocations">
                        <ItemTemplate>
                            <li>
                                <a href="MainPage.aspx?loc=<%#Eval("location_id")%>">
                                    <span>
                                        <img src="images/burji.jpg">
                                    </span>
                                    <%#Eval("location_name")%>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%-- <li>
                        <span>
                            <img src="images/burji.jpg"></span>
                        <a href="#">
                            <p>Burj khalifa</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/dubhi-mall.jpg"></span>
                        <a href="#">
                            <p>Dubhi</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/oman.jpg"></span>
                        <a href="#">
                            <p>Oman</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/bahrain.jpg"></span>
                        <a href="#">
                            <p>Bahrain</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/qatar.jpg"></span>
                        <a href="#">
                            <p>Qatar</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/burji.jpg"></span>
                        <a href="#">
                            <p>Burj khalifa</p>
                        </a>
                    </li>
                    <li>
                        <span>
                            <img src="images/dubhi-mall.jpg"></span>
                        <a href="#">
                            <p>Dubhi</p>
                        </a>
                    </li>--%>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <section>
    </section>
    <!--main wrapper end-->
    <!--main js file start-->
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <!--Plugin-->
    <script type="text/javascript" src="js/plugin/parallax/jquery.stellar.js"></script>
    <script type="text/javascript" src="js/plugin/wow/jquery.wow.js"></script>
    <script type="text/javascript" src="js/plugin/owl/owl.carousel.js"></script>
    <script type="text/javascript" src="js/plugin/isotop/jquery.isotope.js"></script>
    <script type="text/javascript" src="js/plugin/circle/circles.js"></script>
    <script type="text/javascript" src="js/plugin/countto/jquery.appear.js"></script>
    <script type="text/javascript" src="js/plugin/countto/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/plugin/jquery.movingboxes.js"></script>
    <script type="text/javascript" src="js/plugin/fancybox/jquery.fancybox.js"></script>
    <!--layer slider-->
    <script type="text/javascript" src="js/plugin/layerslider/js/layerslider.transitions.js"></script>
    <script type="text/javascript" src="js/plugin/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
    <script type="text/javascript" src="js/plugin/layerslider/js/greensock.js"></script>
    <script type="text/javascript" src="js/jquery.bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript" src="js/switcher.js"></script>
    <!--main js file end-->
</body>
</html>
