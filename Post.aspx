<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="//cdn.ckeditor.com/4.5.6/standard/ckeditor.js"></script>
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
                        <div class="form-group ">
                            <label>Location:</label>
                            <%--<asp:DropDownList ID="ddlAdLocation" CssClass="form-control" runat="server"></asp:DropDownList>--%>
                            <select id="ddlAdLocation" class="form-control" runat="server">
                            </select>
                        </div>
                        <div class="form-group ">
                            <label>Category:</label>
                            <%--<asp:DropDownList ID="ddlAdCategory" CssClass="form-control" runat="server"></asp:DropDownList>--%>
                            <select id="ddlAdCategory" class="form-control" onchange="GetSubCategories();" runat="server">
                            </select>
                        </div>
                        <div class="form-group ">
                            <label>Sub-Category:</label>
                            <%--<asp:DropDownList ID="ddlAdSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>--%>
                            <select id="ddlAdSubCategory" class="form-control" runat="server">
                            </select>
                        </div>
                        <div class="form-group ">
                            <label>Title:</label>
                            <input type="text" id="txtTitle" placeholder="Ad Title" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>Description:</label>
                            <textarea id="txtDesc" name="editior" class="form-control" rows="5" placeholder="Description for your ad. (max 1000 words)"></textarea>
                            <script>
                                CKEDITOR.replace('editior');
                            </script>
                        </div>
                        <div class="form-group ">
                            <label>Price:</label>
                            <input type="text" id="txtPrice" placeholder="Price" class="form-control" />

                        </div>
                        <div class="form-group">
                            <label>
                                <input type="radio" name="priceType" value="Negotiable" checked="checked" />Negotiable</label>
                            <label>
                                <input type="radio" name="priceType" value="Fixed" />Fixed</label>
                        </div>
                        <div class="form-group">
                            <label>Condition:</label>
                            <%--<asp:DropDownList ID="ddlCondition" CssClass="form-control" runat="server"></asp:DropDownList>--%>
                            <select id="ddlCondition" class="form-control" runat="server">
                            </select>
                        </div>
                        <div class="form-group ">
                            <label>Contact No:</label>
                            <input type="text" id="txtContact" placeholder="Contact No. (e.g: 03326041449)" class="form-control" />
                        </div>
                        <div class="form-group ">
                            <label>Add Images:</label>
                            <input type="file" id="fuImg" class="form-control" multiple="multiple" runat="server" />
                        </div>
                        <div class="form-group">
                            <input type="button" value="Submit" id="btnSubmit" class="btn btn-primary coolthing_submit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Custom js for this webpage-->
    <script src="js/custom/Post.js"></script>

    

</asp:Content>

