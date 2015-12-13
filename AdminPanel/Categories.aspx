<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="AdminPanel_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <!-- Modal Category -->
    <div id="catModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Category</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="txtCatName">Category Name</label>
                            <input type="text" class="form-control" id="txtCatName" placeholder="" />
                        </div>
                        <div class="form-group">
                            <label for="txtCatIcon">Category Icon</label>
                            <input type="text" class="form-control" id="txtCatIcon" placeholder="" />
                        </div>
                        <button type="button" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <!-- Modal Category -->
    <div id="subCatModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Sub-Category</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="ddlParentCat">Sub-Category Name</label>
                            <select id="ddlParentCat" class="form-control">
                                <option value="1">Cat 1</option>
                                <option value="2">Cat 2</option>
                                <option value="3">Cat 3</option>
                                <option value="4">Cat 4</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="txtSubCatName">Sub-Category Name</label>
                            <input type="email" class="form-control" id="txtSubCatName" placeholder="" />
                        </div>
                        <div class="form-group">
                            <label for="txtSubCatIcon">Sub-Category Icon</label>
                            <input type="password" class="form-control" id="txtSubCatIcon" placeholder="" readonly="readonly" />
                        </div>
                        <button type="button" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Category Management</h3>
            </div>
        </div>
        <!--Category Panel-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Categories</strong>
                        <button type="button" class="btn-link pull-right" data-toggle="modal" data-target="#catModal" title="Add">
                            <span class="fa fa-plus fa-fw"></span>
                        </button>
                        <button type="button" class="btn-link pull-right" title="Refresh">
                            <span class="fa fa-refresh fa-fw"></span>
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="tblCategories" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Category Name</th>
                                        <th>Created By</th>
                                        <th>Last Updated</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                </div>
            </div>
        </div>

        <!--Sub-Category Panel-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Sub-Categories</strong>
                        <button type="button" class="btn-link pull-right" data-toggle="modal" data-target="#subCatModal" title="Add">
                            <span class="fa fa-plus fa-fw"></span>
                        </button>
                        <button type="button" class="btn-link pull-right" title="Refresh">
                            <span class="fa fa-refresh fa-fw"></span>
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="tblSubCategories" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Parent Category Name</th>
                                        <th>Sub-Category Name</th>
                                        <th>Created By</th>
                                        <th>Last Updated</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Mark</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Mark</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                        <td>Edit | Delete</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--custom javascript-->
    <script src="js/custom/Categories.js"></script>

</asp:Content>

