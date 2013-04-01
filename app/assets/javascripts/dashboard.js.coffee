class Dashboard
  @document_ready: ->
    $('body').on('click', '.date', Dashboard.visible)
    $('body').on('dblclick', '.date', Dashboard.invisible)
    $('body').on('click', '.assignments .cancel_link', Dashboard.invisible)

  @visible: ->
    $(this).next().fadeIn(250)
    $(this).next().draggable()


  @invisible: ->
    $(this).parent().fadeOut(100)

$(document).ready(Dashboard.document_ready)