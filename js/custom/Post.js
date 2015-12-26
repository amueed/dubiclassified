//validation



//function
function GetSubCategories() {
    debugger;

    var $ddlAdCategory = $("#body_ddlAdCategory");
    var $ddlAdSubCategory = $("#body_ddlAdSubCategory");

    var catID = $ddlAdCategory.find("option:selected").val().trim();
    if (catID != 0) {
        $.ajax({
            type: "POST",
            url: "Post.aspx/LoadSubCategories",
            data: "{'categoryID': '" + catID + "' }",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            async: false,
            success: function (data) {
                debugger;
                var data = data.d;
                var length = data.length;
                var options = "";
                if (length > 0) {
                    options = "<option value='0'>--Select Sub-Categories--</option>";
                    for (var i = 0; i < length; i++) {
                        options += "<option value='" + data[i].ID + "'>" + data[i].NAME + "</option>";
                    }
                }
                else {
                    options += "<option value='0'>--No Sub-Categories Found--<option>";
                }
                $ddlAdSubCategory.html(options);
            },
            error: function (ex) {
                alert(ex.Message.toString());
            }
        });
    }
    else {
        $ddlAdSubCategory.html("");
    }
}
