$(document).ready(function() {

  $(".js-update-number").on("ajax:success", function(e, response) { 
    $(`.js-count-${response.picture_id}`).html(response.upvotes);
  });

})


