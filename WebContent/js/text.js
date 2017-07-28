$(function () {
    
    $(".pull").click(function () {
        var flag = $(this).attr("flag");
        if (flag == '0') {
            $(".hide").slideDown("slow");
            $(this).attr("flag", "1");
        } else {
            $(".hide").slideUp("slow");
            $(this).attr("flag", "0");
        }
    });
});