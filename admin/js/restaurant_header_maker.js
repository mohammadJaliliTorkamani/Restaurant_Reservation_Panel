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

let element = document.getElementsByClassName("restaurant_name")[0];
jQuery.ajax({
    type: "GET",
    url: 'https://lexeen-service.ir/api/panel_api/user_api/restaurant.php',
    dataType: 'json',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textstatus) {
        if (obj != null) {
            if (element != null)
                element.innerHTML = "" + obj.name;
        } else if (obj == null) {
            window.location.replace("https://panel.lexeen-service.ir/");
        }
    }
});