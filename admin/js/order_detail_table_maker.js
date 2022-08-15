function showOrderDetail(qrCodeValue, data, obj) {
    let modal = document.getElementById("order-detail-modal-id");
    let tabBody = document.getElementsByClassName("orders_tbody")[0]
    let ordererName_cell1 = document.createElement("td");
    let ordererName_cell2 = document.createElement("td");
    let dateTime_cell1 = document.createElement("td");
    let dateTime_cell2 = document.createElement("td");
    let issueTrackingCode_cell1 = document.createElement("td");
    let issueTrackingCode_cell2 = document.createElement("td");
    let type_cell1 = document.createElement("td");
    let type_cell2 = document.createElement("td");
    let usedDiscount_cell1 = document.createElement("td");
    let usedDiscount_cell2 = document.createElement("td");
    let discountCode_cell1 = document.createElement("td");
    let discountCode_cell2 = document.createElement("td");
    let price_cell1 = document.createElement("td");
    let price_cell2 = document.createElement("td");
    let orderedFoods_cell1 = document.createElement("td");
    let orderedFoods_cell2 = document.createElement("td");
    let orderedLexinTables_cell1 = document.createElement("td");
    let orderedLexinTables_cell2 = document.createElement("td");
    let address_cell1 = document.createElement("td");
    let address_cell2 = document.createElement("td");
    let blockDetails_cell1 = document.createElement("td");
    let blockDetails_cell2 = document.createElement("td");
    let status_cell1 = document.createElement("td");
    let status_cell2 = document.createElement("td");
///////////////////////////////
    let ordererName_text1 = document.createTextNode(data.orderer);
    let ordererName_text2 = document.createTextNode("نام سفارش دهنده");
    let dateTime_text1 = document.createTextNode(data.date_and_time_start);
    let dateTime_text2 = document.createTextNode("تاریخ و زمان");
    let issueTrackingCode_text1 = document.createTextNode(data.qrCodeValue);
    let issueTrackingCode_text2 = document.createTextNode("کد سفارش");
    let type_text1 = document.createTextNode(data.delivery ? "حضوری" : "تحویل");
    let type_text2 = document.createTextNode("نوع سفارش");
    let discountCode_text1 = document.createTextNode(data.discount_id == -1 ? "ندارد" : data.discount_code);
    let discountCode_text2 = document.createTextNode("کد تخفیف");
    let price_text1 = document.createTextNode(data.totalPrice);
    let price_text2 = document.createTextNode("قیمت کل");
    let orderedFoods_text2 = document.createTextNode("غذاهای سفارش داده شده");
    let orderedLexinTables_text2 = document.createTextNode("جایگاه های رزرو شده");
    let url = "http://maps.google.com/maps?daddr=" + data.latitude + "," + data.longitude;
    let address_text1 = document.createTextNode("برای نمایش در نقشه کلیک کنید");
    let address_text2 = document.createTextNode("نشانی جرافیایی مقصد");
    let blockDetail_text1 = document.createTextNode(data.delivery ? ("پلاک : " + data.blockNo + "طبقه : " + data.floor + "واحد : " + data.unit) : "ساختمان رستوران");
    let blockDetail_text2 = document.createTextNode("مشخصات ساختمانی");
    let status_text1 = document.createTextNode(data.status == "In Queue" ? ("موعد سفارش فرا نرسیده است") : data.status == "Done" ? "انجام شد" : "توسط رستوران لغو شد");
    let status_text2 = document.createTextNode("وضعیت سفارش");

    let foodBillsText = "";
    let lexinTablesBillsText = "";
    let orderedFoods_text1;
    let orderedLexinTables_text1;
    let bills = data['specifiedBills'];

    foodBiils = []
    tableBills = []

    bills.forEach(function (billData, billIndex) {
        if (billData.foodName != "-1") {
            foodBiils.push(billData)
        } else {
            tableBills.push(billData)
        }
    });

    foodBiils.forEach(function (billData, billIndex) {
        foodBillsText += (((billIndex < foodBiils.length - 1) ? " " : " , ")) + billData.foodName + " ( " + billData.counter + " عدد )";
    });

    tableBills.forEach(function (billData, billIndex) {
        lexinTablesBillsText += (((billIndex < tableBills.length - 1) ? " , " : " ")) + "جایگاه " + billData.lexinTableLabel + " ( طبقه " + billData.lexinTableRoof + ") "
    });


    orderedFoods_text1 = document.createTextNode(foodBillsText);
    orderedLexinTables_text1 = document.createTextNode(lexinTablesBillsText);

    ordererName_cell1.append(ordererName_text1);
    ordererName_cell2.append(ordererName_text2);
    dateTime_cell1.append(dateTime_text1);
    dateTime_cell2.append(dateTime_text2);
    issueTrackingCode_cell1.append(issueTrackingCode_text1);
    issueTrackingCode_cell2.append(issueTrackingCode_text2);
    type_cell1.append(type_text1);
    type_cell2.append(type_text2);
    discountCode_cell1.append(discountCode_text1);
    discountCode_cell2.append(discountCode_text2);
    price_cell1.append(price_text1);
    price_cell2.append(price_text2);
    orderedFoods_cell1.append(orderedFoods_text1);
    orderedFoods_cell2.append(orderedFoods_text2);
    orderedLexinTables_cell1.append(orderedLexinTables_text1);
    orderedLexinTables_cell2.append(orderedLexinTables_text2);
    address_cell1.append(address_text1);
    address_cell2.append(address_text2);
    blockDetails_cell1.append(blockDetail_text1);
    blockDetails_cell2.append(blockDetail_text2);
    status_cell1.append(status_text1);
    status_cell2.append(status_text2);

    address_cell1.addEventListener("click", function () {
        window.open(url);
    });
    let ordererName_row = document.createElement("tr");
    let dateTime_row = document.createElement("tr");
    let issueTrackingCode_row = document.createElement("tr");
    let type_row = document.createElement("tr");
    let discountCode_row = document.createElement("tr");
    let price_row = document.createElement("tr");
    let orderedFoods_row = document.createElement("tr");
    let orderedLexinTables_row = document.createElement("tr");
    let status_row = document.createElement("tr");
    let blockDetail_row = document.createElement("tr");
    let addressLink_row = document.createElement("tr");

    ordererName_row.appendChild(ordererName_cell1);
    ordererName_row.appendChild(ordererName_cell2);
    dateTime_row.appendChild(dateTime_cell1);
    dateTime_row.appendChild(dateTime_cell2);
    issueTrackingCode_row.appendChild(issueTrackingCode_cell1);
    issueTrackingCode_row.appendChild(issueTrackingCode_cell2);
    type_row.appendChild(type_cell1);
    type_row.appendChild(type_cell2);
    discountCode_row.appendChild(discountCode_cell1);
    discountCode_row.appendChild(discountCode_cell2);
    price_row.appendChild(price_cell1);
    price_row.appendChild(price_cell2);
    orderedFoods_row.appendChild(orderedFoods_cell1);
    orderedFoods_row.appendChild(orderedFoods_cell2);
    orderedLexinTables_row.appendChild(orderedLexinTables_cell1);
    orderedLexinTables_row.appendChild(orderedLexinTables_cell2);
    addressLink_row.appendChild(address_cell1);
    addressLink_row.appendChild(address_cell2);
    blockDetail_row.appendChild(blockDetails_cell1);
    blockDetail_row.appendChild(blockDetails_cell2);
    status_row.appendChild(status_cell1);
    status_row.appendChild(status_cell2);


    tabBody.innerHTML = "";
    tabBody.appendChild(issueTrackingCode_row);
    tabBody.appendChild(ordererName_row);
    tabBody.appendChild(dateTime_row);
    tabBody.appendChild(type_row);
    tabBody.appendChild(price_row);
    tabBody.appendChild(status_row);
    tabBody.appendChild(discountCode_row);
    tabBody.appendChild(orderedFoods_row);
    tabBody.appendChild(orderedLexinTables_row);
    tabBody.appendChild(blockDetail_row);
    tabBody.appendChild(addressLink_row);


    modal.style.display = "block";

    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
}