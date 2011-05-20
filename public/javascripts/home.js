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

  $('.dialog').click(function(e){
    e.preventDefault();

    var dialog = $("#dialog-output");

    $(dialog).dialog();
    dialog.load($(this).attr("href"));
  });

  if($('#notice').text() != ""){
    $('#notice').delay(5000).fadeOut(3000);
  }

  var toggle_ajax = function(el){
    $.ajax({url: "/troops/" + $(el).data("id") + "/toggle"});
  }

  $('.troop-button').live('click', function(){
    $(this).parents('div').find('.troop-content').each(function(index, el){
      toggle_ajax(el);
      $(el).toggle('blind');
    });
  });

  $(".collapse-troops").click(function(){
    $(".troop-content").each(function(index, el){
      if($(el).css("display") == "block"){
        toggle_ajax(el);
        $(el).hide("blind");
      }
    });
  });

  $(".expand-troops").click(function(){
    $(".troop-content").each(function(index, el){
      if($(el).css("display") == "none"){
        toggle_ajax(el);
        $(el).show("blind");
      }
    });
  });
});
