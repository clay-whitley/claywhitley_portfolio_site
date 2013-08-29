function initializeProjects(){
  var firstProjName = $('.project_body').first().data('projectname');
  $('#project_name').text(firstProjName);
  $('.project_body').first().show();
  $('.project_body').first().attr('data-active', 'true');
}

function createEventListeners(){
  $('#prev-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $prev = $('.project_body[data-active="true"]').prev('.project_body');
    if ($prev.length > 0) {
      $('#project_name').text($prev.data('projectname'));
      $current.hide().attr('data-active', 'false');
      $prev.show().attr('data-active', 'true');
    }
  });

  $('#next-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $next = $('.project_body[data-active="true"]').next('.project_body');
    if ($next.length > 0) {
      $('#project_name').text($next.data('projectname'));
      $current.hide().attr('data-active', 'false');
      $next.show().attr('data-active', 'true');
    }
  });
}

$(document).ready(function(){

  initializeProjects();
  createEventListeners();

});