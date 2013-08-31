function initializeProjects(){
  var firstProjName = $('.project_body').first().data('projectname');
  $('#project_name').text(firstProjName);
  $('.project_body').first().show();
  $('.project_body').first().attr('data-active', 'true');
  $('.project_body').first().find('.url-dropdown').slideDown();
}

function createEventListeners(){
  $('#prev-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $prev = $current.prev('.project_body');
    if ($prev.length > 0) {
      $('#project_name').text($prev.data('projectname'));
      $current.hide().attr('data-active', 'false').find('.url-dropdown').hide();
      $prev.show().attr('data-active', 'true').find('.url-dropdown').slideDown();
    }
  });

  $('#next-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $next = $current.next('.project_body');
    if ($next.length > 0) {
      $('#project_name').text($next.data('projectname'));
      $current.hide().attr('data-active', 'false').find('.url-dropdown').hide();
      $next.show().attr('data-active', 'true').find('.url-dropdown').slideDown();
    }
  });
}

$(document).ready(function(){

  initializeProjects();
  createEventListeners();

});