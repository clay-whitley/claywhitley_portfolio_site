function initializeProjects(){
  
}

$(document).ready(function(){

  var firstProjName = $('.project_body').first().data('projectname');
  $('#project_name').text(firstProjName);
  $('.project_body').first().show();

});