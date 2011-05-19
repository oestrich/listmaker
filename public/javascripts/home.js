$(function() {
  $( "#troop-type-sort" ).sortable({
    delay: 250,
    handle: ".handle",
    revert: true
  });
  $( "#troop-type-sort" ).disableSelection();
});

$('.troop-button').live('click', function(){
  $(this).parents('div').find('.troop-content').toggle('blind');
  console.log("toggled");
});
