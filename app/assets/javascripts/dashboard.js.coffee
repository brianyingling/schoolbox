class Dashboard
  @document_ready: ->
    $('body').on('click', '.date', Dashboard.visible)
    $('body').on('dblclick', '.date', Dashboard.invisible)
    $('body').on('click', '.assignments .cancel_link', Dashboard.invisible)
    $('body').on('click', '.comments_links', Dashboard.toggle_comments)

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

$(document).ready(Dashboard.document_ready)