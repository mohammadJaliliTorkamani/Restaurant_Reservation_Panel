function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}
jQuery.ajax({
    type: "GET",
    url: 'https://lexeen.ir/kntu_project/api/panel_api/user_api/alarm_text.php',
    dataType: 'json',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textstatus) {
        if (obj != null) {
            document.getElementsByClassName("panel_alarm")[0].innerHTML = "خالی";
            obj.forEach(function (data, index) {
                document.getElementsByClassName("panel_alarm")[0].innerHTML = data.message;
            });
        }
    }
});