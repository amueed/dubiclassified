<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.master" AutoEventWireup="true" CodeFile="Locations.aspx.cs" Inherits="AdminPanel_Locations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Location(s) Management</h3>
            </div>
        </div>
        <!--Category Panel-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Locations</strong>
                        <button type="button" class="btn-link pull-right" data-toggle="modal" data-target="#catModal" title="Add">
                            <span class="fa fa-plus fa-fw"></span>
                        </button>
                        <button type="button" class="btn-link pull-right" title="Refresh" onclick="GetCategories();">
                            <span class="fa fa-refresh fa-fw"></span>
                        </button>
                    </div>
                    <div class="panel-body">

                        <div class="table-responsive">
                            <table id="tblLocations" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Location Name</th>
                                        <th>Created By</th>
                                        <th>Last Updated</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--custom js-->
    <script src="js/custom/Locations.js"></script>
</asp:Content>

