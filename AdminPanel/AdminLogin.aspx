<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminPanel_AdminLogin" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <!-- Bootstrap Core CSS -->
    <link href="plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="plugins/metisMenu/dist/metisMenu.min.css" rel="stylesheet" />

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <input id="txtUsername" class="form-control" placeholder="Username" type="text" autofocus="autofocus" runat="server" />
                                </div>
                                <div class="form-group">
                                    <input id="txtPassword" class="form-control" placeholder="Password" type="password" autofocus="autofocus" runat="server" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" OnClientClick="return ValidateInput();" />
                                </div>
                                <div class="form-group">
                                    <label id="lblMsg" runat="server" style="display: none; color: red;"></label>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <%--<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>--%>

    <!-- Bootstrap Core JavaScript -->
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="plugins/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/components/sb-admin-2.js"></script>

    <!-- Custom JavaScript -->
    <script src="/AdminPanel/js/custom/AdminLogin.js"></script>

</body>
</html>
