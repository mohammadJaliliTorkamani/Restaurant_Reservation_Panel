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

function addFoodInsert() {
    let selectedCategoryIndex = document.getElementById('add-food-modal-categories').selectedIndex;
    let selectedCategoryID = categories[selectedCategoryIndex].id;
    let foodName = document.getElementById('add-food-modal-name').value;
    let foodCalories = document.getElementById('add-food-modal-calories').value;
    let cookTime = document.getElementById('add-food-modal-cook-time').value;
    let foodPrice = document.getElementById('add-food-modal-price').value;
    let foodDescripntion = document.getElementById('add-food-modal-description').value;
    var form = document.createElement('form');
    form.enctype = "application/x-www-form-urlencoded";
    var formdata = new FormData();
    let file = document.getElementById('add-form-modal-image-upload').files[0];

    if (foodName == "" || foodCalories == "" || foodCalories < 0 || cookTime == "" || cookTime < 0 || foodPrice == "" || foodPrice < 0 || foodDescripntion == "") {
        alert("ورودی اشتباه است");
    } else if (!file) {
        alert("تصویر غذا را انتخاب کنید");
    } else {
        formdata.append('Token', getCookie("Lexin_Token"));
        formdata.append('foodImage', file);
        formdata.append('food_to_eat', document.getElementById("add-food-food-to-eat-checkbox").checked ? 1 : 0);
        formdata.append('submit_to_add', "true");
        formdata.append('name', foodName);
        formdata.append('calories', foodCalories);
        formdata.append('cook_time_minute', cookTime);
        formdata.append('price', foodPrice);
        formdata.append('description', foodDescripntion);
        jQuery.ajax({
            type: "POST",
            url: 'https://lexeen.ir/kntu_project/api/panel_api/food_api/configure_food.php',
            dataType: 'json',
            contentType: false,
            processData: false,
            data: formdata,
            cache: false,
            success: function (obj0, textstatus) {
                if (obj0 != null) {
                    if (obj0.resultCode == 200) {
                        let insertedFoodID = obj0['insertedFoodID'];
                        jQuery.ajax({
                            type: "GET",
                            url: 'https://lexeen.ir/kntu_project/api/panel_api/food_api/configure_food_category.php',
                            dataType: 'json',
                            data: {
                                submit_to_add: "true",
                                food_id: insertedFoodID,
                                category_id: selectedCategoryID,
                                Token: getCookie("Lexin_Token")
                            },
                            success: function (obj, textstatus) {
                                if (obj != null) {
                                    if (obj0.resultCode == 200) {
                                        Swal.fire(
                                            '!موفق',
                                            'غذا با موفقیت افزوده شد',
                                            'success'
                                        ).then((result) => {
                                            window.location.replace("https://panel.lexeen.ir/admin");
                                        })
                                    } else {
                                        Swal.fire(
                                            '!خطا',
                                            obj0.message,
                                            'error'
                                        )
                                    }
                                }
                            }
                        });
                    } else
                        alert(obj0.message);
                }
            }
        });
    }
}