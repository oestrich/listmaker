$(function() {
  $( "#troop-type-sort" ).sortable({
    delay: 250,
    handle: ".handle",
    revert: true,
    update: function(event, ui){
      $(".troop-type").each(function(index, li){
        var id = $(li).data("id");
        var position = $(".troop-type-position[id=troop_type_positions_position_" + id + "]");

        $(position).val(index + 1);
      });
      $('#update-positions-troop-type').submit();
    }
  });
  $( "#troop-type-sort" ).disableSelection();

  $('.troop-button').live('click', function(){
    $(this).parents('div').find('.troop-content').toggle('blind');
  });

  $('.dialog').click(function(e){
    e.preventDefault();

    var dialog = $("#dialog-output");

    $(dialog).dialog();
    dialog.load($(this).attr("href"));
  });
});
