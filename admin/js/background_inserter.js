$(document).ready(function () {
    // Content widget with background image
    var imageUrl = $('img.content-bg-img').attr('src');
    $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
    $('img.content-bg-img').hide();
});