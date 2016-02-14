function ValidateInput() {
    debugger;
    var $username = $('#txtUsername');
    var $password = $('#txtPassword');

    var username = $.trim($username.val());
    var password = $.trim($password.val());

    if (username == "") {
        $username.closest('div').addClass('has-error');
        $('#lblMsg').text('Username is Required.').css('color', 'red').show();
        $username.focus();
        return false;
    }

    if (password == "") {
        $password.closest('div').addClass('has-error');
        $('#lblMsg').text('Password is Required.').css('color', 'red').show();
        $password.focus();
        return false;
    }
    return true;
}

$('#txtUsername').on('keypress', function () {
    var username = $.trim($(this).val());
    if (username != "") {
        $(this).closest('div').removeClass('has-error');
        $('#lblMsg').text('').hide();
    }
});

$('#txtPassword').on('keypress', function () {
    var password = $.trim($(this).val());
    if (password != "") {
        $(this).closest('div').removeClass('has-error');
        $('#lblMsg').text('').hide();
    }
});



