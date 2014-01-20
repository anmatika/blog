(function($){
    $(document).ready(function(){
        $('table').dataTable();
        $('.list-group a').hover(function(){
            $(this).find('i').toggleClass('fa-2x');
        });
    });
}(jQuery))