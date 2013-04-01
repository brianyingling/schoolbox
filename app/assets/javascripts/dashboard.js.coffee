class Dashboard
  @document_ready: ->
    $('.date').click ->
      $(this).next().fadeIn(250)
      $(this).next().draggable()
    $('.date').dblclick ->
      $(this).next().fadeOut(250)
    $('.assignments .cancel_link').click ->
      $(this).parent().fadeOut(100)

$(document).ready(Dashboard.document_ready)