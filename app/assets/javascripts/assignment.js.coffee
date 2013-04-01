class Assignment
  @document_ready: ->
    $('#assignment_duedate').datepicker({dateFormat: 'yy-mm-dd'})

$(document).ready(Assignment.document_ready)