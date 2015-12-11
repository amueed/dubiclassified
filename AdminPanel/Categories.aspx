<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="AdminPanel_Categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
     <div>
            <lable>Category Name</lable>
            <input id="txtCategoryName" type="text" runat="server" />
            <br />
            <lable>Category Photo</lable>
            <input id="txtCategoryPhoto" type="text" runat="server" />
            <input id="CategoryPhoto" type="file" runat="server" />
            <br />
            <input type="button" value="Save" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <label>Categories</label>
            <select id="ddlCat">
                <option>--Select Any--</option>
                <option>Cat-1</option>
                <option>Cat-2</option>
                <option>Cat-3</option>
            </select>
            <br />
            <lable>Sub-Category Name</lable>
            <input id="txtSubCate" type="text" runat="server" />
            <br />
            <lable>Sub-Category Photo</lable>
            <input id="txtSubCatPhoto" type="text" runat="server" />
            <input id="SubCatPhoto" type="file" runat="server" />
            <br />
            <input type="button" value="Save" />
        </div>
    </form>

    <!--jQuery-->
    <script src="js/jquery.js"></script>

    <!--Custom js-->
    <script src="js/categories.js"></script>
</body>
</html>
