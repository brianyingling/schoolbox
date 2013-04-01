class Dashboard
  @document_ready: ->
    $('.date').mouseover ->
      $(this).next().show()
    $('.date').mouseleave ->
      $(this).next().hide()

$(document).ready(Dashboard.document_ready)