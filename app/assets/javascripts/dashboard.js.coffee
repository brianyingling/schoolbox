class Dashboard
  @document_ready: ->
    # $('.date').tooltip();
    $('.date').mouseover ->
      $(this).next().show()
    $('.date').mouseleave ->
      $(this).next().hide()
    $('.has_assignments').click (e) ->
      $(this).next().children().dialog({
        width:500,
        height:200,

        })


$(document).ready(Dashboard.document_ready)