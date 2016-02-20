<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Details2.aspx.cs" Inherits="Details2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Slider Plugin css -->
    <link href="js/plugin/smoothview/css/smoothproducts.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="clearfix"></div>
    <div class="gap"></div>
    <div class="cls_service_wrapper">
        <div class="container">
            <!--Section-I-->
            <div class="col-sm-9 main">
                <!--Images View-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="sp-loading">
                            <img src="images/ads_img/sp-loading.gif" /><br>
                            LOADING IMAGES
                        </div>
                        <div class="sp-wrap" style="min-width: 200px; max-width: 600px;">
                            <a href="images/ads_img/1.jpg">
                                <img src="images/ads_img/1.jpg" alt="">
                            </a>
                            <a href="images/ads_img/2.jpg">
                                <img src="images/ads_img/2.jpg" alt="">
                            </a>
                            <a href="images/ads_img/3.jpg">
                                <img src="images/ads_img/3.jpg" alt="">
                            </a>
                            <a href="images/ads_img/5.jpg">
                                <img src="images/ads_img/5.jpg" alt="">
                            </a>
                            <a href="images/ads_img/6.jpg">
                                <img src="images/ads_img/6.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <!--Details-->
                <div class="row">
                    <div class="col-md-12 four">
                        <!--Title-->
                        <div class="row">
                            <h3>Pair of male n female cats very beautiful n having soft furr
                                <asp:Label ID="adTitle" runat="server" Text="Label"></asp:Label>
                            </h3>
                        </div>
                        <!--Description-->
                        <div class="row">
                            <p style="padding-top: 30px; color: #999">
                                When you call, don't forget to mention that you found this ad on OLX.com.pk. I do not wish to be contacted by telemarketers or representatives of any other website.
                            </p>
                        </div>
                        <div class="row">
                            Views:541
                        </div>
                    </div>
                </div>
                <!--More Ads by User-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="d">
                            <div class="col-sm-6">
                                <div class="box-small-txt">
                                    <b style="font-size: 18px">User Ads waqas</b>
                                </div>
                            </div>

                            <div class="col-md-12">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="d">
                            <%--<div class="col-sm-2">9 January</div>--%>
                            <div class="col-sm-4 row">
                                <img src="images/girl.jpg">
                            </div>
                            <div class="col-sm-4">
                                <div class="box-small-txt">
                                    <span>Cat pair male n female age 6 mnthsOther Pets</span>
                                    <span>9 January</span>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="cost">
                                    <span>Rs 20,000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Section-II-->
            <div class="col-md-3">
                <div class="rate">
                    Rs 25,000
                </div>
                <div class="information">
                    <span>
                        <img src="images/boy.jpg" alt="photo">WAQAS</span>
                    <p>
                        <span>Away</span>
                        <span>Active on site since 1 Month </span>
                        <span><a>User Ads</a></span>
                    </p>
                </div>
                <div class="information">
                    <span><i class="fa fa-check-square-o"></i>+92 3367368396</span>
                </div>
                <div class="information">
                    <h4>Safety Tips for Buyers</h4>
                    1. Meet seller at a safe location<br>
                    2. Check the item before you buy<br>
                    3. Pay only after collecting item
                </div>
            </div>
        </div>
    </div>
    <!-- Slider Plugin js -->
    <%--<script src="js/plugin/smoothview/js/jquery-2.1.3.min.js"></script>--%>
    <script src="js/plugin/smoothview/js/smoothproducts.js"></script>
    <!-- wait for images to load -->
    <script type="text/javascript">
        $(window).load(function () {
            $('.sp-wrap').smoothproducts();
        });
    </script>
</asp:Content>
