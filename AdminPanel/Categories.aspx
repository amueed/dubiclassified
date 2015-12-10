<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="AdminPanel_Categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
            <input id="txtCategoryName" type="text" runat="server" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Category Photo"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save" />
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
</body>
</html>
