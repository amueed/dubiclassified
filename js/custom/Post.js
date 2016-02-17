//validation
function ValidateInput() {
    debugger;
    var $location = $('[id*="ddlAdLocation"]');
    var $category = $('[id*="ddlAdCategory"]');
    var $subCategory = $('[id*="ddlAdSubCategory"]');
    var $title = $('[id*="txtTitle"]');
    var $description = $('[id*="txtDesc"]');
    var $price = $('[id*="txtPrice"]');
    var $contact = $('[id*="txtContact"]');

    var location = $.trim($location.find("option:selected").val());
    var category = $.trim($category.find("option:selected").val());
    var subCategory = $.trim($subCategory.find("option:selected").val());
    var title = $.trim($title.val());
    var description = $.trim($description.val());
    var price = $.trim($price.val());
    var contact = $.trim($contact.val());

    var $lblMsg = $('[id*="lblMsg"]');

    if (location == "0") {
        $location.closest('div').addClass('has-error');
        $lblMsg.text('Location is Required.').show();
        $location.focus();
        return false;
    }
    if (category == "0") {
        $category.closest('div').addClass('has-error');
        $lblMsg.text('Category is Required.').show();
        $category.focus();
        return false;
    }
    if (subCategory == "0" || subCategory == "") {
        $subCategory.closest('div').addClass('has-error');
        $lblMsg.text('Sub-Category is Required.').show();
        $subCategory.focus();
        return false;
    }
    if (title == "") {
        $title.closest('div').addClass('has-error');
        $lblMsg.text('Title is Required.').show();
        $title.focus();
        return false;
    }
    if (description == "") {
        $description.closest('div').addClass('has-error');
        $lblMsg.text('Description is Required.').show();
        $category.focus();
        return false;
    }
    if (price == "") {
        $price.closest('div').addClass('has-error');
        $lblMsg.text('Price is Required.').show();
        $price.focus();
        return false;
    }
    if (contact == "") {
        $contact.closest('div').addClass('has-error');
        $lblMsg.text('Contact No. is Required.').show();
        $contact.focus();
        return false;
    }
    return true;
}

$('input').on('keyup', function () {
    debugger;
    var val = $.trim($(this).val());
    if (val != "" && $(this).hasClass('has-error')) {
        $(this).closest('div').removeClass('has-error');
        $('[id*="lblMsg"]').text('').hide();
    }
});

$('select').on('change', function () {
    debugger;
    var val = $.trim($(this).val());
    if (val != "0" && $(this).hasClass('has-error')) {
        $(this).closest('div').removeClass('has-error');
        $('[id*="lblMsg"]').text('').hide();
    }
});

//var controlType = $('#body_txtPrice').get(0).tagName;

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
                    options = "<option value='0'>In which Sub-Category you want to post your ad?</option>";
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
