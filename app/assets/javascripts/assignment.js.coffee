class Assignment
  @document_ready: ->
    $('#assignment_duedate').datepicker({dateFormat: 'yy -mm-dd'})
    $('body').on('click', '.grade_td', Assignment.add_input_text_field)

  @add_input_text_field: ->
    # alert "Get here"
    # debugger
    return null if $(this).children('input').length > 0
    if $(this).html == ''
      $(this).prepend("<input type='text' value='' class='test'/>")
    else
      value = $(this).html()
      $(this).empty().prepend("<input type='text' value='"+value+"' />")

$(document).ready(Assignment.document_ready)