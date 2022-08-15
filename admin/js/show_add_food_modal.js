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

var categories;

function showAddFoodModal() {
    var modal = document.getElementById("add-food-modal-id");
    var categoriesSelect = document.getElementById("add-food-modal-categories");
    categoriesSelect.innerHTML = "";
    //get available categories and  add it to 'var' and then show modal
    jQuery.ajax({
        type: "GET",
        url: 'https://lexeen.ir/kntu_project/api/panel_api/user_api/categories.php',
        dataType: 'json',
        data: {
            Token: getCookie("Lexin_Token")
        },
        success: function (obj, textstatus) {
            if (obj != null) {
                categories = []
                categories = obj;
                obj.forEach(function (data, index) {
                    var opt = document.createElement('option');
                    opt.value = data.name;
                    opt.innerHTML = data.name;
                    categoriesSelect.appendChild(opt);
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