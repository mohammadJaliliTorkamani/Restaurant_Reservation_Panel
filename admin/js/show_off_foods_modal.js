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

function showOffFoodsModal() {
    var modal = document.getElementById("add-off-food-modal-id");
    var foodSelect = document.getElementById("add-off-food-foods-list");
    var offSelect = document.getElementById("add-off-food-offs-list");
    foodSelect.innerHTML = "";
    offSelect.innerHTML = "";
    jQuery.ajax({
        type: "GET",
        url: 'https://lexeen.ir/kntu_project/api/panel_api/food_api/available_valid_foods.php',
        dataType: 'json',
        data: {
            Token: getCookie("Lexin_Token")
        },
        success: function (obj, textstatus) {
            if (obj != null) {
                restaurantFoods = obj;
                obj.forEach(function (data, index) {
                    var opt = document.createElement('option');
                    opt.value = data.name;
                    opt.innerHTML = data.name;
                    foodSelect.appendChild(opt);
                });
                jQuery.ajax({
                    type: "GET",
                    url: 'https://lexeen.ir/kntu_project/api/general_api/offs.php',
                    dataType: 'json',
                    success: function (obj, textstatus) {
                        if (obj != null) {
                            restaurantOffs = obj;
                            obj.forEach(function (data, index) {
                                var opt = document.createElement('option');
                                opt.value = data.percentage;
                                opt.innerHTML = data.percentage;
                                offSelect.appendChild(opt);
                            });
                            modal.style.display = "block";
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        }
                    }
                });
            }
        }
    });
}