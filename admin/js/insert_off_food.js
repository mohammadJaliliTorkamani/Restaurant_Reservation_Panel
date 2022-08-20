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

function insertOffFood() {
    let selectedFoodIndex = document.getElementById('add-off-food-foods-list').selectedIndex;
    let selectedOffIndex = document.getElementById('add-off-food-offs-list').selectedIndex;
    let selectedFoodID = restaurantFoods[selectedFoodIndex].id;
    let selectedOffID = restaurantOffs[selectedOffIndex].id;
    jQuery.ajax({
        type: "GET",
        url: "https://lexeen-service.ir/api/panel_api/food_api/configure_off_food.php",
        dataType: "json",
        data: {
            submit_to_add: "true",
            food_id: selectedFoodID,
            off_id: selectedOffID,
            Token: getCookie("Lexin_Token")
        },
        success: function (obj, textstatus) {
            if (obj != null) {
                if (obj.resultCode == 200) {
                    Swal.fire(
                        '!موفق',
                        'تخفیف غذا با موفقیت افزوده شد',
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
        }
    });

}