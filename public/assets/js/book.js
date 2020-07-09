// Page Loads using show/hide
window.onload = function () {
    $("#home-page").show();
    $("#top-9").hide();
    $("#social-justice").hide();
    $("#fantasy").hide();
    $("#new-nyt").hide();
    $("#classic").hide();
    $("#children").hide();
}

$("#link-top-9").on("click", function (){
    $("#home-page").hide();
    $("#top-9").show();
    $("#social-justice").hide();
    $("#fantasy").hide();
    $("#new-nyt").hide();
    $("#classic").hide();
    $("#children").hide();
});

$("#link-social-justice").on("click", function (){
    $("#home-page").hide();
    $("#top-9").hide();
    $("#social-justice").show();
    $("#fantasy").hide();
    $("#new-nyt").hide();
    $("#classic").hide();
    $("#children").hide();
});

$("#link-fantasy").on("click", function (){
    $("#home-page").hide();
    $("#top-9").hide();
    $("#social-justice").hide();
    $("#fantasy").show();
    $("#new-nyt").hide();
    $("#classic").hide();
    $("#children").hide();
});

$("#link-new-nyt").on("click", function (){
    $("#home-page").hide();
    $("#top-9").hide();
    $("#social-justice").hide();
    $("#fantasy").hide();
    $("#new-nyt").show();
    $("#classic").hide();
    $("#children").hide();
});

$("#link-classic").on("click", function (){
    $("#home-page").hide();
    $("#top-9").hide();
    $("#social-justice").hide();
    $("#fantasy").hide();
    $("#new-nyt").hide();
    $("#classic").show();
    $("#children").hide();
});

$("#link-children").on("click", function (){
    $("#home-page").hide();
    $("#top-9").hide();
    $("#social-justice").hide();
    $("#fantasy").hide();
    $("#new-nyt").hide();
    $("#classic").hide();
    $("#children").show();
});