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
    url: 'https://lexeen.ir/kntu_project/api/panel_api/orders_api/orders_of_interval.php',
    dataType: 'json',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textstatus) {
        if (obj != null) {
            obj.forEach(function (data, index) {
                //var table=document.getElementsByClassName("table")[0];
                let tabBody = document.getElementsByClassName("foods_tbody")[0]
                let row = document.createElement("tr");
                let cell1 = document.createElement("td");
                let cell2 = document.createElement("td");
                let cell3 = document.createElement("td");
                let cell4 = document.createElement("td");
                let cell5 = document.createElement("td");
                let cell6 = document.createElement("td");
                let cell7 = document.createElement("td");
                let cell8 = document.createElement("td");
                let cell9 = document.createElement("td");
                let textnode1 = document.createTextNode((index + 1));
                let textnode2 = document.createTextNode(data.date_and_time_start);
                let textnode3 = document.createTextNode(data.orderer);
                let textnode4 = document.createTextNode(data.phone.substring(2) + "+");
                let textnode5 = document.createTextNode(data.delivery ? "تحویل" : "حضوری");
                let textnode6 = document.createTextNode(data.qrCodeValue);
                let textnode7 = document.createTextNode(data.status == "In Queue" ? "اتمام" : "");
                let textnode8 = document.createTextNode(data.status == "In Queue" ? "لغو" : "");
                let textnode9 = document.createTextNode("نمایش");

                cell1.append(textnode1);
                cell1.style.textAlign = "center";
                cell2.append(textnode2);
                cell2.style.textAlign = "center";
                cell3.append(textnode3);
                cell3.style.textAlign = "center";
                cell4.append(textnode4);
                cell4.style.cursor = "pointer";
                cell4.style.textAlign = "center";
                cell5.append(textnode5);
                cell5.style.textAlign = "center";
                cell6.append(textnode6);
                cell6.style.textAlign = "center";
                cell7.append(textnode7);
                cell7.style.textAlign = "center";


                cell4.addEventListener("click", function () {
                    window.open("tel:+" + data.phone.substring(2))
                });

                if (data.status == "In Queue") {
                    cell7.style.cursor = "pointer";
                    cell7.addEventListener("click", function () {
                        jQuery.ajax({
                            type: "GET",
                            url: 'https://lexeen.ir/kntu_project/api/panel_api/orders_api/configure_order_status.php',
                            dataType: 'json',
                            data: {
                                status: 'done',
                                order_id: data.id,
                                Token: getCookie('Lexin_Token')
                            },
                            success: function (obj, textstatus) {
                                if (obj != null) {
                                    if (obj.resultCode == 200) {
                                        Swal.fire(
                                            '!موفق',
                                            'سفارش مورد نظر انجام شد',
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
                        cell7.style.transition = "all 0.3s ease";
                        cell7.style.borderRadius = "3px";
                    });
                    cell7.addEventListener("mouseout", function () {
                        cell7.style.color = "#000000";
                        cell7.style.backgroundColor = null;
                        cell7.style.transition = "all 0.3s ease";
                        cell7.style.border = "1px solid #ddd";
                        cell7.style.borderRadius = "3px";
                    });
                }

                cell8.append(textnode8);
                cell8.style.textAlign = "center";

                if (data.status == "In Queue") {
                    cell8.style.cursor = "pointer";
                    cell8.addEventListener("click", function () {
                        Swal.fire({
                            title: 'تاییدیه',
                            text: "آیا از لغو سفارش اطمینان دارید؟",
                            type: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#3085d6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'بله ، لغو کن',
                            cancelButtonText: 'خیر',
                        }).then((result) => {
                            if (result.value) {

                                jQuery.ajax({
                                    type: "GET",
                                    url: 'https://lexeen.ir/kntu_project/api/panel_api/orders_api/configure_order_status.php',
                                    dataType: 'json',
                                    data: {
                                        status: 'discarded',
                                        order_id: data.id,
                                        Token: getCookie('Lexin_Token')
                                    },
                                    success: function (obj, textstatus) {
                                        if (obj != null) {

                                            if (obj.resultCode == 200) {
                                                Swal.fire(
                                                    '!موفق',
                                                    'سفارش مورد نظر لغو شد',
                                                    'success'
                                                ).then((result) => {
                                                    window.location.replace("https://panel.lexeen.ir/admin");
                                                })

                                            }
                                        }
                                    }
                                });


                            }
                        })
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
                }

                cell9.append(textnode9);
                cell9.style.textAlign = "center";
                cell9.style.cursor = "pointer";


                cell9.addEventListener("click", function () {

                    jQuery.ajax({
                        type: "GET",
                        url: 'https://lexeen.ir/kntu_project/api/panel_api/orders_api/order_of_qrcode.php',
                        dataType: 'json',
                        data: {
                            qrcode_value: data.qrCodeValue,
                            Token: getCookie('Lexin_Token')
                        },
                        success: function (obj, textstatus) {
                            if (obj != null) {
                                let data = obj[0];
                                showOrderDetail(data.qrCodeValue, data, obj);
                            }
                        }
                    });
                });


                cell9.addEventListener("mouseover", function () {
                    cell9.style.color = "#FFFFFF";
                    cell9.style.backgroundColor = "#39ADB4";
                    cell9.style.border = "1px solid #ddd";
                    cell9.style.transition = "all 0.3s ease";
                    cell9.style.borderRadius = "3px";
                });
                cell9.addEventListener("mouseout", function () {
                    cell9.style.color = "#000000";
                    cell9.style.backgroundColor = null;
                    cell9.style.transition = "all 0.3s ease";
                    cell9.style.border = "1px solid #ddd";
                    cell9.style.borderRadius = "3px";
                });


                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);
                row.appendChild(cell4);
                row.appendChild(cell5);
                row.appendChild(cell6);
                row.appendChild(cell7);
                row.appendChild(cell8);
                row.appendChild(cell9);
                tabBody.appendChild(row);
            });
        } else if (obj == null) {
            window.location.replace("https://panel.lexeen.ir/");
        }
    }
});