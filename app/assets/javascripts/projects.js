function initializeProjects(){
  var firstProjName = $('.project_body').first().data('projectname');
  var firstProjId = $('.project_body').first().data('projectid');
  var firstProjTech = $('.project_body').first().data('projecttech');
  var totalProjects = $('.project_body').length;
  $('#project_name').append(firstProjName);
  $('#project_id').text(firstProjId + ' of ' + totalProjects);
  $('#project_tech').text(firstProjTech);
  $('.project_body').first().show();
  $('.project_body').first().attr('data-active', 'true');
  $('.project_body').first().find('.url-dropdown').slideDown();
}

function createEventListeners(){
  $('#prev-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $prev = $current.prev('.project_body');
    totalProjects = $('.project_body').length;
    if ($prev.length > 0) {
      $('#project_name').html($prev.data('projectname')+'<span class="right">'+$prev.data('projectid')+' of '+totalProjects+'</span>');
      $('#project_tech').text($prev.data('projecttech'));
      $current.hide().attr('data-active', 'false').find('.url-dropdown').hide();
      $prev.show().attr('data-active', 'true').find('.url-dropdown').slideDown();
    }
  });

  $('#next-project').on('click', function(){
    $current = $('.project_body[data-active="true"]');
    $next = $current.next('.project_body');
    totalProjects = $('.project_body').length;
    if ($next.length > 0) {
      $('#project_name').html($next.data('projectname')+'<span class="right">'+$next.data('projectid')+' of '+totalProjects+'</span>');
      $('#project_tech').text($next.data('projecttech'));
      $current.hide().attr('data-active', 'false').find('.url-dropdown').hide();
      $next.show().attr('data-active', 'true').find('.url-dropdown').slideDown();
    }
  });
}

$(document).ready(function(){
  initializeProjects();
  createEventListeners();

});