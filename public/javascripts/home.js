$(function() {
  $( "#troop-type-sort" ).sortable({
    delay: 250,
    handle: ".handle",
    revert: true,
    update: function(event, ui){
      var formData = "";
      $(".troop-type").each(function(index, li){
        var id = $(li).data("id");
        var position = $("#position_" + id);

        $(position).val(index + 1);

        formData += "position[" + id + "]=" + (index + 1) + "&";
      });

      $.ajax({
        url: "/troop_types/update_positions",
        type: "POST",
        data: formData,
      });
    }
  });
  $( "#troop-type-sort" ).disableSelection();
});

$('.troop-button').live('click', function(){
  $(this).parents('div').find('.troop-content').toggle('blind');
  console.log("toggled");
});
