$(document).on('turbolinks:load', function() {
	$(function() {
       initPage();
    });
    $(window).bind('turbolinks:load', function() {
      initPage();
    });

    $('#tcBtn').on('click',function(){
        if ($(this).text() == "Terminal Charge : UNPAID"){
            $(this).text("Terminal Charge : PAID");
            $(this).css("background-color", "#00ae16");
        }
        else {
            $(this).text("Terminal Charge : UNPAID");
            $(this).css("background-color", "red");
        }
        
        if ($('#tc').val() == ""){
            $('#tc').val("Paid");
        }
        else {
            $('#tc').val("");
        }
    });

    // PERISHABLE BUTTON
    $("#per-btn").change(function() {
    var value;
    if ($('#per-status').val() == "Non-Perishable") {
        value = "Perishable";
    } else {
        value = "Non-Perishable"
    }
    $("#per-status").val(value);
    });
});