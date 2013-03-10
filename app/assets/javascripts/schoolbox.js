$(function() {

  $('#login_btn_nav').click(show_login);
  $('body').on('mouseleave','#login_form', hide_login);
  $('body').on('click', '#login_form_cancel_btn', hide_login);
  $('body').on('click', '#post_form_cancel_btn', hide_post_form);

  // jeditable
  $('.edit').editable('http://www.example.com/save.php', {
      indicator : 'Saving...',
      tooltip   : 'Click to edit...'
  });


  $('.edit_area').editable("http://www.example.com/save.php", {
      type      : 'textarea',
      cancel    : 'Cancel',
      submit    : 'OK',
      tooltip   : 'Click to edit...'
  });

});

function show_login() {
  $('#login_form.login_form').slideDown();
}

function hide_login() {
  $('#login_form.login_form').slideUp();
  return false;
}

function hide_post_form() {
   $('#new_post_btn').show();
   $('.post_form').fadeOut();
  return false;
}


function get_posts() {
  $.ajax({
    dataType: 'json',
    url: '/posts',
    type: 'get'
  }).done(process_posts);
}

function process_posts(posts) {
  alert('got here - process posts');
}