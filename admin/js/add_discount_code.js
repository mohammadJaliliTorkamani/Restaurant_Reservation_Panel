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

function addDisccountCodeInsert() {
    let discountCode = document.getElementById('add-discount-modal-code').value;
    let discountPercentage = document.getElementById('add-discount-modal-percentage').value;
    let maxUsage = document.getElementById('add-discount-modal-max-usage').value;
    let minAcceptable = document.getElementById('add-discount-modal-min-acceptable').value;
    if (discountCode == "" || discountPercentage == "" || discountPercentage > 100 || discountPercentage <= 0 || maxUsage < 0 || maxUsage == "" || minAcceptable < 0 || minAcceptable == "") {
        alert("ورودی اشتباه است");
    } else {
        jQuery.ajax({
            type: "GET",
            url: 'https://lexeen-service.ir/api/panel_api/food_api/configure_discount_code.php',
            dataType: 'json',
            data: {
                submit_to_add: "true",
                code: discountCode,
                percentage: discountPercentage,
                max_usage: maxUsage,
                min_acceptable: minAcceptable,
                Token: getCookie('Lexin_Token')
            },
            success: function (obj, textstatus) {
                if (obj.resultCode == 200) {
                    Swal.fire(
                        '!موفق',
                        'کد تخفیف با موفقیت افزوده شد',
                        'success'
                    ).then((result) => {
                        window.location.replace("https://panel.lexeen-service.ir/admin");
                    })
                } else {
                    Swal.fire(
                        '!خطا',
                        obj.message,
                        'error'
                    )


                }
            }
        });
    }
}