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
    url: 'https://lexeen.ir/kntu_project/api/panel_api/tables_api/tables.php',
    dataType: 'json',
    data: 'Token=' + getCookie('Lexin_Token'),
    success: function (obj, textstatus) {
        if (obj != null) {
            obj.forEach(function (data, index) {
                //var table=document.getElementsByClassName("table")[0];
                var tabBody = document.getElementsByClassName("foods_tbody")[2]
                var row = document.createElement("tr");
                var cell1 = document.createElement("td");
                var cell2 = document.createElement("td");
                var cell3 = document.createElement("td");
                var cell4 = document.createElement("td");
                var textnode1 = document.createTextNode((index + 1));
                var textnode2 = document.createTextNode(data.name);
                var textnode3 = document.createTextNode(data.reserved ? "مشغول" : "آزاد");
                var textnode4 = document.createTextNode(data.availability ? "فعال" : "غیر فعال");

                cell1.append(textnode1);
                cell1.style.textAlign = "center";
                cell2.append(textnode2);
                cell2.style.textAlign = "center";
                cell3.append(textnode3);
                cell3.style.textAlign = "center";
                cell4.append(textnode4);
                cell4.style.textAlign = "center";
                cell4.style.cursor = "pointer";
                cell4.addEventListener("click", function () {
                    jQuery.ajax({
                        type: "GET",
                        url: 'https://lexeen.ir/kntu_project/api/panel_api/tables_api/toggle_lexin_table.php',
                        dataType: 'json',
                        data: {
                            lexin_table_id: data.id,
                            submit_to_enable: !data.availability,
                            Token: getCookie('Lexin_Token')
                        },
                        success: function (obj, textstatus) {
                            if (obj != null) {
                                if (obj.resultCode == 200) {
                                    Swal.fire(
                                        '!موفق',
                                        'وضعیت جایگاه با موفقیت تغییر یافت',
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
                cell4.addEventListener("mouseover", function () {
                    cell4.style.color = "#FFFFFF";
                    cell4.style.backgroundColor = "#39ADB4";
                    cell4.style.border = "1px solid #ddd";
                    cell4.style.transition = "all 0.3s ease";
                    cell4.style.borderRadius = "3px";
                });
                cell4.addEventListener("mouseout", function () {
                    cell4.style.color = "#000000";
                    cell4.style.backgroundColor = null;
                    cell4.style.transition = "all 0.3s ease";
                    cell4.style.border = "1px solid #ddd";
                    cell4.style.borderRadius = "3px";
                });

                row.appendChild(cell1);
                row.appendChild(cell2);
                row.appendChild(cell3);
                row.appendChild(cell4);
                tabBody.appendChild(row);
            });
        } else if (obj == null) {
            //window.location.replace("https://panel.lexeen.ir/");
        }
    }
});