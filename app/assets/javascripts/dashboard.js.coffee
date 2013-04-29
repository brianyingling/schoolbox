class Dashboard
  @document_ready: ->
    $('body').on('click', '.date', Dashboard.visible)
    $('body').on('dblclick', '.date', Dashboard.invisible)
    $('body').on('click', '.assignments .cancel_link', Dashboard.invisible)
    $('body').on('click', '.comments_links', Dashboard.toggle_comments)
    $('body').on('click', '.comments_form', Dashboard.show_comments_form)
    $('body').on('click', '.new_post_link', Dashboard.toggle_form)
    $('body').on('click', '#post_form_cancel_btn', Dashboard.cancel_form)
    $('body').on('click', '.note', Dashboard.note_draggable)

  @visible: ->
    $(this).next().fadeIn(250)
    $(this).next().draggable()


  @invisible: ->
    $(this).parent().fadeOut(100)

  @toggle_comments: ->
    if $(this).parent().next().css('display') == 'none'
      $(this).html('Hide Comments')
    else
      $(this).html('View Comments')
    $(this).parent().next().fadeToggle(100)

  @hide_comments: ->
    $(this).html('Show Comments')
    $(this).parent().next().fadeOut(100)

  @cancel_form: (e) ->
    e.preventDefault
    $('#post_form').hide()
    return false

  @toggle_form:(e) ->
    e.preventDefault()
    form = $('#post_form')
    console.log('new post link...');
    debugger
    $(this).parent().parent().append(form)
    if form.css('display') == 'none'
      form.show()
    else
      form.hide()
    # $('#post_form').toggle()

  @note_draggable: ->
    console.log('note draggable')
    $(this).draggable()

$(document).ready(Dashboard.document_ready)