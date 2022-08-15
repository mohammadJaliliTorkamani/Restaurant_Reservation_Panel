function addDiscountCode() {
    var modal = document.getElementById("add-discount-modal-id");
    modal.style.display = "block";
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
}