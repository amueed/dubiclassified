$(document).ready(function () {
    GetLocations();
});

function GetLocations() {
    debugger;
    $.ajax({
        type: "POST",
        url: "Locations.aspx/GetLocations",
        //data: '{objEmployee: ' + JSON.stringify(user) + '}',
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: false,
        success: GetLocationsSuccess,
        error: function () {
            alert("Error in Getting Locations.");
        }
    });
}

function GetLocationsSuccess(data) {
    debugger;
    var locations = data.d;
    var length = locations.length;
    var html = "";
    if (length > 0) {
        for (var i = 0; i < length; i++) {
            html += "<tr>";
            html += "<td>" + locations[i].SR + "</td>";
            html += "<td style='display:none'>" + locations[i].ID + "</td>";
            html += "<td>" + locations[i].NAME + "</td>";
            html += "<td>" + locations[i].CREATED_BY + "</td>";
            //html += "<td>" + locations[i].CREATED_DATE + "</td>";
            //html += "<td>" + locations[i].MODIFIED_BY + "</td>";
            html += "<td>" + locations[i].MODIFIED_DATE + "</td>";
            html += "<td> " + CreateActionMenu() + " </td>";
            html += "</tr>";
        }
        debugger;
        $("#tblLocations tbody").html(html);
    }
    else {
        $("#tblLocations tbody").html("<tr><td colspan='10'><strong>No Record Found</strong></td></tr>");
    }
}


function CreateActionMenu() {
    var actionMenu = '';
    actionMenu += '<div class="btn-group pull-right">';
    actionMenu += '<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">';
    actionMenu += '<i class="fa fa-chevron-down"></i>';
    actionMenu += '</button>';
    actionMenu += '<ul class="dropdown-menu slidedown">';
    actionMenu += '<li><a href="#"><i class="fa fa-edit fa-fw"></i>Edit</a></li>';
    actionMenu += '<li><a href="#"><i class="fa fa-times fa-fw"></i>Delete</a></li>';
    actionMenu += '</ul>';
    actionMenu += '</div>';
    return actionMenu;
}