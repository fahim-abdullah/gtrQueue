$("#per-btn").change(function() {
    var value;
    if (this.checked) {
        value = "Perishable";
    } else {
        value = "Non-Perishable";
    }
    $("#per-status").val(value);
});