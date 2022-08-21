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
    url: 'https://lexeen-service.ir/api/panel_api/user_api/discounts.php',
    dataType: 'json',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textstatus) {
        if (obj != null) {
            obj.forEach(function (data, index) {
                //var table=document.getElementsByClassName("table")[0];
                var tabBody = document.getElementsByClassName("foods_tbody")[4]
                var row = document.createElement("tr");
                var cell1 = document.createElement("td");
                var cell2 = document.createElement("td");
                var cell3 = document.createElement("td");
                var cell4 = document.createElement("td");
                var cell5 = document.createElement("td");
                var cell6 = document.createElement("td");
                var textnode1 = document.createTextNode((index + 1));
                var textnode2 = document.createTextNode(data.code);
                var textnode3 = document.createTextNode(data.percentage);
                var textnode4 = document.createTextNode(data.min_acceptable);
                var textnode5 = document.createTextNode(data.capacity + " / " + data.used_counter);
                var textnode6 = document.createTextNode("حذف");

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
                cell6.style.cursor = "pointer";
                cell6.addEventListener("click", function () {
                    Swal.fire({
                        title: 'تاییدیه',
                        text: "آیا از حذف کد تخفیف اطمینان دارید؟",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'بله ، حذف کن',
                        cancelButtonText: 'خیر',
                    }).then((result) => {
                        if (result.value) {
                            jQuery.ajax({
                                type: "GET",
                                url: 'https://lexeen-service.ir/api/panel_api/food_api/configure_discount_code.php',
                                dataType: 'json',
                                data: {
                                    code: data.code,
                                    submit_to_add: "false",
                                    Token: getCookie('Lexin_Token')
                                },
                                success: function (obj, textstatus) {
                                    if (obj != null) {
                                        if (obj.resultCode == 200) {
                                            Swal.fire(
                                                '!موفق',
                                                'کد تخفیف با موفقیت حذف شد',
                                                'success'
                                            ).then((result) => {
                                                window.location.replace("https://panel.lexeen-service.ir/admin");
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
                cell6.addEventListener("mouseover", function () {
                    cell6.style.color = "#FFFFFF";
                    cell6.style.backgroundColor = "#39ADB4";
                    cell6.style.border = "1px solid #ddd";
                    cell6.style.transition = "all 0.3s ease";
                    cell6.style.borderRadius = "3px";
                });
                cell6.addEventListener("mouseout", function () {
                    cell6.style.color = "#000000";
                    cell6.style.backgroundColor = null;
                    cell6.style.transition = "all 0.3s ease";
                    cell6.style.border = "1px solid #ddd";
                    cell6.style.borderRadius = "3px";
                });

                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);
                row.appendChild(cell4);
                row.appendChild(cell5);
                row.appendChild(cell6);
                tabBody.appendChild(row);
            });
        } else if (obj == null) {
            window.location.replace("https://panel.lexeen-service.ir/");
        }
    }
});