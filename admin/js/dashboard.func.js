 // 
$(document).ready(function(){

    $('.modal-trigger').leanModal();

    // Permet de valider les commantaires
    $(".see_comment").click(function(){
        var id = $(this).attr("id");
        $.post('ajax/see_comment.php',{id:id},function(){
            $("#commentaire_"+id).hide();
        });
    });

    // Permet de supprimer les commantaires
    $(".delete_comment").click(function(){
        var id = $(this).attr("id");
        $.post('ajax/delete_comment.php',{id:id},function(){
                $("#commentaire_"+id).hide();
        });
    });

});