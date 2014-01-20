(function($){
    $(document).ready(function(){

        //$(table).dataTable();
        $('.list-group a').hover(function(){
           //alert('fsdfa');
            $(this).find('i').toggleClass('fa-2x');
        });
    });
}(jQuery))