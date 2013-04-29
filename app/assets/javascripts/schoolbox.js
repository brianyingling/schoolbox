$(function() {

  $('#login_btn_nav').click(show_login);
  $('body').on('click', '#login_form_cancel_btn', hide_login);
  $('body').on('click', '#post_form_cancel_btn', hide_post_form);
  $('body').on('change', '.post', makeEditable);
  $('body').on('click', 'tr', show_roster);
  $('#comments').on('click', '.new_comment_btn', show_comment_form);
  $('body').on('click', '.new_comment_cancel_btn',hide_comment_form);
  $('body').on('click','.notes ul li .cancel_link', delete_note);



  // makes an AJAX call to delete a note
  function delete_note() {
    console.log('deleting note...');
    li = $(this).parent();
    token = $(this).parent().find('#token').val();
    id = $(this).parent().find('#note_id').val();
    // make ajax call
    $.ajax({
      dataType: 'script',
      type: 'post',
      url: '/notes/' + id,
      data: {_method:'delete',authenticity_token:token,id:id }
    }).done();


  }

  // jeditable
  function show_comment_form() {
    //$(this).parent().parent().parent().remove();
    // $(this).parent().parent().parent().append("<%= j render :partial=>'form' %>");
    return false;
  }

  function hide_comment_form() {
    $('.new_comment_form').slideUp();
    $('.new_comment_btn').show();
    return false;
  }


  function show_roster() {
    $.ajax({
      dataType: 'json',
      url:''
    }).done({});
  }

  $('.edit_area').editable("/posts/116/update", {
      type      : 'textarea',
      method    : 'put',
      cancel    : 'Cancel',
      submit    : 'OK',
      tooltip   : 'Click to edit...'
  });

});

function makeEditable() {
  $('.edit').editable('http://localhost/teachers/42/edit', {
      indicator : 'Saving...',
      tooltip   : 'Click to edit...'
  });
}

function show_login() {
  $('#login_form.login_form').slideDown();
}

function hide_login() {
  $('#login_form.login_form').slideUp();
  return false;
}

function hide_post_form() {
  //  $('#new_post_btn').show();
  //  $('.post_form').fadeOut();
  // return false;
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