<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container-fluid">
        <div class="navbar bg-cyan fg-white">
            <span class="h3">Dubbizle</span>
        </div>
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
                <label class="h4">Ad Title:</label>
            </div>
            <div class="col-lg-2">
                <input type="text" class="input-control text-accent" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
                <label class="h4">Description:</label>
            </div>
            <div class="col-lg-2">
                <textarea class="input-control text-accent" style="width: 200px; height: 150px; resize: none">

                </textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
                <label class="h4">Price:</label>
            </div>
            <div class="col-lg-2">
                <input type="text" class="input-control text-accent" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
                <label class="h4 text-right">Contact #:</label>
            </div>
            <div class="col-lg-2">
                <input type="text" class="input-control text-accent" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
            </div>
            <div class="col-lg-2">
                <input type="button" class="large-button bg-blue fg-white bold" value="Post" />
            </div>
        </div>
    </div>
</asp:Content>

