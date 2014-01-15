(function($){
  $('.imageThumb').colorbox();
    $('.addToBasket').click(function(e){
        e.preventDefault();
        var url = $(this).attr('href');
        $.ajax({
            type: 'POST',
            url: url,
            dataType: 'json'
        }).done(function(){
            alert('done');
        });
    })
}(jQuery));




