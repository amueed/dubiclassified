

$(document).ready(function () {
    GetCategories();
    GetSubCategories();
});

//(function () {
//    GetCategories();
//});

function GetCategories() {
    debugger;
    $.ajax({
        type: "POST",
        url: "Categories.aspx/GetCategories",
        //data: '{objEmployee: ' + JSON.stringify(user) + '}',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: false,
        success: GetCategoriesSuccess,
        error: function () {
            alert("Error in Getting Categories.");
        }
    });
}

function GetCategoriesSuccess(data) {
    debugger;
    var categories = data.d;
    var length = categories.length;
    var html = "";
    if (length > 0) {
        for (var i = 0; i < length; i++) {
            html += "<tr>";
            html += "<td>" + categories[i].SR + "</td>";
            html += "<td style='display:none'>" + categories[i].CATEGORY_ID + "</td>";
            html += "<td>" + categories[i].CATEGORY_NAME + "</td>";
            html += "<td>" + categories[i].CREATED_BY + "</td>";
            html += "<td>" + categories[i].CREATED_DATE + "</td>";
            html += "<td><span onclick=''>Edit</span> | <span onclick=''>Delete</span></td>";
            html += "</tr>";
        }
        debugger;
        $("#tblCategories tbody").html(html);
        $('#tblCategories').DataTable({
            responsive: true
        });
    }
    else {
        $("#tblCategories tbody").html("<tr><td colspan='10'><strong>No Record Found</strong></td></tr>");
    }
}

function GetSubCategories() {
    debugger;
    $.ajax({
        type: "POST",
        url: "Categories.aspx/GetSubCategories",
        //data: '{objEmployee: ' + JSON.stringify(user) + '}',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: false,
        success: GetSubCategoriesSuccess,
        error: function () {
            alert("Error in Getting Categories.");
        }
    });
}
function GetSubCategoriesSuccess(data) {
    debugger;
    var subCategories = data.d;
    var length = subCategories.length;
    var html = "";
    if (length > 0) {
        for (var i = 0; i < length; i++) {
            html += "<tr>";
            html += "<td>" + subCategories[i].SR + "</td>";
            html += "<td style='display:none'>" + subCategories[i].CATEGORY_ID + "</td>";
            html += "<td style='display:none'>" + subCategories[i].SUB_CATEGORY_ID + "</td>";
            html += "<td>" + subCategories[i].CATEGORY_NAME + "</td>";
            html += "<td>" + subCategories[i].SUB_CATEGORY_NAME + "</td>";
            html += "<td>" + subCategories[i].CREATED_BY + "</td>";
            html += "<td>" + subCategories[i].CREATED_DATE + "</td>";
            html += "<td><span onclick=''>Edit</span> | <span onclick=''>Delete</span></td>";
            html += "</tr>";
        }
        debugger;
        $("#tblSubCategories tbody").html(html);
        $('#tblSubCategories').DataTable({
            responsive: true
        });
    }
    else {
        $("#tblSubCategories tbody").html("<tr><td colspan='10'><strong>No Record Found</strong></td></tr>");
    }
}
