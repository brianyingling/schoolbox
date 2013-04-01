class Dashboard
  @document_ready: ->
    $('.date').click ->
      $(this).next().fadeIn(250)
      $(this).next().draggable()
    $('.date').dblclick ->
      $(this).next().fadeOut(250)

$(document).ready(Dashboard.document_ready)