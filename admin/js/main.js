function eraseCookie(name) {
    document.cookie = name + '=; Max-Age=-99999999;';
}

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

if (getCookie('Lexin_Token') == null) {
    alert("دسترسی غیر مجاز")
    window.location = "https://panel.lexeen.ir"
}

let nav_log_out = document.getElementById("nav_log_out");
let nav_contact_lexeen = document.getElementById("nav_contact_lexeen");

nav_log_out.addEventListener("click", function (event) {


    Swal.fire({
        title: 'تاییدیه',
        text: "از خروج از حساب کاربری اطمینان دارید؟",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'بله ، خارج می شوم',
        cancelButtonText: 'خیر',
    }).then((result) => {
        if (result.value) {
            jQuery.ajax({
                type: "POST",
                crossOrigin: true,
                contentType: 'application/x-www-form-urlencoded',
                url: 'https://lexeen.ir/kntu_project/api/panel_api/user_api/log_out.php',
                dataType: 'json',
                data: {
                    Token: getCookie('Lexin_Token')
                },
                success: function (obj, textstatus) {
                    if (obj != null) {
                        if (obj.code == 200) {
                            eraseCookie('Lexin_Token')
                            window.location.replace("https://panel.lexeen.ir/");
                        } else {
                            Swal.fire(
                                '!خطا',
                                obj.message,
                                'error'
                            )
                        }

                    }
                }
            });

        }
    });
});

nav_contact_lexeen.addEventListener("click", function (event) {
    let PhoneNumber = "+989128346921"
    window.open("tel:" + PhoneNumber);
});