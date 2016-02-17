<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" EnableEventValidation="false" EnableViewState="false" ViewStateMode="Disabled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<script src="//cdn.ckeditor.com/4.5.6/standard/ckeditor.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="gap"></div>
    <div class="contact_page">
        <div class="container">
            <div class="row">
                <div class="contact_content">
                    <div class="cls_heading">
                        <h2>Post an Ad for Free</h2>
                    </div>
                    <div class="login">
                        <div class="form-group">
                            <label id="lblMsg" runat="server" style="display: none; color: red;"></label>
                        </div>
                        <div class="form-group ">
                            <label>Location:<span style="color: red; font-size: 16px">*</span></label>
                            <asp:DropDownList ID="ddlAdLocation" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group ">
                            <label>Category:<span style="color: red; font-size: 16px">*</span></label>
                            <asp:DropDownList ID="ddlAdCategory" CssClass="form-control" onchange="GetSubCategories();" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Sub-Category:<span style="color: red; font-size: 16px">*</span></label>
                            <asp:DropDownList ID="ddlAdSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Title:<span style="color: red; font-size: 16px">*</span></label>
                            <input type="text" id="txtTitle" placeholder="Title for your ad" class="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Description:<span style="color: red; font-size: 16px">*</span></label>
                            <textarea id="txtDesc" name="editior" class="form-control" rows="5" placeholder="Short Description for your ad. (max 1000 words)" runat="server"></textarea>
                        </div>
                        <div class="form-group ">
                            <label>Price:<span style="color: red; font-size: 16px">*</span></label>
                            <input type="text" id="txtPrice" placeholder="Price" class="form-control" runat="server" />

                        </div>
                        <div class="form-group">
                            <label>
                                <asp:RadioButton ID="rdbNeg" runat="server" Checked="true" GroupName="priceType" />Negotiable</label>
                            <label>
                                <asp:RadioButton ID="rdbFixed" runat="server" GroupName="priceType" />Fixed</label>
                        </div>
                        <div class="form-group">
                            <label>Condition:<span style="color: red; font-size: 16px">*</span></label>
                            <asp:DropDownList ID="ddlCondition" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0">What is the condition?</asp:ListItem>
                                <asp:ListItem Value="New">New</asp:ListItem>
                                <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                                <asp:ListItem Value="Very Good">Very Good</asp:ListItem>
                                <asp:ListItem Value="Good">Good</asp:ListItem>
                                <asp:ListItem Value="Average">Average</asp:ListItem>
                                <asp:ListItem Value="Poor">Poor</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group ">
                            <label>Contact No:<span style="color: red; font-size: 16px">*</span></label>
                            <input type="text" id="txtContact" class="form-control" placeholder="What is your contact number?" runat="server" />
                        </div>
                        <div class="form-group ">
                            <label>Add Images:<span style="color: #d7d7d7">(Max. 10)</span></label>
                            <asp:FileUpload ID="fuImg" AllowMultiple="true" CssClass="form-control" runat="server" />
                        </div>
                        <div class="form-group">
                            <%--<input type="button" value="Post" id="btnSubmit" class="btn btn-primary coolthing_submit" />--%>
                            <asp:Button ID="btnPost" runat="server" Text="Post" CssClass="btn btn-primary coolthing_submit" OnClick="btnPost_Click" OnClientClick="return ValidateInput();" />
                        </div>
                        <div class="form-group">
                            <span style="color: red; font-size: 16px">*</span><label>Mandatory Fileds</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Custom js for this webpage-->
    <script src="js/custom/Post.js"></script>



</asp:Content>

