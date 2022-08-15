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
    url: "https://lexeen.ir/kntu_project/api/panel_api/food_api/foods.php",
    type: 'GET',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textStatus, jQxhr) {
        if (obj != null) {
            obj = JSON.parse(obj);
            obj.forEach(function (data, index) {
                //var table=document.getElementsByClassName("table")[0];
                var tabBody = document.getElementsByClassName("foods_tbody")[1]
                var row = document.createElement("tr");
                var cell1 = document.createElement("td");
                var cell2 = document.createElement("td");
                var cell3 = document.createElement("td");
                var cell4 = document.createElement("td");
                var cell5 = document.createElement("td");
                var cell6 = document.createElement("td");
                var cell7 = document.createElement("td");
                var cell8 = document.createElement("td");
                var textnode1 = document.createTextNode((index + 1));
                var textnode2 = document.createTextNode(data.name);
                var textnode3 = document.createTextNode(data.calories);
                var textnode4 = document.createTextNode(data.cook_time);
                var textnode5 = document.createTextNode(data.description);
                var textnode6 = document.createTextNode(data.price);
                var textnode7 = document.createTextNode(data.availability ? "فعال" : "غیر فعال");
                var textnode8 = document.createTextNode("حذف");

                cell1.append(textnode1);
                cell1.style.textAlign = "center";
                cell2.append(textnode2);
                cell2.style.textAlign = "center";
                cell3.append(textnode3);
                cell3.style.textAlign = "center";
                cell4.append(textnode4);
                cell4.style.textAlign = "center";
                cell5.append(textnode5);
                cell5.style.textAlign = "center";
                cell6.append(textnode6);
                cell6.style.textAlign = "center";
                cell7.append(textnode7);
                cell7.style.textAlign = "center";
                cell7.append(textnode7);
                cell7.style.cursor = "pointer";
                cell8.style.textAlign = "center";
                cell8.style.cursor = "pointer";

                cell7.addEventListener("click", function () {

                    jQuery.ajax({
                        type: "GET",
                        crossOrigin: true,
                        contentType: 'application/x-www-form-urlencoded',
                        url: 'https://lexeen.ir/kntu_project/api/panel_api/food_api/toggle_food_accessbility.php',
                        dataType: 'json',
                        data: {
                            food_id: data.id,
                            submit_to_enable: data.availability ? "false" : "true",
                            Token: getCookie('Lexin_Token')
                        },
                        success: function (obj, textstatus) {
                            if (obj != null) {
                                if (obj.resultCode == 200) {
                                    Swal.fire(
                                        '!موفق',
                                        'وضعیت غذا با موفقیت تغییر یافت',
                                        'success'
                                    ).then((result) => {
                                        window.location.replace("https://panel.lexeen.ir/admin");
                                    })
                                } else {
                                    alert(obj.message);
                                }
                            }
                        }
                    });
                });
                cell7.addEventListener("mouseover", function () {
                    cell7.style.color = "#FFFFFF";
                    cell7.style.backgroundColor = "#39ADB4";
                    cell7.style.border = "1px solid #ddd";
                    cell7.style.transition = "all 0.2s ease";
                    cell7.style.borderRadius = "3px";
                });
                cell7.addEventListener("mouseout", function () {
                    cell7.style.color = "#000000";
                    cell7.style.backgroundColor = null;
                    cell7.style.transition = "all 0.2s ease";
                    cell7.style.border = "1px solid #ddd";
                    cell7.style.borderRadius = "3px";
                });

                cell8.append(textnode8);
                cell8.style.textAlign = "center";
                cell8.style.cursor = "pointer";
                cell8.addEventListener("click", function () {
                    Swal.fire({
                        title: 'تاییدیه',
                        text: "آیا از حذف غذا اطمینان دارید؟",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'بله ، حذف کن',
                        cancelButtonText: 'خیر',
                    }).then((result) => {
                        if (result.value) {
                            jQuery.ajax({
                                type: "POST",
                                crossOrigin: true,
                                contentType: 'application/x-www-form-urlencoded',
                                url: 'https://lexeen.ir/kntu_project/api/panel_api/food_api/configure_food.php',
                                dataType: 'json',
                                data: {
                                    id: data.id,
                                    submit_to_enable: "false",
                                    Token: getCookie('Lexin_Token')
                                },
                                success: function (obj, textstatus) {
                                    if (obj != null) {
                                        if (obj.resultCode == 200) {
                                            Swal.fire(
                                                '!موفق',
                                                'غذا با موفقیت حذف شد',
                                                'success'
                                            ).then((result) => {
                                                window.location.replace("https://panel.lexeen.ir/admin");
                                            })
                                        } else {
                                            alert(obj.message);

                                        }

                                    }
                                }
                            });
                        }
                    });
                });
                cell8.addEventListener("mouseover", function () {
                    cell8.style.color = "#FFFFFF";
                    cell8.style.backgroundColor = "#39ADB4";
                    cell8.style.border = "1px solid #ddd";
                    cell8.style.transition = "all 0.3s ease";
                    cell8.style.borderRadius = "3px";
                });
                cell8.addEventListener("mouseout", function () {
                    cell8.style.color = "#000000";
                    cell8.style.backgroundColor = null;
                    cell8.style.transition = "all 0.3s ease";
                    cell8.style.border = "1px solid #ddd";
                    cell8.style.borderRadius = "3px";
                });

                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);
                row.appendChild(cell4);
                row.appendChild(cell5);
                row.appendChild(cell6);
                row.appendChild(cell7);
                row.appendChild(cell8);
                tabBody.appendChild(row);
            });
        }
    },
    error: function (jqXhr, textStatus, errorThrown) {
        alert(JSON.stringify(jqXhr) + "," + JSON.stringify(textStatus) + "," + JSON.stringify(errorThrown));
    }
});