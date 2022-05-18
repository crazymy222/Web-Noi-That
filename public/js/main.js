$(document).ready(function() {
    $("#messageUn").hide(200);
    $("#username").keyup(function() {
        var user = $(this).val();
        $.post("./ajax/checkUserName", { userName: user },
            function(data) {
                $("#messageUn").html(data);

                $("#messageUn").show(200);



            }
        );
    });
});