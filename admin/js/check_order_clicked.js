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

function checkClicked() {
    let text = document.getElementById("inputOrder").value;
    if (text.length == 0)
        alert("لطفا کد سفارش را وارد کنید");
    else {
        jQuery.ajax({
            type: "GET",
            url: 'https://lexeen-service.ir/api/panel_api/orders_api/order_of_qrcode.php',
            dataType: 'json',
            data: {
                qrcode_value: text,
                Token: getCookie('Lexin_Token')
            },
            success: function (obj, textstatus) {
                if (obj != null) {
                    if (obj.length == 0)
                        Swal.fire(
                            '!خطا',
                            'کد سفارش اشتباه است',
                            'error'
                        )
                    else {
                        let data = obj[0];
                        showOrderDetail(text, data, obj);
                    }
                }
            }
        });

    }
}